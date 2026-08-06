Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510892BE056
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786020634; cv=none; b=l18k2k0bI1CjsqJY1HIL7qFQIcmv2HcoJXZn4GKU+gRUDmBVSUPgoEGV6ck8SCY35SSwemz7axm0Pxb6cPYjbDo4SHtn6Rsbi7ksfbnQf0O/vtKxkXNWqtMPtByYapM+It0BIhQgl6tK9qJDk4q/+Tgv7zzjY52kpgOY+rCIcjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786020634; c=relaxed/simple;
	bh=Nq2MHrGD1YQfwqCYHt2WL02pJiFTbmSO311CGtbOpOQ=;
	h=To:Subject:From:Message-Id:Date; b=mzP7YtieLrn0Logfjq9JUelbv4cPBiIsVKdzvklL2afCHB+bnWqrh8lypNnUC/N3QnTTjCJUKtLvlI9FTpZtHN2cd5KFq1jzaBuzP2yyM+9DDJuiVqUKTC5dgcJUgglXqpqXyJzp2FC2uhOZ0wbmuF1eL2GtlQoAS4rv6aJlFcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWgYa7pA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWgYa7pA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7801C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786020633;
	bh=Nq2MHrGD1YQfwqCYHt2WL02pJiFTbmSO311CGtbOpOQ=;
	h=To:Subject:From:Date:From;
	b=HWgYa7pACbDj5zXSbQkfUk9n62wV5Q2PofwmQShUOfkrtBDQkrHxcF5UqrhaotZBC
	 0eaRFQ0bu6AeFN20O+osT6sDEFEHmVdlBhnffcufzyY1wxANmWM4Gk7wuCno4uyvJs
	 3wkBXJbgArm2WTjz/kch70EdqZlx5SRHWwhz/NbvmR9lfabjCDk8VrgnyRPtG/xLU5
	 3t3ZF70NtmmG7qX+OtsnAOrk6j803YNbQ2pPDSm93iP9ZHfGNRlFEYuRdpkCoQ+1Q4
	 0d0oxEwezp4GU+id41D5qVyzXX0EZuCJoBH1lsL18H0cpUbZl4C2e+nqo2kNKw+S2C
	 SNcoxgdSlCgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2156C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602063368.16755.8707530525809310584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bdb17f2f10a5984fe382a627dbe23ba6836161358427964959d138f5846cb6
Date: Thu, 06 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786020633
