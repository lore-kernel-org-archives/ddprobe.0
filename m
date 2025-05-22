Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC72645
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747877394; cv=none; b=PYA8exVs+YnbNTWbnOeitAwIqqyP2DvVP9Bb5zG4fMydZv6uTW2+9YumJr/GvkMZ95DAWi+/I1h8VFad22P7uFNIzShUyxdSiYVvE7H0RruLQHn+T9G6gixooCfwDy6gqZEveoUs8ha+2JI5YIx9X4wQGi07uSUnMdodvh9B32E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747877394; c=relaxed/simple;
	bh=ml683aBuN69IcoJEBXtH5paf0lBebsRRoq/W62MkfCc=;
	h=To:Subject:From:Message-Id:Date; b=oWECk+PsZzu2QMeEtjTBYLd7UeuhwPSou2vEeB4fqFjPfXGCGNcUHNs5J8xcMtqavc5HnPR2Bys/lwJYHKcqVcx0ydLT2DFrWW7fCJw3qshkqiJNooEWTNuCgsJauBkQ20vEChmaF6hGasaKCrU0qucEKd/FS6WbmhZrmnkMlXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2oZdL53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2oZdL53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC64C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747877393;
	bh=ml683aBuN69IcoJEBXtH5paf0lBebsRRoq/W62MkfCc=;
	h=To:Subject:From:Date:From;
	b=j2oZdL539MHir+saoV5QSn0xpCGkfc75ymGzaSM+y53/9egrakNY51N5OORpcmfhG
	 tiGzGdfpU8rb2oi7knl8QR9KoLlIPM04KhfjsIFj0+sYtWYKRGb7adFcjf+zXMEGwR
	 qGkWs8Eyu9kM05of8kq64jXzl5ksKEczX7iGfYrj1TDxPfqFtskRVM0p3kAISt5+cl
	 oYyb6LksfBtKpgltrvo8Zcx7NqlZfeQH325cSWlqtPTNfe8veQXvROUdjwWR42IiSV
	 qO7gU3J6RgL+SBit7nuPOOZAaJwkr/LmF69FDYeZ43MJg3Efgfx7xr580i3ATkuoMP
	 EqZIK+lfd1kSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA5C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787739357.10272.1010882849903668399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9333a6819550d4bcd828b5d13f7988901d0083c0e33d88deb43a966f0e8015
Date: Thu, 22 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747877393
