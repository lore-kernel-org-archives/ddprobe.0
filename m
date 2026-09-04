Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667E033F589
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788547234; cv=none; b=G1t7quJ0OQDYGmHBABRlil7v5y/qXHKNamYPbO4qOg2B5AfB4b+T+PMYrYwiWnReIiOByfu9m5MEfzPgoW+BV4kIPpsk5lxqbhFHZNM6DcPoQc1UDPfesgNo+u78l0NVgz9J0b1em9J4U86h4gVrpYLI40OJumEJx81MtbwkSeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788547234; c=relaxed/simple;
	bh=AxWZoZyYKQPl/f07hzQpIjmnYlxkGmLUpzIVO1/cZcc=;
	h=To:Subject:From:Message-Id:Date; b=GkriSHbVHm0kIgXGh0ra53xCSUIFIVXRYEma6SrLwKDalsxpRfZwLPXynmsb/1XaSZCE5oka5Jk1cp80yd0pL4aoiKhAVjedWjF+zFPFvTwcm+q0vTDYdKPTMt/rQd8WMi7GxOOa21yjoy38j0Dxoal9O5p16QbwhDyS2g8AArc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFtBj8d1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFtBj8d1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC535C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788547233;
	bh=AxWZoZyYKQPl/f07hzQpIjmnYlxkGmLUpzIVO1/cZcc=;
	h=To:Subject:From:Date:From;
	b=uFtBj8d1jq0bUEURQyi6vRnbFFaAJdBqpx2Eaa8zOnRddQI8E0XMQUowY07MNzlzN
	 DY9FelBL1MXnXW2ITEf3tB3iLI5C9Bv10F91DmFqLx5sadYW6IqfVml/mgDWD3emE5
	 7idIoolzRH5CPgi6p90g5JTUJK80tHhy8ZFBM3sdpgW/9XJ5ah8g79FtBgSsR/wQy5
	 lSEGjOAte8xWSPvPFbkHLp72KLcXsosO2UEKAxsVOh9WvO1hlORucj37nVkXlHrs6o
	 yBPD6AULSWzDGC2l2gI77UQdknKBos7FIZAVotl72sjxtsk5FLlkNRrfcKzBC8sIvb
	 /blRXKmEBo/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AF0C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854723371.2086.9313560276762878319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfa568aadf18c7dfe4e5df488aae81d81d4e92af351b0da6e9a4a7dbb6f078c
Date: Fri, 04 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788547233
