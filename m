Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF123093A7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767306834; cv=none; b=d1eCkdjxeOKSYa1Bg3sZhyCI3fBJJj2CQn1D6fVJ5nMv/zVw2qZQMbZc9Ke2KtwBNYCDxov/k6C7j+8004H4wWNUwVsGlq+iNcXtJyinw2zm4zNb6zUFwz122tCpEw5DRuKuA8E5S47pfvbKr4TGlp1koqInt1J4/ASzr59d3Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767306834; c=relaxed/simple;
	bh=vhCEBVV/Uw/wahrrJbmBbicinyts+k5JDSHWXZt93+A=;
	h=To:Subject:From:Message-Id:Date; b=eI/GXr9TyFfB6js4NxXbhdv9I/YpsKUI4VbcxMRRmvOaotCl1vkxj7V21ZNtI1rSuxZkt6hOplJOieK63wRzAMCdUQHgcdpujmU6h/RouguqiBXHz9jPOdmeUpESttKEMeyA52jbm2+9m+1qYwVz9jJraKRWynIlusWV6N5u8lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7QwNVY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7QwNVY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5B0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767306833;
	bh=vhCEBVV/Uw/wahrrJbmBbicinyts+k5JDSHWXZt93+A=;
	h=To:Subject:From:Date:From;
	b=b7QwNVY99O/GjBwJU8W1xlk2L2EQoFL3rT77vDHgAHnVBJXmERSS6CO++7IAVsYNP
	 VjvO5/L2bsDC8Xabs1om2KwtXyYjhqpjfPic55kp9LMQMEdtaaZpqohR6rka7lbHqJ
	 s6biDAxH3AhykbLSZx1uqa25Gmo73cZm6BRVlDUeACqk9ettyUTzGNGA6iwwcBdSkj
	 NFrxSQpw75BgqtFqi8L3OsGT65K50h3/J9PDG/jY/3Pzw+YTAUvVy5RL9zhIrdt5KM
	 e0qpZV1Y50x1EKc2qviw3VD9HPO4sGrc5WpLyNhsGzraNswIrT/naCrFgRj27dyNbF
	 hOVFRuLsRFmNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90796FA3722
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730683358.29943.2882344594107709779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06461fcd17f5809fc0f97527473eba39f948fdf5a427039d65523c53a448fd0b
Date: Thu, 01 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767306833
