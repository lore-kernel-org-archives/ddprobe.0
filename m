Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6175763B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717562183; cv=none; b=FBMOtrAOBTGIoCSgKF9lEnpfHV4Xc68ODMzTDSHVc8UWmXcorBAu+27SQDM8YpUxqzze9hMljBXNYSH2EdNPnU3HHEDAIt6Q6cFD4B6FIL0N1HTwp4g+Za/9D9xlBKeoLAwBvLjRx3lFW2UuLCPP4PJ2Z83VJi7x7Z3aqHtQPBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717562183; c=relaxed/simple;
	bh=+8SR0qLx0d8pCSj6Lrm5o3Tfp/ChDy3WojBWZPHv7Og=;
	h=To:Subject:From:Message-Id:Date; b=KEdX2NPBzMOjCmeVSPdTGGbNNduoRe0KwmJ44HycM4TMm2xSoQ6A0+KKcEKyHEwuymtkF0BM8LmzpjjRF+mQqeZKz0JtRaeMcAiuCV55bJ8u3QBjdj8Y3CNbLM/21dt/oONDQkNOrp6OhJHj+clQ3vwxDOSyCbCcJ1XfXmCHLhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrFs2B6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrFs2B6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB876C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717562182;
	bh=+8SR0qLx0d8pCSj6Lrm5o3Tfp/ChDy3WojBWZPHv7Og=;
	h=To:Subject:From:Date:From;
	b=CrFs2B6pPfD0BG2SlrnuurhMOwgyo6CBSyrqbDLc4ClgCGt0gfwuAg8o+SUPoIcq9
	 OTPGs0tWi4SeEFbhdgfekvgmh5OuSKJKm23QLq5LhgyPADZl0lTZZv3h7f9MSR192p
	 l/9Wu1lalBzDzfMfTRokQC46NQUfMl78cIA3t7pAOTYI9yQv95Xy5pouvvoCISWzr0
	 Tiy452xMewGI+LmKbmNTV/BBFZ6yBFwM2T1KekYuuMkugp81aMBqFR0hnCaUylNLpr
	 7jYwothvFJVN9jjq5qSgwC5QqwjpzqfObaFOnSUYDQRxRtDUjhOqScGS2sMMvhr8x6
	 b5SUoZKrCJcyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2041C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756218276.19085.13221998903961957131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05eae6d0f401be056164ab46fedce3ab060a4d38655e4d6fd1eeff0f8a2aeb3
Date: Wed, 05 Jun 2024 04:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717562182
