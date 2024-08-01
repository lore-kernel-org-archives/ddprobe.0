Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC274087C
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722544554; cv=none; b=PlgnwtZlrM5hXVEIBcT1dFb+x57nXb6lVUF1TWjeVHde8Tzt0w8HBcR2/VFtvELffH8QzVTDnn85I42hv09gHRFaAxUFI+O/F6YUryPwqJcMnqtmASwjpcKXjBLyPC8a6vU9rjeJz/kV93fBh5iJlZFzBHG7XV8edpdHWu2iM/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722544554; c=relaxed/simple;
	bh=zIHAFiWxDYiE+l3L2qw60xjsQ/0omYlWuBAwoEEhVyU=;
	h=To:Subject:From:Message-Id:Date; b=Gt993vt3AWqzRk5EULggKi+R65gTCX7GcXOst3QEVKcBxONX4yXy6Oyq6z2NVfSpxqazq1BFJ0NetlThfPqArSn6szI7Oc456+/9NqeEN2PlWRhlbQIWmNnndytYB6Meko6B6YLtg1KMGz+6tpokQ/505XirwihoE9pmbKkq5c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvXZ4lIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvXZ4lIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DEFC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722544553;
	bh=zIHAFiWxDYiE+l3L2qw60xjsQ/0omYlWuBAwoEEhVyU=;
	h=To:Subject:From:Date:From;
	b=QvXZ4lIGixrC7o9GfirPDfILa6MS3dtDNjXvb8gcoxoQjD3lQpK3gR2GUb8C5e7Hr
	 gi9OAuFpSo3NLIdJIXUsg6SrVZHLA0zMB+9PSin26iWFbnWID1CnTfFT2+eeoSGN/F
	 XtpvvqhkyamXIgL4GQouEA9TIsswJy00iWu832jQZMMFBsePeXY40vW1fw0RiGUbLI
	 +b/D9i6z3PsA/1jSxKOufqATFR4maYyO8xqvbrJKzN1TrWdNtoKh3R6tWZ8McVCB8W
	 kUIPTmPFUC5LMYg4Y3anoqKDE7yTL2GfK86n5v+Ouuphael5fLSOs5DSMvIYGMCU24
	 SO6qmMWx2mMxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0AEC3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172254455362.20675.6757173002328690079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ca1a0a61b64902a2f35aa403e02b151bc698ff09e8b7b6d8ab2957f8a0186b
Date: Thu, 01 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722544553
