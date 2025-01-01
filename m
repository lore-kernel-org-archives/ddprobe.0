Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0097C14293
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735775154; cv=none; b=GcOlXEdN6IBJR4nx/2Sq82LOiirpx5Ms8U5UZlgNnrORfh5jCAMpKQY6lzfgjGEfPnx5jsbDgdTmnrGRekMW4PERYcmk2uR2/g2+S/XP5pch40WtAaarZdvoJOENMLjpK4rZ67T0T2FsfPLCUJiGew9F0UEPhUFHNfLy16yowaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735775154; c=relaxed/simple;
	bh=F8e6qRxHQcDqCqiI/yqXAwPeoeNOHZcFGaYMEyiWRF0=;
	h=To:Subject:From:Message-Id:Date; b=AkkW+ovv69IWDTQglc4bhhoaz1BTzZiO61VILC5wOAlTI0Eh4/AGUsOxA/adalwmiD7MoxxZ25qhuSfAh/JY69bd/zJ6gg9tFi3Y1uIlhHgkW8mQPM2j44pF/FJNzD5oAQ+zaNq3ITfTUEBZ7aeMykRLW5Qu6+A6S1e/KRtUUXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMq+uTOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMq+uTOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B189EC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735775153;
	bh=F8e6qRxHQcDqCqiI/yqXAwPeoeNOHZcFGaYMEyiWRF0=;
	h=To:Subject:From:Date:From;
	b=WMq+uTOfTq7hukG8XzodYwjLypjNc0nDOlI9kLILqm5UPPa4XaNIi8YBJctWulp8k
	 ZayiS/5t4pkI4btTSQrPRKyKoK4J1mSRbko7sEGv8D4vO115kQDXTX+5qhEM92kKyD
	 PUH4IxCSl7AOYyBSLjp9PsAKKgUJSPWHtpK8gZfk8HiSiqjisZBAcrZDqQVT6lSD55
	 6tbnhhMPOLs9nRp4jPhzbwVg/cX0ZsHYY7KdSPtowucxlCObs5sHDOXzSDHymfK44v
	 Ygip8tgLwG/PGpL1bl2ZWJ3GXQUsxDFvgU5RUlk2crdLC1QbWeJ1cdRZEFhDuD8lvO
	 MZTH/UftoMMxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5EFE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577515361.8044.1505135189155787199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b100a309ea28840c9efe87b62567f93de69add447f880cb22f35c923ab4308a1
Date: Wed, 01 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735775153
