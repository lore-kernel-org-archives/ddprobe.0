Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300312D8391
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780853074; cv=none; b=kW/uRRzrkbUiljSwa1ayJfR5q1xZXD7v76DeSmON3F7qD3TC+YVslaBNE94e6Otj43wK9nSEePU6FZ+1izU4TLQs76juW2LvCHiar9ElrB1DegoREantoX3eDPqEuuX1OyF4YBtUvpRhMA8iJL1Q4h05FSc6hGHrVdvviEJJeMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780853074; c=relaxed/simple;
	bh=COIbHxF+DU5/6U5KTwO9Wc/0uNn94NGesf2UrN/OjUw=;
	h=To:Subject:From:Message-Id:Date; b=V5i53gJkNEOiQvHfDFXGcp2x476BN1WVKOm4nVdwxpFHID1eAF5eVOU4PH9m9vtq9Dd4VtnEpDkpRj6Iovs3BoKIHunaYMR35tbuTu50/OrOF1rh6IZzxXX9S9dHpytDPSgZZQLu56iym81s33HDBAjy+Vae7uu6GOsp6e/QSeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8WKR4dD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8WKR4dD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7277C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780853073;
	bh=COIbHxF+DU5/6U5KTwO9Wc/0uNn94NGesf2UrN/OjUw=;
	h=To:Subject:From:Date:From;
	b=D8WKR4dDE5w9rwUeZMq8hMuIYcOz4q5O6LxUIlFFI7RxGfOdjwGEZTGQYmSo8uaZI
	 weyTQcqV9UzcEyUu55bic58QE/H0ZsdHoPXvHGqaN5TzJQyRkTmSwzpueHse7mBq3A
	 V7i2lEpzQDqZl8oamJxCtYrKIBWlV/ufvKkBfbeH/YLFMVjl/7DyeMiLmUgzotkhQf
	 J7sP3uzOyn/O9da07/ZT93nxTbtTO/aQM+TsVg3VaeN8yGXMQUDtDrDZedH+Ai+K9a
	 JtU2J20XJYbjp6ecyUC73w+9BqS8UTJEwTjzU5FF4iKvjSXs1kvGcs25yKWTjeOaj1
	 2n4oZBWeQV9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF74CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085307368.535.2963494657677177090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49952d319a88e8cee3568481d80baf64fa522a2b321f6900a23b5df89c39d01
Date: Sun, 07 Jun 2026 17:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780853073
