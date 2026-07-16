Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A0D3A6EEC
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784186314; cv=none; b=ivPoG3rDeOhuIaTBvRqZ75TAvUV0MXMM9kdu1mIn3iwf+qVzzgV6QWRSv3KPIIDtJbPLJqZaJ2YAhVQzAggOLASfBM657nGAla+q+aUuJjUHJ+UP84CDJ0/HfyCkYuCnORvRPMsdwxDfLIQejpFnCmMcfEAWRagaBqW8S00g9yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784186314; c=relaxed/simple;
	bh=R083d1DldY3+CnWIskvXftvq/3MO0SNE2RxwkUp/qwQ=;
	h=To:Subject:From:Message-Id:Date; b=fFIPKwCSsfxn8Eeqa5eZbsNEOaRPgNdlsG+ASQj/fkx1raffmb74TMpVk5yCyEpondBn/jmN50X2KTMeEXUeN8F5i8wk+X3FadQqBijBjxCQ9wX76y5tP4X/mJ+gNBjl2v0934VuQuB3DLVO/u9LvFd8v+2E0UThh4NzXIu7/Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJnOqdFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJnOqdFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC802C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784186313;
	bh=R083d1DldY3+CnWIskvXftvq/3MO0SNE2RxwkUp/qwQ=;
	h=To:Subject:From:Date:From;
	b=JJnOqdFYsgOJAkn/QuCz21cVYbjyvNQH7LBgh5wrKM1vqT8vG88xWeTo12BQRlOxu
	 1reoenw0xCHVwGmcoWgbDr5plOZRceruYeuTBwdTj4Tnew1m5jEudzqYsgkwq7HNuy
	 Azd4WWQexIS+xXyDxnRn2vWELi6bwpuapp2VALqS67fRrAbBMg5/yFsqbxjIcw2E5M
	 le2PkbUogoo3zNuhrNOcqFw9d3omRlscAIQGYXSEKPe2MelNAJzwVr1wVOG0uLyUqG
	 1EJyOyVuY0e5yBvSfSxJhBruY81Kt/D2PRA4dwTv5s1kQTIlV4XZtE9kwJiHSZbFYP
	 Ym6Tu8lvCsang==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA02BC4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418631368.22125.251743598412407662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1463d73a7db701bb26ac78ca00d6cc71fb158b70d66258f869f23b8a0a3e5a
Date: Thu, 16 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784186313
