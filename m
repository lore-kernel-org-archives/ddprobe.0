Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212ED26E17D
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751129994; cv=none; b=aGU5Tg3p59SY259irMOHHpso1eX1/MBv7vjaeXXljf0MnXZLuI7ilI1/kS4KQ5B6Ip5GF//yKwWMXgKjkKYtkf9crh8R5YnXp1q9Dsjq5Zuws3DmXG5QrACD47tpgryQaiTMxBg9Z3IM984VltxetfFtmO1bVA31hE/5FJasVSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751129994; c=relaxed/simple;
	bh=3upBWgwkuyZGdJd6oiRFnERkljufZ5e4+2Eh4YXH+qY=;
	h=To:Subject:From:Message-Id:Date; b=M/OZi/r2y3WTY4zktaQjmTKqNBbODuScLLTi8dd55Qo8bZIG72D0Dq7RyY6QAUkz5+z4LKj7M41zC+XPBNNgPD+rLhhvydI81m5boAyao4Jc2oQqWMNaKCwcvQDOFUhcKnfFaM3TztFKupy3FGAbrNxWdAr8QRjD65q+pG3H5lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+0HtKKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+0HtKKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AB5C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751129993;
	bh=3upBWgwkuyZGdJd6oiRFnERkljufZ5e4+2Eh4YXH+qY=;
	h=To:Subject:From:Date:From;
	b=e+0HtKKFsrqwaLgSs3uqA1wAdkOcI06cOCtWGlmQxL70/TZ6qErBMESETcV9wGIHl
	 CLXVpKLI21epUZHODhYhdOXxTwHlJ2HdSK5kSG56YrRGc3G5qGrYxE/Vnt8nbzoqXh
	 c5bwaSAlzm1/6tb8deVUjst2LBDsWaEJBC7YUaYAUvG1RBG/xwFan5avIJh90pjLgd
	 lkOj/da8AS6iNatCck4U9Un6/JvgMthDvtPSgK26/dKiHSYjaYd0ux4Ebog8XfyMJY
	 NXu21Z7X7w2sAuks2E9mD2i2DD2aaRR+NfTy2qHIeDQ5SxB8kLSyhRbXbYJ0uXBAhn
	 q0ZYEWvuX6IyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A564BC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112999364.18006.5221917295337321111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1632b480a958b42cc6c3a92744d1d87bbb8e4f88f575fba112f582fed132bb96
Date: Sat, 28 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751129993
