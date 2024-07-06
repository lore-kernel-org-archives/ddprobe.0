Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C4EBE4F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720239323; cv=none; b=bPh34ftw0DawkmX6vX6ZiS3aTeLtVLfrxusQZMLU1krOajUaTMoNWKynBTRZY2nYYZnxFtNRPHP15Hy7+5RTNxVuDVlThu0QvyudCha7JwggGkYhqaDCAwtYusucW+T4d83DnN9tB4NuKcdODFHbCJk8sgzlD/kJcxs0LN1tx98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720239323; c=relaxed/simple;
	bh=6rUL/rBLWXPIcolaCXvSQqI1joFSHI8WVZ0HSkPPLbA=;
	h=To:Subject:From:Message-Id:Date; b=HY/R1pRT519fWYwosKS1tWprehR7i6WxCiMV5P/OGW4NSlvCEGUqx4iuiO2GheQCOrAA3s+tmW/HXFPDriXk8JisG8wwarX0+WNn6islfDI+iS+kLPSRqFq679XRVHtmLonaevtG4WLCUfXWPsoPGkm3UP/dcmqObpOn81DBN+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4W1ICH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4W1ICH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CB5C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720239322;
	bh=6rUL/rBLWXPIcolaCXvSQqI1joFSHI8WVZ0HSkPPLbA=;
	h=To:Subject:From:Date:From;
	b=F4W1ICH5Dx0F5jK6YupNv8ehusnxiwKRbieqkuX+rROS9QXyV0dZcLvVizmDTSngN
	 Yew5rLFfLaVsL9PjZlib656HlVT32uArt7ADv3yryVRG5fpXtxWfmRo5iCRNndwynW
	 /bPrSCeuDMifJ0Xxd6O1rKGV369l44AZZivbYHbVStmfpEARFHukrSUnnZBP4/ESC4
	 e7JnfoLhYSNQq26b8AWUSfw9PjbD3uR0NnifUt8EzJkxPqglmJiMphqekGrHZ62Da1
	 oyp9B80Hb2ql20aw4Uid02sfLsVaTPmKYRBQVwnes//jHr9G39mn0eXlJIOBlIOaos
	 qBQxVNb7TOt9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8A8C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023932280.17828.18332921531766881581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f38727356c67d65a6981472f9400aeeac016f939633d5539ac480e4da25fe90
Date: Sat, 06 Jul 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720239322
