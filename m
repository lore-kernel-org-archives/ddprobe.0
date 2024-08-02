Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4752C1AE05E
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722621954; cv=none; b=LrocXrynzNzaGvqsQtQNxOmMIcNgE9CdvCT2vzfjuPZV6/rxBxUNd88EGvnwcbnYpLYray0fhI3Lm4qSFE5Dff83vH6/QmdeYFiKEqKemdaYOICOfT8lTc/x/xP9kSPV5ufllYggyB4MrSujHfsidozEU8HIigw//8t/UNIPL6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722621954; c=relaxed/simple;
	bh=5p7Ygv3KMbMfE2/ilX3VJtIvteW09qm9Cn3CdyWTgvQ=;
	h=To:Subject:From:Message-Id:Date; b=PBQFtyQfoFOnJg2LUBxTEffYdm1FS8ZRSoi6XDMWnx0T29j/yzTHOQlhoxkca8Ax22ha489YYX/BPnzYU5+Tng9ekn81UlDteNtNaztxUFLY0kqU16zgULliZJ/ANJi8XhiNRhA8WptKzcVVJ5wvVSK374UQiOpRV+UEOO/THpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASXKXhaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASXKXhaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C648BC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722621953;
	bh=5p7Ygv3KMbMfE2/ilX3VJtIvteW09qm9Cn3CdyWTgvQ=;
	h=To:Subject:From:Date:From;
	b=ASXKXhaZ1yOZHtE1MHxYUHnCJRbDZCtsNYeiJFj4wJrdgiA1wYxxy9t+Vs7Vj3fsk
	 9EOTPWhxc/CeqsHJMlrI5XY06dwebJpP7UESYCRmOPeH0YwPj1T9fNgNzEV2truVRL
	 Yifx6uyRWbCz4UdHBEPAbyVirQe/5R9CecdrOkwj0s+kyZx89U3VFN9Y72AnNxl6xq
	 nf9gzPPO/PL2dA1pZYaFRC6f9kqfhPvX3dowctcYKtpyi0nEcPPv32QVWkfP1U+iK1
	 1t+Jku9HnsY9dHOJpbipe3AM1CsJcfKst30ciBogU4cThZlw020naEaPidCiQ7oGpM
	 8auP2/MZXXWBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB88C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172262195368.14039.6390844675612209771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73894ad6f2c82b017b793e6ec58183c7a967d428b0b28aa297b6433c803491e
Date: Fri, 02 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722621953
