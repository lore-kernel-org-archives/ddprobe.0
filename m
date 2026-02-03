Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE3645948
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770092634; cv=none; b=HL8PfPTuLkFNDbjCoPmds1V0z3Ykf5HOBbakrwXTZqKjc8NTa8uEzV5ToEwDawujLyqFEKqBfRtA+uTDNsfaWWSEvJtAX4B8PXkrMLF3H34skmk5+8BEc+2jC2CsS3IX7PEapl2zmRjPkMKpBV56sJXDM+Kj1tG2PsxT0Ge2rrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770092634; c=relaxed/simple;
	bh=nrxo58tWPsZ08GXlOR+oIM7m6hLMaZQ3I27Dbn53WYg=;
	h=To:Subject:From:Message-Id:Date; b=UhE7oBgHPNx1G+CntAHWGHCSbc0jzH23knNAiM94YtSO6FbMo6JClZZpoY47iqE9TaVpiwq6ONaBLSmALwmgcszVV2RwDhSkQFnQjIendq6OQCVItwzhbYgiCHZO8ovlbfmvVLeRkPW91ERfSVE4eg0eibm/cysJn9kw/lYbOfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqSCp3lU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqSCp3lU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACFFC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770092633;
	bh=nrxo58tWPsZ08GXlOR+oIM7m6hLMaZQ3I27Dbn53WYg=;
	h=To:Subject:From:Date:From;
	b=hqSCp3lUsTNrxpoD8l9SDkD9iyGjaTHFq+MVB8Nv9/BsNn+fm/1SwPQ1HvMM3yzFs
	 dq3lIj2j7hD+zIYKykXf1f8kLzXEiKqWZAKkcXsSVDyseeWRc3PRdMWvi5jIWQrlXi
	 4L/WbpZ12COJVOcNX5kM8SP7yl7ICoNY+CCHrMeqNmA5bffw9kNBkCJemgD8yJpwZ9
	 qDI9J6QLQ204oek6yenEqSuUqR/0C0DvryfdrRaTNG4Ncsqf+9witf+SC3JB2I0mz1
	 82QaFGmESZKDMndP9inpVCG7YCSfixT0hsNLoE0tMtri1pPAYbbS5gHLyrkyMzyEfT
	 iGPSrmIx4cFsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C23AE8304D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009263363.4892.15819169532460208351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecaab711e5c903996869ff2a124a14ebb87f92823470212ab6a54754bd9ad713
Date: Tue, 03 Feb 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770092633
