Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63243DF72
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789291234; cv=none; b=E1sN+r3LJv2FYZJEYPswhb5JPRM9BcRO69fdc9F/q2PGqYChZhazG9oSjlT92A/NsMIWGmnX9K3ryMNoU/bMvovfGsSjftzML8sqKYMC/j7tTkRI/eGALNGnPhHKcLOahE7LEvytmfceAW+ofVjUiT3J/2cyXeJJFxNDUOjAJRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789291234; c=relaxed/simple;
	bh=EoYmHl2f1n9+lGVr4epF24j9H/7vuO9Ohi+od1f3txw=;
	h=To:Subject:From:Message-Id:Date; b=SwykVRZ8mfvWLEHTgilLzvwCcC/6OTJZ29MDy0ZNn+3tgsvvQSoUxnNhbeC49Jz02OuHZjXrXl2uflfv05dpCCm+OeJ9r8vMBc+whfD1NVeypmK94J5u7ZbtVjC3oiL5HGbXv24FX8z4uCTfkSQIX+HkIifzWp5hgB/72FD3QN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jN1UmyVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jN1UmyVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3774C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789291233;
	bh=EoYmHl2f1n9+lGVr4epF24j9H/7vuO9Ohi+od1f3txw=;
	h=To:Subject:From:Date:From;
	b=jN1UmyVJ1L/eMZJ2TA+NxjIBptEmiseGBY6SlJhFgMrGynHh1j+XBFuzcjFGY+r0r
	 wsJeT/Wix8UGKA2yloUa/6WUCUBF4YWmO5b3r5njopEZG3aPHOQ7D8T0+ZAu0NifbR
	 hbcuZxMbGYatAtDtuc0GwNHGUgf2V4VeLoZ6UJnDHGG85ZlI7n9A75iftYX+dKQSGt
	 VFBqyT4CX2rHquU3FLC6474sLLLDYtX20tOCmOfuFx7nU8GjZ9QTOmCZ1EKHYcfuLr
	 1nXQmdg5keEODSlCapnXR8QEGHiRFQ726fdYBph4bRe9WM/9lwqfavDV2DyRRppndj
	 KbiuKkbm0fFsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA3C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929123368.26884.2362074984479890522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca257c55a683ef461ff6626e43f4f89b20ca6b926ce47344e3f2a323f1e5692d
Date: Sun, 13 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789291233
