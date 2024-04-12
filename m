Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8D114830E
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712936363; cv=none; b=p1nut17/cnjYKJ0a+iedkU3bhV65ved46epRJhuZX4pMKwmgp3BB8Ba2t5IWHEsJKpxHB0g7JtaOfruZnH8dbfk5C5x21IU52llhZKGUCx7/jBgHnxBNBVD1k0R0XT4868eHayAUMVkDW25spNTt0uxR8X4MtFhFrabOI0k9jr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712936363; c=relaxed/simple;
	bh=FyplNDcvVi3pmmS0aDPg5nUtLMdkBd//nrnL3SX5yNY=;
	h=To:Subject:From:Message-Id:Date; b=noUKTdIkP/K478YenyXtv9S5ABX7xmyF+mueDghKXYg93jn7823uu4h0Cs+uagA02RnHps7IJOmKkqGi7pj0JothrRhiZGWbDKP8WqSp0VP1Y6P7gcZwrAAT2K2yxE01aRS5yxmUQMwYTP/s5VoX9HzKwfUKLwWnZhGHKDIaVJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lN8KYjdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lN8KYjdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF19C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712936362;
	bh=FyplNDcvVi3pmmS0aDPg5nUtLMdkBd//nrnL3SX5yNY=;
	h=To:Subject:From:Date:From;
	b=lN8KYjdW0ElWlxHZkW4iiV318lK3F1nOiGWiScSMuFeIlIs/DLzIZCogpRkWSIjbh
	 FSs3jeDSyOkivDPGZwKMWQGGB3ZhcGymKNhMAKw8MoMjNdQUHC0CSY85vZwxH/2Md4
	 rmbeD3El1Xltr5TEKmlmTBmm4Leg4aRAT7tphkqt1h+D8qlFzgWR2yLhRDB/NKyIuH
	 uKC40psFpFhDG5+aGz+e8xNItYBdpELb3tQuOUs0/sVVih1SCdw+n7vff/yk8xNTKP
	 oAT5AWrW1LoJEEBDWpKzI0MnTtkFIFYB5LzPBor3C13FJlif5lYFZMZY5H7UAwtbXe
	 FrZq7emajFmwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9115C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171293636280.5506.1697604469410573448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf5600f4c3a6c770e711aebdde320eee979964af9a04385abcf91586ed9466d
Date: Fri, 12 Apr 2024 15:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712936362
