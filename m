Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691F61EBFE3
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746641394; cv=none; b=l2AIKgmYJl4sVcoS7YeTIbYTh6SXKT/DKE7LScbGaPXJq7erarNo7DVESKZ+tczY3U97mE3oynX0EATxd5JQFpQ/kExoUJ6gj/CaVvMF8q9+wCQFsYXhhAMmVgyEry+cu8V7+oRfbEdJOYtSPHF89kaxUw6OM4E0esigSxQTzWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746641394; c=relaxed/simple;
	bh=+pczpDwtslqSLuBDEYCWygy7BQzyftKrVtjc91L4eDo=;
	h=To:Subject:From:Message-Id:Date; b=q8ttfclWw7Z3AHXDPOGHylyk0mdjJPCbnr7U8Gxplcplya6XNEH2v28EFzDSNAYrQV9W/0uTdD+bj363edpfDxvbVzuYk1erJTyERbqUeqsYLTeNSrgxR3oegk36b/C5+WkTe9T93sertZ0DM3I/KwGnok/+Pyx0+gVQPSro4dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKI1AqdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKI1AqdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF23C4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746641393;
	bh=+pczpDwtslqSLuBDEYCWygy7BQzyftKrVtjc91L4eDo=;
	h=To:Subject:From:Date:From;
	b=eKI1AqdBhfc8rmTkgNOBblgkAKbIY3RptoQ2Y2JTSRK1U5vywQolbANMkIX393Msw
	 75Pga+Kw3gC6aBBXF1ArM2hlgr3z3HFzbWqURvtjv+Q+IUpeiAkcGCECj2i0kP1dT/
	 Tj0DB41MfKV34SNFtFU3D6mB2e6GV50mZ8oG99kpG3PtmdEzlMIM7flIG0y7IokhVX
	 0OVWBbIMr8HzZTBqNvsIIZiQ9P+l62+Fb5pl3STG3ipnHvZGWy8k06sHcYz4JvVk/t
	 Ea8wzJEHSeme6G9dI1xRceIsbZRkcnCK5fVb7RE8UsWlINwOpBb/Q6kIotvxProlqa
	 RF4oJz8bv9ZzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0ABC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664139357.21426.8939173226816538974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd53b29db447fd635656781c87c38ffcf3a18f09d49689095ba3120872c7ed5
Date: Wed, 07 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746641393
