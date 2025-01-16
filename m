Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2229724A7C0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737022554; cv=none; b=OJylYHhsZXChahoKWep/kH3YeGizZWPExbDTi5B2wxIzRS2kLta+8t2NwPPBgH0RFC/To6Pi2zSZnuc2rE4SlvQ/haveKdztlqiNNIFvVbkdq3f3dV/loBfO6lUV1AgDOfMaQl7q3uw7TOMBnfHJYEqPewbmjhaLSA2wzjHE4Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737022554; c=relaxed/simple;
	bh=aRpxUIQQS0GovkFQ/wMkeYN56erpo6tIbwjCF6H0ahM=;
	h=To:Subject:From:Message-Id:Date; b=gPLfjfOwZ2MluNHEh/lJMtqjZFOMM201/XrcMVNmN8/LtYJ711AyUn62tDyfOpMy+3PlFD9Z6wKKYyVb/t9c1Epg7s31EMlGhnN909bl7WkhoSrv3nMiAdcLMTuiocsUMZc/dzleL4wcs5xYp9B5jBO0KUOQwc55cguTVCh6dIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FV9np30q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FV9np30q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF19EC4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737022553;
	bh=aRpxUIQQS0GovkFQ/wMkeYN56erpo6tIbwjCF6H0ahM=;
	h=To:Subject:From:Date:From;
	b=FV9np30qNAg3TlJiY0yGhSMm8FJ1wtxR4XQ3xrSlQnHdMgsFKfsrnG4BVszsmiyTV
	 fpvYUeplTqIQ3XuDvotuRA3yC6KqJVV5CJM5TNJIS7w8ZKMDXSL7KPYrUTIHJB87o3
	 YAQ/UXOcx0afmTjJ/vQgRx7L19LE1VztrisAVt/qmXu/Jti3Y3g5ZVzPF6jCKheltB
	 F7EDgyb4tLqA9cHO2oEJ9HqfUVMHavls9jDx8lhCnLMqwig3weAktBWFdTLl32S/um
	 xuPB4TjIrvni/cXVrijXedX91apZpMKQeZhwWDtd8ODa4dmRpvEergcsiZWA0FBf/J
	 FjKHilzQPYEZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4B7C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702255363.18444.13224911758389156743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23ab5d8c67af20eb4ff1859388cccd4e6b74d95d028c16f1e7887a94ed8fc12
Date: Thu, 16 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737022553
