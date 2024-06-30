Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8A82837B
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719731063; cv=none; b=po3K+nHyVUznqDMh9uBweKj0Hockxuz7qqiv+4V64EwLbvSa0d0dxJHdA4Dg33pIIrswGvn6wCgNOwFdRpo9+41g/cojXfpphepQzKrX6Mn1mOkDdQkKvxyprw4coTmtkUKybPgea3mo+PMo1ewVJqvqlXWXkxMeklKMf7kH8fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719731063; c=relaxed/simple;
	bh=8CJfJrFTA8CieP8+Tzzm13360w82QAurpfrEGg9C4rU=;
	h=To:Subject:From:Message-Id:Date; b=isYas4pAzPMZsDUpGmp31XP13ZJYy5QKq/Wu5h6VmNHMVzPDnSqrO0ybz7QEp257+mpeDEzhXEtjhvRsPn9sVyn+ByxygxDffc4tkWlhi5hL2oQEwSMzvJs/cC5BULCEOI1w8FqVfoji0REYMumqKwssL12v1AoTGHW3s1Y8rxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ov1xTpLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ov1xTpLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB56AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719731062;
	bh=8CJfJrFTA8CieP8+Tzzm13360w82QAurpfrEGg9C4rU=;
	h=To:Subject:From:Date:From;
	b=Ov1xTpLVDxS8g/PyqO1cSrEDGETf0bOXowlR4cnaXfALIjfU+EAMy3Xt9nnvC4YbE
	 dmuLVTm0OzuTHiedgwMSSo9eOR8K63nvpyCgGepb+3zO9Y3KZjXMQmiPmfE3imp7+o
	 eKtmq8HmpztNm2JPBoWxjpcifNW0P8SUseDpFIztt/vW/ITJOVEXPhQheBBLC7MbXK
	 zFy5NRuHBaT2ZnYK0LYBjIbCLngzLea9a68J7x4ROdHH1BHC2rCc2TOE4zeRvKoZwl
	 HKGHPqgtfxW0z3Tceo9Fs9c4QTDrbI5TfZPpsqSock/8cSH+Jop00IEhmwRKGiU1Iv
	 lkWzfuFkSvCBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37E7C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973106277.17475.261360300109241619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92185a8c6845eac9df2fc8026cc81ff74fce5ec5f147f86b978b41f34ec2fb0
Date: Sun, 30 Jun 2024 07:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719731062
