Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414A641686F
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786692634; cv=none; b=a3rH3WGi8zdsBYsbvNOJXwSRfGzOnjJsbcTj/EPtkbRwgPU9AWC50TUcfBKKLxEi4ZVY5It8G3DKNkIEiCGQ66UesuIhynWyUEkqkLYQtmy9l4j4Q17k0EXR9ljrPDZsTJEFqtcmqyB8cE1GJ54UK+x+UQ/hJsEd7rCFZi/Uxb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786692634; c=relaxed/simple;
	bh=YUmb1ObEYwLuyvE9IoHD/r5ILKRsh6KljOuARVHgc64=;
	h=To:Subject:From:Message-Id:Date; b=B5rgvhXRHsd23La25PwcLao2xNtSjkAacUG4X1vW2dnC5kOrmrmP+XoV/hqLWgVO+/d6KCCMwt1jt1Buj8B3grasans51AkP7lVLU8rKKGWdcSU6JkfD87kTQYZkhj0HtTpVtbkRVdj94ZPnW2lu8arONv5oQk161N7NhY7upFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUAqT13K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUAqT13K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4BFC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786692633;
	bh=YUmb1ObEYwLuyvE9IoHD/r5ILKRsh6KljOuARVHgc64=;
	h=To:Subject:From:Date:From;
	b=HUAqT13KVa6D9UkHRHs/UR2HPjBJ5QiQ/Rry5RnLFUNPznwPC93PMVAULI76oK7HM
	 UjBqb0w8JxihdGWVscwjVjrMGqCzaokCs5wkRuT22D/ySqmHtleyns00K1HrCzkcPu
	 1FUDsCFSTrN13KwsH/xrO0MpoUCy0SkxBoOdmUqVe2qoWQhdmv1/H05Pzi6uoscnPU
	 DLYzHs/VGQRHhjKew62IEc4p5ETA87uDKaNemdxgHaN5i4msLA6LJe0TYsVlldWwDe
	 MMpBeX2nHYfVLKCMs6DMQJFMrOu7LLOhbJm3D3ZeIvZ7+1qxvaQFzO1Bn69DbMVGV3
	 vZEb93gKwqKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BD8C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669263368.9284.3160465603320278157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3763c4c5ec84fcf18dbf1783c29450e5f04acd024cbbb45baf49cf53f3c9e4c0
Date: Fri, 14 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786692633
