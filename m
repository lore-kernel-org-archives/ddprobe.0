Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB94266B72
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786065034; cv=none; b=FU8BmBdT5vxP83j2J/JAuHzU0xeOoFECyBWCZfboMAe1APPGSiTXMk/gizZVVDz1h87BsMwVhTErNg+KCloIf6SdYT2pfcY1HHaudDcEifQ73SRSMAM/3AkM3avrMhETiU8575RkCPFjQh2BanFWG2Tnbd+YES8Y5cBZOoXhqP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786065034; c=relaxed/simple;
	bh=QexYlms6xoN/oB/bMznE1LT0odIT/mYfjfdEvCSw9u8=;
	h=To:Subject:From:Message-Id:Date; b=Hk8FYU7zTwP1CCxyfTcMKJEs+zUDFaxdBShagxWQe62Yogbp2w8wBqHRu12/VNs1KRwuwc6USHo0c9pSgn35i+zhAg4+56ml0w0+d9LpdYJpV/sNSVN/Y9jT6wRlJ6AEBJj5D4hszqCvfsGrQKM0GL/FHwexlQtM5b1hAuqB0vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QasHbzPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QasHbzPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAE8C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786065033;
	bh=QexYlms6xoN/oB/bMznE1LT0odIT/mYfjfdEvCSw9u8=;
	h=To:Subject:From:Date:From;
	b=QasHbzPRjaibatyaUBQYHJXT3iM9xoz05lhxO4w/k9qJ+Nr1OrigRykRq2VVqRSMv
	 4sK31X9Rjb+zaU/3GWb4lqxydwnVuNA1zLxztEOmMeyM9H9bBxSQbgzUGq0wwaUSBc
	 IKQi7NqhWJa2zV7TvDCM2vcmM9j8mOP3GifheMlrA3Fxek5GdBc4IgfcPlI5SPdA+G
	 MLAySEATk19UH/YRbCPUCRQWppss9wnjyG+jL/h69KhAbMCQ4xnTyUoowQRMQFOs+B
	 u3kMV6+80ys7Q2K19W0rsv6w9kP2w8Pgz/DInnRyuMUZ6zWYy1sGrNBm38neYklh2V
	 VTnHNLVSnywKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C0AC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606503368.4280.2168788169516946740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de33b9e94be12de340ff8a2095025249293efa2e603a87e76cd01b4d15c3502
Date: Fri, 07 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786065033
