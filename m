Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B442C9D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765722774; cv=none; b=TTNw06LwuOdkCz5jVles4vOih7CS4vCiQwBAXjKMGj5oPdKTprBQZb7OxC2CZYv2UKZJulhugPWpVTFj2kI/0QR7ABHLlDYHQqvEISMFON9rbGIBQvjyxferyiudHdBepShgDq+bjMtQaX86OGhCJgELGeLyQCW2oDxuLSf6kDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765722774; c=relaxed/simple;
	bh=4qML5MIGSFS45TBuLUYaLjWMilXJE1sn2lAot8iynl8=;
	h=To:Subject:From:Message-Id:Date; b=NahmbSFJNJ7Vmapmi6qAR8rUNFP3cSHLnyHZ3UceFTsNeFW1s4+0hBoyuG9iVw/iBZ46XQ/V5uS0gcgAxg1YEE4T24KFCtqk5eZZhCVxSmg9dvtdU0ob3seFldfha5nbZd5IwAnM+/p+TguxciquVvxtKpXjxh7KGx5H+46Qeec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxFB2ClZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxFB2ClZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A951BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765722773;
	bh=4qML5MIGSFS45TBuLUYaLjWMilXJE1sn2lAot8iynl8=;
	h=To:Subject:From:Date:From;
	b=gxFB2ClZYTBWNAHOgT7uQHOKtF/k6/qVijxwr65Wb4C8/NcnqdUNx/WSf+Q5X2Bga
	 wrfHRtnagqZ17jKK0JumN97E+4JfVA5Y5gJasy0bH7zNpezjO6bLDK8RiAT7Yx8+2t
	 B7ZWQqJ4bwxfQMTXcXwi8/GQjzTwQ36p0Sc3bO1YdMJCD6IJCN2pRBpIkKqMdhyrJt
	 /E9UIOhw3Pm6VR1ZjOl5svR06hNzG/9IrmIgPovcr2jJ2s7q/B7FTW492VAdDUzcl3
	 h4ZvXHLIN/jHRuhIHAy2orS6NwJWvG9FI6OU1bwFTzWKWQM/JmC2hogCfWwVU8B5NZ
	 7N8nezsMVr6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C6D5B169
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572277358.26842.13264123947680985993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b740211f796cef719b67346e8beef864144415d2978d8ae3d256c3c621c031b
Date: Sun, 14 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765722773
