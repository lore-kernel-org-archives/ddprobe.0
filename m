Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C5721A0B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721697354; cv=none; b=Th3SksVRwIBJBCN3fp8rWfkqhrLPDJvMtSyB+nb4eNgkiXVqpl9lwo3KgPV/VzkV5wGJWD7TFBaDNHoxyLRAbhlLw2qUgDG8oBINapHMLp0HBVVdo1p0+4IXeCc5xX8Sa9CXPo7JJwatISIYxE6GJR9hsfBl8QE/aUzqb6ljSXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721697354; c=relaxed/simple;
	bh=zM9lSVd85G7a4qtIAdFJFNredbGchb4SKpnDzDLPZFE=;
	h=To:Subject:From:Message-Id:Date; b=fQ6NbzAUgVxXfs7idY1B4z95pj4DdSx/W1x6sjJcliCDfGq6ulxQOlLkns09e5dvSSh/e79YLXe3zq1b6AhqeaREf5uIeAfpYMiYJtd+ABiRxHg74AN3DYfEAKJWYd3RxKots5bOKCR699Z+45V4fbVSVsgtla70IC/T9dYIhsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjHosJCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjHosJCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA686C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721697353;
	bh=zM9lSVd85G7a4qtIAdFJFNredbGchb4SKpnDzDLPZFE=;
	h=To:Subject:From:Date:From;
	b=hjHosJCrl88d3XwUv2I5/sSv4RzcoQaF1dG+kwQYRo8kMLzb4SwblWniVz6jAluCA
	 heT5+p65UsHAHiaeb5O6QKfC+uYfR6qH2ew1Wzbimu6JQaamfm/U9sNJovblLxa8Jh
	 IAhtEeFSL0cBej433qKCu4R6c3bIMM7ZGNJxW19sUSqBLvi5bpp6JtaYcshUHy0/Qd
	 SfwtYMlcVxPCAJUiOWr1u9vfBxE8G4rNvBbqQ9WIyrd8F6a6eOKjPTEWOpV4bqffl2
	 VZC/NYyvH4DSOxA0gkg4W/3aW38mjSQEgQTX+vcerhh0lSPhCKNYRidHFgL3zMDP0A
	 y28txVdQYYjXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D57C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169735359.16609.563181210482765148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d8b1adabf02f7395eec42995e7647fc6bc8b55a74f6028d287f06e6c7ee7f2
Date: Tue, 23 Jul 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721697353
