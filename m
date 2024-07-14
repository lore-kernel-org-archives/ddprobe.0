Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BB928F3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720970423; cv=none; b=mH3ttgoyNBuLofxOSh39Zx9XNe2Nq0rBKJC/gxBkPLcroxUz0SJPGScLH5cOUA1PzG7F754/fp2KeqIoaMLkwNaAgojt9hdyvRgYi5/KimAqrQXtFeE2l/FOcOAOUObEGR/NBzRyGKsdEzPWekVXmRxd5TH3wzIDkUzTvHsJKTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720970423; c=relaxed/simple;
	bh=TlvK701ZfCNPAS20TkZ7mmqCNk/wQBeDXMimIDsHw5Y=;
	h=To:Subject:From:Message-Id:Date; b=n6MjqYcq4ipapyTic3upOH1nBNFN/UxbD+FdNeF90V9HZrexOkm4K5C3o+8o5Kid1rLqY8TsBdEYq0L1+hhzAI2TKk8hqKgkS4WywsOrdnhKGkUv9t5fXK7m4hRjbfl19t9sezvFJIUov3dcUslVja0Gayh32IMJs9WLnAIgki0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kb2FMqYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kb2FMqYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08C3C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720970422;
	bh=TlvK701ZfCNPAS20TkZ7mmqCNk/wQBeDXMimIDsHw5Y=;
	h=To:Subject:From:Date:From;
	b=Kb2FMqYC3ow1LfW3/0HNT4z3cWZQBgSZ1xpKr1FCflPsd4qSfMLeboWVUri63hbt1
	 ko+4XNqwGt/iM5yxvfokeBVShh+uaAr1gg/2SGyUeoJGTBGZ0aXJHzeb2p+0fMx8hj
	 vHsvFHxno63xN6dNVQwCr0GZyENANkMxcxx2pXyMGbx4TtZw7a1nqeqRsAjvGQOLHR
	 Phdm6yHjVWffDiZBukoosjJviWMS8TaR2g0rhTb/2p4MrmW65+PCE91HVefj2sHRn/
	 z+pw+qv5pXpyZ8EcaNkoXkMLm7yjSZDqDffTf8BSwEv94VB5zgN7Vd/V0yx/Bdlb3Z
	 AO4a9vAjQGTbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C830BC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097042281.29994.3197861215223136727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fbf7a994b490c12204574ea720f42aa34ecd34d6dd5637b0c3f5c9a0a23a0b
Date: Sun, 14 Jul 2024 15:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720970422
