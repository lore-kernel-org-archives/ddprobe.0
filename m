Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7980B423A9A
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768992834; cv=none; b=nLgotmcPDd/rQOGylX1M2WXuXVRyJAR3hFVoAjq+h3YzfjiClpbv5EbKQThuDGv9k5vKurwUYKU4ytIrSaC4WcyA1mopepze/9Bi1Xb6qrNqyvuQPc9O3UVZ6C/LsOONnaskstjjKGtDbAeG7cInBGjCKTfF0B2ff4gpMZYg5O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768992834; c=relaxed/simple;
	bh=5p5SCA7tsGXWXUW47GNmTTwAmgTaOZZmvt2yXG0jHuc=;
	h=To:Subject:From:Message-Id:Date; b=jGmG+w7VVWbp9SMWL0pSWzm9W2LRQ7CLnlp04Kp1GqyZ3zGkDr4yYNvconF0KRIYKr6Kt0e63SeiAx8KL/MZyXX/Tc8t9bannEXncHDaOCe8ucgPhBvrPcmJCOnO3+ZWFAeSDaBuDk1FVHwn2/9T1dgRscJtTA4TXfGJvolLS54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBPq/vAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBPq/vAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4896C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768992833;
	bh=5p5SCA7tsGXWXUW47GNmTTwAmgTaOZZmvt2yXG0jHuc=;
	h=To:Subject:From:Date:From;
	b=gBPq/vAKyzdm1VwvSHFw0rpE2V61R+d4lJ/j/ZpEGq4GncBR03hL/OrihUbk0rGPC
	 kFfT5mnJWktqlG/0AaYAf30CUyJKQ12LE5x9xtyEnjKHX1Opp4YgAUbmvjR2QnLCH0
	 w82fRK/13Dz3TW8LngVtXwBE2pckyOEle6LUajFH0orfsUnDGbR/7luk4Z5+CvRMA9
	 Veqh5YcIH8gtgyXXMk8UbXt616hJ1PUKWhPSAovU2jwtuv4rCwiFx3p7CFGaXUSuBm
	 pRmw5TKY0xaDuvd8Bkc0tIkJ8l+A61OjpCTKyIQbIdi0jQGQK4q7wp9QRc4fYxqiqg
	 fWHFm47shNddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111CC44501
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899283358.5707.1109008060287130992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeae4eccf02c5e13e8f16a01646d25f853b857a7f0cae40d2c868984aa600f8c
Date: Wed, 21 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768992833
