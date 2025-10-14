Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AC11EA84
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760482194; cv=none; b=XLmeVo6QGH12DheQ12Qyh883chKwywJVLjg6iQ1+Tmxw8j3vLip0epbZBgSOLNUptVgSa2nmiXTBFFOQpRqNXYheAbVKW3aCnOPPFSQriDtFlZD3ReGh6satO5fvvMVs/LJiuBR+RFqxksFyeA8Wil/eQc8Gzrg7TCbpcnvqWCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760482194; c=relaxed/simple;
	bh=fwhyHUNNAp8fyPnrYhc1wjGK59sH6xmOwHDbUL3sRco=;
	h=To:Subject:From:Message-Id:Date; b=QyZBb7OX2uc3IJPshV5WTbsHWddHinnj7xjYaLPB9ajTQbUAiKt3RVovAe5z00Ke74nytT9KRdyIn55NcSiBLKx5sr3fayrGDmFf+JD3WNgr+OpZt2A6BJUztOi0KAunuoJIIPPWwd+6q5InmDVUqJUIm3X9MnBzGuyqupVTcwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbN5LcE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbN5LcE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A117FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760482193;
	bh=fwhyHUNNAp8fyPnrYhc1wjGK59sH6xmOwHDbUL3sRco=;
	h=To:Subject:From:Date:From;
	b=tbN5LcE1j8vDKl7lR4JpNcpo8zEMsvkotUnOeWelkm8i0RfodxcP5f5aT8B2n6AQ0
	 3ejn3W1TmrGg4asp53Dq8EtZX4MxFOAju8socS6BC3WWyxTt59yO+tEFI0xhAt/rom
	 AqncOxJ2/pQHOLWd0a2h4t497lxOy7ZqRrBqdZt5oEXDIC/ELeXC0n7MuYA47jO/rN
	 lSMuedBPKvhopEWaCNjkWucVwPM5Y2Rj/NH3GOmdniQMeMcrJXv8hCGYWbVofJojg5
	 vzL5X00gtR2FnDQjV/OGUVizO5Ll5Yt1H4B5VGXNE4/lJoMwJXBQs2yehpEW8SS1hU
	 ZqN09YnRkiMLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB0CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048219357.4527.4619250023326049132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d20681c7cf7e6fdcb13e0dd834c2937fa9567e74dd856d0300cd8b34b82ab16
Date: Tue, 14 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760482193
