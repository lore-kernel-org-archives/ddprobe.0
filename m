Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D9A13D619
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732896353; cv=none; b=OFjvTseiO+VRSBpV9+494ew8+9WFBJM8HTUMzhxwFF8CwtJ5jbx1y43is6vsmn1oxuUWFG73HOY0y472j74XylT7irwIJISS16CLcQBI7I1Biuye0Kbnc63Ws17+I//fLOsWXFgl7P7nxD4VpT4ssrYbRmLHEinzK1Zs+I2dBog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732896353; c=relaxed/simple;
	bh=FTnvgMMHC2LY6V5O4UcZdBl42snh/qijgeTHSItHtYk=;
	h=To:Subject:From:Message-Id:Date; b=UAGlIkwSbCGJbTxogcuxT7AU1bVmd4Cak9SGmmJfJ2k3+N/gfFXb8HRPCPPXYSI9tzyaKwdNWE215WCtaD4NetWvnkcLwu8mFQ/bOpnakt/lty2uLm/KMUlx5H1kVX4BEMPKtbKiQiMd55jl5hiGPHSb1LzpnJVZnaX472vjqwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfVcItJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfVcItJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4D5C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732896353;
	bh=FTnvgMMHC2LY6V5O4UcZdBl42snh/qijgeTHSItHtYk=;
	h=To:Subject:From:Date:From;
	b=tfVcItJ/oIgcD3kxBg8ZtCC9qa83HHixaXxlfSzu8IRLkPza3KZyDNWCBMsJ00jm8
	 PlrGnvgPhN7P4GgXqMHqOA3leWhFeYqP8GIQgQObRZaiGdPeS9rVC2yCsf3rDI83Wo
	 ho9CaVWExxW7NkwfzwA1OS66cpYBK5EmXS4DyY1clrrHxabNZCYSYpFv4BvI2JD0xk
	 RwqSN4aRoQFxOXfps1c4uB/eJIVv8tlGoeUpu35G8VYGDsaxMgP8kf0WtlqWEuoKgc
	 jkbxg8yyxVU0C2uE9+f64agkAcl4A7pe1FohMBdn6Yozm6WZi2If/P66qIzXAPoIGJ
	 R0tGC3dmzC6Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE62D729E7
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289635363.8401.11368571067137101105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da18618c303657481ee12e3829da31ca221463b187fcb3dbe2dfc7114fe7f691
Date: Fri, 29 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732896353
