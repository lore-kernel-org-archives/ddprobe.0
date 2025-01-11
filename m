Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA80139D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736623554; cv=none; b=KOMQ28DMmnBvIRfImWZ6TPZTKO1IQgGU0xYyPdgzSHJsO2yCuXY1HMaaGV6/7dARsf4Xouk0Ww4zqaGDTn9tmLx6/Or+f17donSNwqnUBJWV57K06O3+Xq7Z3XrrdNNi178BtgERH4V7Xu7WztUMympv42sr335Nl7BmlhmRwvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736623554; c=relaxed/simple;
	bh=XjlSG9c1qLLIpcK4jDQqYq4bmfdFPaEOUVSqpAyAqOE=;
	h=To:Subject:From:Message-Id:Date; b=pceP8Lwk3xwepWmg0bRGadGe6++gdupbZJPtvnWSQH+YnpDt8IBr1pyKwvlSAZssZDgvWhFkoM9mZc1yC2pa2iqSo9eMd5eee4LeT58Ows+wcuKrFIEECIBjVdTho11ZdFqO9dajhCZkUVXdIvaw7Nhe8AuYtWzlAlSAqAM3CFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=og4DHgqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="og4DHgqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD252C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736623553;
	bh=XjlSG9c1qLLIpcK4jDQqYq4bmfdFPaEOUVSqpAyAqOE=;
	h=To:Subject:From:Date:From;
	b=og4DHgqLwgaRTcVsdgWwOflyFUmTzcv2cPxBFH8gelYzK3CzkVN1FTcONZU/n23m1
	 sUUkvYt2w6NFRPyvJvzWmj7Ix4t+Tvvw55gPHHTripOnOxzxoOqCY2gCqnixKAH67M
	 r1ved4Qe3AH0PEGHEsW/FD4dZQmDDkRLp1RfkdgfOjjSDnq87QDGFv4MpmQ6Q5/S3T
	 3i7FTrt1cWsAEyyyNCy6tUTTQrf23/KHB+s0X5zEOLlGWlSjrn9GvIjqP0P8uLe6SO
	 lwkXELE0kd+DrABeSb+yfKwfQsjU1iukhwG46+svmXMzTJoz42x3nCFuTd85m+r6WU
	 H8cV8uFaMDGcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998FAE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662355359.5223.1511423008887250670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537bcf075f283d30d08143effe187a71d5cacca4df7ff237bc9f0b65d95fb162
Date: Sat, 11 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736623553
