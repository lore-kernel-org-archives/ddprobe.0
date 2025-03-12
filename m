Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA5423C367
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778333; cv=none; b=sUnW5xpWKU47ZFoLd+fufSRgCiNPxh3IXphCeAWg02pPDF4k8ZScIVCs1LUh1jndD1JthrMmy864PlOErCETFj9NS+WH8GO9KqwDAy8yszdk/zfKv8VHvIoOmrV241dVi/XlxG93veeOCdPyZzFE8Xi8Le/NjeHyJ0F07mk3B1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778333; c=relaxed/simple;
	bh=EMwKG3yl5+9FYI7LrVjBbMgfOijMXfKzHaL00VGSpUY=;
	h=To:Subject:From:Message-Id:Date; b=BymreV3Yi7voTp9u9iO4T3Fhrq5KAHUatcBT8jw3xLLiYBW2uCoxcok4Ldt8cnTMD/+u+S82+Ht7pFqOM4pUE/dZGzPkxhwqZOrNwOK062KmRIKpe3kLCbSbF+g3gYDYnS1C9RVaNalwt9oFItpiqC1jYX5aYums3i8+R4WnWQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwDIsATM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwDIsATM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB47EC4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741778333;
	bh=EMwKG3yl5+9FYI7LrVjBbMgfOijMXfKzHaL00VGSpUY=;
	h=To:Subject:From:Date:From;
	b=nwDIsATMrNN20Z/ypxvA1ZkHmV8N6KwsodxdyuWDNM1LibVHNA+MDQYxB3e5zHgJx
	 OtgFhl9UgQ+Plee+HgLWRwksjT8eztIIDX1KAmsI2zcGmazK8c5Nz/Om15A3sB53a0
	 Dbvq5NEhCdJdBuYqzPc3A8f8MovU0XNsGAHybgpf8EcwYlcHW3GIvBGw8tU99sQ+rs
	 J01jQiVeVy86yf3uLMT91osQ7Z5eZnRcIRSqOELP7E5zK24rGcpqCpgquuAVG0rYsl
	 1m+A6e6CWHWjUVB7aDRwJwaBUbBlSkUAUoxpRc0A12DQleyT9NxFb2ukxioMP4k1M5
	 gTm7eXaWigqwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DBFC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177833360.13129.13981094264733961444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa01b661015af889d4f885ef10ad6d9ea027eeef714b3255965cce085fa3220
Date: Wed, 12 Mar 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741778333
