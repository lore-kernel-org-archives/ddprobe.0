Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0941B808
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760156394; cv=none; b=nwLn2lSu9b37cOykzy5S8Wzuf+FVMySit0r9+cJ4dKmG3Bv3T/z4JxX3IYorPfPQ0XxdbP0c7irNuP3AsEFPfBnUIWCImSvartIXlWeYMnTb97bbtCrOohoxEsGJzZI5X0b/WAcO7fN2l+6JpHoobX+VksyuHCpJD70T8eu1PXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760156394; c=relaxed/simple;
	bh=zqKRn+pkxDLEiWOagL1bNwoZu3z37y8HblCfyQIOIEk=;
	h=To:Subject:From:Message-Id:Date; b=GiwsFsnMm9bkQiznye9ksjJyBAX8fVvUexVI8UIGZbIb8wGsui47QigNkpPlbsRmyn7PpwaDlgU89d4IKdy926GgphNr6KPpHJu0ZaQgB4K4n5aGvqxkHPfA5GDtZXGQ64Y4W41hmEuZgXL9KgQPpBW76lnI+KDXNgze3ZoSBRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMHUS4cJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMHUS4cJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF29C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760156393;
	bh=zqKRn+pkxDLEiWOagL1bNwoZu3z37y8HblCfyQIOIEk=;
	h=To:Subject:From:Date:From;
	b=QMHUS4cJXFAAA0m7FOJ1MBB3EHfXFzxj/npMEKtcGpAsEIc5ApV7PjI51+KNz9x++
	 pd7uTT26k24QxOodbI0ubhqESrQSZcXeLw9IySlu6Et3AFK6N7aR+2lDNZzJjVcfYR
	 2WPmbPFOkyaoqNjC7+8/a0S9ykBQwebBTbqg+8XbmoTKyIDxyvuEIuAFC5xH4p+TC3
	 nlb4yq/JkoPbzC+fsKijrLPUAQE4Q9O8sFxTXv+yzjb4SBoyHFr0fYR9IS4jl7mtUn
	 h6VWBkcP41lF0r3sCdDq0a5h8FV8Z+42WGVeCjF1B2R6+O6xZ+ua/XXrtJZ0jQriZh
	 dc6U7hE582vMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3933CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015639364.6463.7041863467837732115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1244cba0c5350ed04e9da44820fbd849fe2189971f510820073f9dadbd8d8cd9
Date: Sat, 11 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760156393
