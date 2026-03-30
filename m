Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0DF3BB9F2
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774867494; cv=none; b=SnVoWIzXjooihm9UitfyfC7dNEM1MlqqhPJykjo77IslZfkyhjcUlaYXR3lSDOIwrMQqfVJ6yUFn/zGNNqEr64iPrFI1LmpBz3OlCTS9JVDlTwl0BSVLD1kkENbLJMmXBbMFd5AXZCqcqNEXS440tPtTVRLVyGrW7Um93/syhMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774867494; c=relaxed/simple;
	bh=0x6kWiLJsWIA3atlmalMk27/kSSAL42C++hiybc1ZHk=;
	h=To:Subject:From:Message-Id:Date; b=YW+fPDgB6bZWmnq9F4Q8QIV0kkvQCIbDvOqW57z6tfbqOWW8YOg+qGCuHHTP1pVAR8vgQVI+jOYtrFRLFn5DeS1G/YIzkstkx3X/GsJh4shDkBcIE14IK3vK2JXuJe9ySbpsvUfWFz8AAQh2Qy+iPtwPuDbcgZylwvRjUmEAVwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNGCSOmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNGCSOmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB19C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774867493;
	bh=0x6kWiLJsWIA3atlmalMk27/kSSAL42C++hiybc1ZHk=;
	h=To:Subject:From:Date:From;
	b=JNGCSOmisRNTmcjIsMSKIOnALsbHH+jjQgDMRkLpRe9thHmIUYBlCHfsBdGc/SlCo
	 NQGVh5R9s1ukiNNNvrQv9XVGZN9/cNuf1w8mDdPKYX7Jpg/U+8s6dAH5HycFiO/E+G
	 nIgdavOgoaF2UUMgvTCVvAY8Q7mOy1nQm06+EwOQjK17C7ZQpw4jDyYGGTzCPwMKhD
	 sPepfRJH9BPSD+IQRdQxX9GeBfv4s6tL4lBM4pxw08N/otb4GkV2KtUj2/E9v75OPM
	 db1U8z9Tey4MmW+sgBDWNCg5vdLVPbRwGiJA24KZlH4kM1LvPVbODibcuJOavui3mS
	 Gm9fdEmdeKomw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9062AFB3D15
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486749358.6980.18051341864380918186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ed2c04621179ab20b1c8d65c46d03c515275bb1ecb4d4672191e3033567b9d
Date: Mon, 30 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774867493
