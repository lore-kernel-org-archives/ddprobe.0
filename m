Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ED43B1035
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780908874; cv=none; b=RLnGuhpT5oUo0d4uxZjuTf6McfBM+duE59R3IIn1mWchW++vxm6yz65TVmR11NJkB7AS1cZiRUabU7GIIrNuL1NCp+3aTz0qmwprwLO7XB1Au1mKUkPzYvbz2YZt3774qICjv2abO6mFifvoDezvUbjW/4Bl6wU7EYEqEfQ0slI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780908874; c=relaxed/simple;
	bh=vznjTZuqteAro0HgRdg8GZD5Hjo9FIcoHi5IhUjgbps=;
	h=To:Subject:From:Message-Id:Date; b=dWf8Eo0Uya99CHRHmUVNYBat/zS7/Qf5k3JrLu4pXwR7dxvQaFBsJjV/bH1dcV4bPI2CYpiCcpwzOjX57uxRsgHjQUnVAxNkxyzrnvrTW51d0ZGONOkmaebqjryDPwOTDOc+/U7Cf3fGDr447hDHyZpVtQxD+HYsys01jzOS9pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lcuk6yDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lcuk6yDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3391C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780908873;
	bh=vznjTZuqteAro0HgRdg8GZD5Hjo9FIcoHi5IhUjgbps=;
	h=To:Subject:From:Date:From;
	b=Lcuk6yDJ57Ps5RUg94Ih/25q5MVQfD4XRLItn00jJ0cae4xQugaR2mMoSVHWiVMR9
	 vcg7mAk/kv45tkGOpbmFmCd7PNN4++CLu67lWBcoiNDB85mIBJlq42UB+SP/4uNmTi
	 cxK9DPLmUTjEDpvBLtU3M1GtfYsskt9mv9G78ococGMbQ35Khba64c2Cj2H4ejHiRb
	 2Sms/mMjfnCXQM1hoV/9AYfybKt6MbVxiXUKXlLcqecA234fGekaQnmF90Hqxi3zNz
	 H94xAjWTsSEgTLMfLapWhvTo0Thk9D9y00t7b/QQr65V1OykXEVtbr8mkPNmZfcF4i
	 o1+3UkhlkFkNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA66ACD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090887368.16053.3236359867728793199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6ed5012bb05c989dbb7b5d88d9f9ef969cceca16d28bcbefc08a5f875df5ae
Date: Mon, 08 Jun 2026 08:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780908873
