Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E30140B0E5
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785766234; cv=none; b=dH59mXQdrsVmoX+YnbifKcr2cB6rIuygH+F4JqaxxLpCYJ4Ebnx4o9AnCOqYx1we5uni5HBs+s8abMmzr/crP3Ug1+T1iQZQzmwrrIOp18MR0/IWXyIk/kR0Xj5dEqxZAkdGpCbGhltOk/454/KPhFmJiUbuBe5vspiaEywa/Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785766234; c=relaxed/simple;
	bh=7CBCeY7orBpZoXzwpkpIntPdBz7dTCTFPkaa8gWHrDU=;
	h=To:Subject:From:Message-Id:Date; b=hulLFJA1eGJFlqYaM55ru6rScNjC0sSQSaOHY0+R9VI/OuWvETPIskakrkse+QclBEGhnME9o4uZKs6ryU5o6WgARN1W+LQGK1fwUAKaedJK5BM3G8mWXlJGTY6LA3AEEvGhaNyNAKbfaxCULIV1p+a80b0Bu2lksq+cengiLfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hI8C0MLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hI8C0MLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65F0C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785766233;
	bh=7CBCeY7orBpZoXzwpkpIntPdBz7dTCTFPkaa8gWHrDU=;
	h=To:Subject:From:Date:From;
	b=hI8C0MLrL/x64FiHhCHUB1Vo60XQWheqHaNznLTn3fcUpx0+S1xeWmxL15RbXHvJp
	 jbV3nUG/NoeQdqi08yBIO0FXe+rfQN+S9BRd/VcBfBEwV2iVwoYmRuxgj0pctG1sey
	 TArNfBq1osGC3o3DpUY010lnD9OQ2q8ZyZRHdAbPlLf/VR7m6qondBndlp8pnk3mvl
	 A9xR/hi9DTJBRwCDMeD3VNY816BsOs6IRRDI5tI98gdmzNsmbd8MZwEybj7yLStCG2
	 YP0I/u12uJphUAFNoIjsXcShrlzP+uah5sIriElKVTQWrHJm9s+DR2Zxv5huEhLVEL
	 MFaMI/SbdCnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEC0C55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576623368.11302.17380643783624608291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990c9252e922aa69b75996d43091da073b7453e9a4cebc8c50a6ad6142369023
Date: Mon, 03 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785766233
