Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2550C308F08
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765048374; cv=none; b=O7gNsyKldLFaNWIabcSYqICTV3Dxw9947xwYZXKOdlDOFJ05I1yKrXh6u1bm4nohSNcTprxQ72NKrI+TJCnQy+O3S367pFrDL8zphhiWrjh1LkxLy5DA18xAmm4XzIe43aZPOIya7WiGSZbv/vQ8csgOc625s93Wb3dBtgJvEUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765048374; c=relaxed/simple;
	bh=BZ8IFGncIiydNRtVrCHLKn2spuUhweYdlQBWkk2fyMg=;
	h=To:Subject:From:Message-Id:Date; b=JfiaxuwGY3NxgHguDANfWTR8vMfNs8M3Zh0RqegYzQRJntA425AihtVGfBrjVMJCZHgqwMerwHFvYsbYvRZg/FlGTg6r02XrmV72Ipmmq2WWRPMu11vopvAIUdEUHAKqTy5x5XrBw8spXRvNnQ1Z7yyUPF4XmwtBIl2aRolGtbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF8UxGST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF8UxGST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBE2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765048373;
	bh=BZ8IFGncIiydNRtVrCHLKn2spuUhweYdlQBWkk2fyMg=;
	h=To:Subject:From:Date:From;
	b=CF8UxGST8vxmIR4pqC3k78+hNUgdClul3CFgee8NYYTcwMldJwPJ2d96xAdMmtSx+
	 86cdCxUqn8a/uPxUIeLljndvTODbRm473VVwLlzflyxF8rYu1l0JZQHTyqsG2sRxFI
	 2gBpL7OyjtFdXn94e7th1iIXLAsQDmmH4J+/I+XyUw/tmm6p6xAA00wkWPwNDUCBox
	 TuRHH8LeOZ+iC+rUBP6jCmSGFMESoko9L7RXYa9CLa9ktphdZN7AMRv/Pw12liO9mK
	 FkU738XV3rrzpaPj+fXgCi55fwIAG+NvRnExbEHkqgLGN5inVz/sfunzE/Qiu3Ls8P
	 4PqHVgg3BHxvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098FD3B7DB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504837358.31502.13302633721154049565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39e3d112b5f9ad7fe2537807403e518ae19848c684f2fd75cef635b3ad46c70
Date: Sat, 06 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765048373
