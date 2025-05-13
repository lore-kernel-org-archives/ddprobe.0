Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365191D5CDE
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747157394; cv=none; b=EFU/65MLq1qeUNImhfcMZxX6n6v4kavWsfsf2AlzVsLfjlUUvlTSkITK38aHtJOH6XNRB8oxKG94jXLC0mi13w80g1XBTmbbLdbwi++50gaSKRKj8efHYiptwuIDIC0+Jh9hBueZ3+S7YEWH2sLqAfVn0T5WyT71Ihh2/IpIRl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747157394; c=relaxed/simple;
	bh=CcfBaudrnFFT74f20BbykreuO1L1MyqvjxVAgyjDIDE=;
	h=To:Subject:From:Message-Id:Date; b=MaLxP+qv6/P5SME3UIqk89OcdeTuCj2+f7DNwF/0BjPmjA7v6rPy+xhKPzvJ4fIR+7iF1LkPM9jK+3Jz5Wjjx4bvIJ3PQMq+nLNQgpoBqxgGfBSGxpJLop9Q5zWVBmhQ9NqLg5Zpee7nbWbumO8FOJ8UQTczdRGM+2bl2bptaqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KR+98UNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KR+98UNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F038C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747157393;
	bh=CcfBaudrnFFT74f20BbykreuO1L1MyqvjxVAgyjDIDE=;
	h=To:Subject:From:Date:From;
	b=KR+98UNwoEG5cCxR6gBG2HWdKCBjeGGd6qlMfya66B8bVtR24n3ogwdiEUI1pTiqB
	 p2EAtSyMAAFWft9PS3+Lb1ogh0hIuRfG1m1uzjqPHLLpisTvMEfi1DhqtIfzV6+siK
	 lpOLuQ+o42bsUesyZiYo/NvY4c3+1HzSif49d/knHSRxQW40oDnBTJ13nTzjES/MsV
	 xlgxSPdT6wd7hJG1rauXW4scwWfurRCWmlpQnJsyxfC7PBnOupAop52SYgk23095Af
	 zsrlSqdhTHdrnVyWrtQBIFdk2e6Ikaf0vZgR0ySD/gDx270dahEtNNoSLD1/YoqIFC
	 +92rLsDlf/1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3BEC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715739357.26511.5512934176434045290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3bd09e8e10edd4ccb45d53d9da110af7ff44b1abd300f5e6306a95507b9308
Date: Tue, 13 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747157393
