Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444E431E85B
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786600234; cv=none; b=hGb8vhw4wDrZV6YgMFa4+qeKtDTpv43Qo7clIIlGiXshHAHq6C6Cu12jZxbS0epad6Zox8krSt6yv+lSMVT0n/7V/Z6/8lWtzUnGegMA1T2iX4bMEsd62zYM7kSHh3/x1TiMjRpyxH5cB172nMHhi8mZWScA3KjkWit/RRO28Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786600234; c=relaxed/simple;
	bh=7EpjAECH1q6udp2e3eqR/LtR5XDM/DlrJERRBVXCh6o=;
	h=To:Subject:From:Message-Id:Date; b=LFyN+SK0zpksjSoG/fTLD2quKWwlPNsuWedGWisCtHvSMx5dpBu0xkIjEootdmwUv1/M3+wf7r6fjyaJi+raM4zJfqbHCJE7duyGFblS7isEyjomSqAtf2nvFeIJVV6W6GERiPwFhromScVgLTOxKyeQ4ovrdLA2+cAW1E3HMoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UN2RhdsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UN2RhdsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D106CC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786600233;
	bh=7EpjAECH1q6udp2e3eqR/LtR5XDM/DlrJERRBVXCh6o=;
	h=To:Subject:From:Date:From;
	b=UN2RhdsEuDQmwdsuCQAowJemSXG+PrkY7B5lpLzqqR20ORvZPHRdGPf2VkihHSx6s
	 4SvHNyxv6IlBXAy1PIPy4G8E4IJv36iozZS7x4CVZWlaW7CXB/w73bxiREmS6w2NUu
	 F2Ipgd/fGqxzrxlA8IsMrUuRirrb3Ec4m7A/YxOzuYnQ141b5qgX9am0KDDVEGhi4J
	 Q6ldZvuQpDW4wuIEqZhJ3YjCOtAsgLuGAlgMrNkr7r5Ko+SNV5JafroXnssChMa5HL
	 fLWPUofaUixbOwNlH9UotIGwwPV1gtRmBOOzBpowR1rC8ErTDZK5cT+HE4TJdBFgz1
	 gGRnHybI+OkpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD308C5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660023368.6966.4033128708158494819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7eeb2c2e81c6320a2a44ab96b30a62043f3efbefc376dd7dabaee9407ddf865
Date: Thu, 13 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786600233
