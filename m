Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0462D531
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761476393; cv=none; b=UN+IEImD842Ogg1VXnJpSpd5cnEx79kFE5VI1hcWalMOXtHDrLGZZCsoW2DiYafV3gl37jypfju1nbqGrGKFWjr4OnvgS1KONnBBi44dcFgNt1t5UVWQ4xETc236mZlaLLRpyXVB6Q+qMTcPP2hOqnp2WB3KRZJyiadAmcv+u+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761476393; c=relaxed/simple;
	bh=X36/Z3GW0f+0wC1Vq9ztIvdEe+D185uOAU2dMCVnt9U=;
	h=To:Subject:From:Message-Id:Date; b=F+oV5Ut2WDp9mKOnuRLC/aeLC6aioWZBZuahUNhDwMNS6t3D7XfIIGie46rXOQ13RZFBrDlF4paVUIeleMiJ+CjB3r7PCyf/w8Mh9dbugGN0i4IDaWzayW6nje3JIG6Gisa2qQ99EkwdfkIwPcv8zNFs1rnDUUb32/DencMtg0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqcZRzF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqcZRzF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FAAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761476393;
	bh=X36/Z3GW0f+0wC1Vq9ztIvdEe+D185uOAU2dMCVnt9U=;
	h=To:Subject:From:Date:From;
	b=NqcZRzF6hlMAC10Ou7pEm717zGLEvez0dZXxaUIeLs6sxY3CgEdlPJEVpU/KBzG5u
	 p1nOvtoR6+H8DSTtqvZCGli2V8GstoEy/Krkkg7g0dvU0vu/1AN1gE4RqT7nitZ8Wv
	 IyryUxwOxlbb1wc2+p9sFA5N8z+zTMkhH+8pOtrxUCzFmwHurk8p7+q4jDpYQUyoD3
	 lgVAVeYndaLntAjkP0cpqYgtpdeDCiz4QuyQPqUiJNVsBeJnNXwYLlQUmB9EBHcNA8
	 foXJtlgc0WgHQgpLCQh/O5q5W3TdUSXzgF0tWS2Fg7XuAlRaY/Bcna1O0MS3GxHj2q
	 gTPVNmucpvTiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C3CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147639357.19568.12869458578095182412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9143246b9116c4775d4dbe6603e92ffbb7f403f5a1f5a9fa6bbcbdd8f21409a0
Date: Sun, 26 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761476393
