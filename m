Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DDE126F3A
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707932897; cv=none; b=scONOagTDf6EiMYG1/+yJFcmsLLKsEcLvByjn+smruKCbQ1OCXdzQXhKsCmtdWOuvkvWg++DizkLa5TGg9+zGwkuXx5MNK5a4Co9EBCTI+MlvVaZTFRxdulvtWqnT0myLTJHCR7QjBkIr6ms7x3g23PZmUtcvRvexsM7HSEeP1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707932897; c=relaxed/simple;
	bh=/etZ2baOF7E/sVpa3o1AdsVcl77G/g6Z143OQBfqzOE=;
	h=To:Subject:From:Message-Id:Date; b=AT8i0rXgQNj7HyBJMJWSG1LXSDXPVAnpw/Yorcag3jHNO3Htt5V6Lo23Vd/R+fZBJaKU4LUt+ttbbxUf4rXx0XDyq0Lj1DT2owKH2NjotAnU7qR8xJk25pj8F1sXuANNdozRtN1sv3u3VSxGa8EPn9UdpdYB362QIvu5WVxyZ6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIpkxVOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIpkxVOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94639C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707932896;
	bh=/etZ2baOF7E/sVpa3o1AdsVcl77G/g6Z143OQBfqzOE=;
	h=To:Subject:From:Date:From;
	b=YIpkxVOtJBGcUFyRzBjV5I2WZaV4AYbnOSHCJ3K2Ql5hj/cmNusCKSbYng/dyUlFG
	 y8gKlmYE8ugpY0i2CEn+z/7nRJvQM6fD4uUei/w8jbj5eebv+Gyh6H2piwm8kAQ5kH
	 FGKtMFqJ5bETM/NMJaJciSH6kPZi0EJeGRTC2g5sf0DdRYXfML5ensbq4+nMPqRQQs
	 bRmtXAAWr8GNJJTVEdJi3p/OrChi9Sy8zn8kwz75BpO1LlnPJoSRCbj4U3JLy0pZrc
	 no5ynD1vJDSCvSBgHuJqoHioyqWnNROTpuMNYqq5eLDNpmQy2N+WYE0zOTLyJBZ+Ml
	 RgS2DilXTw2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78AA2C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170793289648.23778.18236989618578142067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c86b81629b14537b98a19ec27fe2d6b6382641f785a0a1d14ab2c1e75b5a92
Date: Wed, 14 Feb 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707932896
