Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B7C8BEE
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754857195; cv=none; b=fako4RnNdf1LzrmDRsjyIM7JJLfi9T7jXK8Boi/0S643jebsz6GYAyh+/vDi/70vYcv8M8yo/WXp5hqUdkkwP8K2si8PwRvYPVIvG1eT3Y61W5k81eL+jwB/teGY6jnEGtupSuNhjjsTXbBgwUUleRCIVzpTGBwwiInu74eB/xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754857195; c=relaxed/simple;
	bh=sSyD3o+VSqPRZDMInsVdU/jyP39WVBBaKAUHKL3Eq6Q=;
	h=To:Subject:From:Message-Id:Date; b=jVnHkG7t8WH6zHPdfM23GYroFkfVwNfF4LmJH/XFOGoR/rZBvPGoXScjYGVzHDYuStjLY+fDMg+I+pvkCLwBNPRsjH2TOZICA3FV0zvncw2r20hPrByEViA4v42OR1jDuDPKwrGZDpuunoZq3TD+2h+rqlF1jZpZz5UEGHBc488=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfz4CUlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfz4CUlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754857193;
	bh=sSyD3o+VSqPRZDMInsVdU/jyP39WVBBaKAUHKL3Eq6Q=;
	h=To:Subject:From:Date:From;
	b=kfz4CUlvikeUe75PW3KUnyfQhRnBZVXjQ77oEnoQbQmbz1mMCEQlkgioH57OONHu4
	 Zz1l4/7Dmr6BtdLGxWt2Zmydqc+3k4yUCKs85cRX/8IXNuT+pgY8ScE8Wb9nPWL1p2
	 3VlBE/o207Mb/qcFzowOEzp6Np1BqsDj48+lxDwKeHjatSvXxMq+TyaDrNiM+MwtnI
	 ldmw+7bRpzVnjo62VejRmwzEPGtcNlNE1Q1cSEkiggO4JOjx6hAbKnABEQzqOfRrOe
	 rpkHcsKW4TZZepCKAJC2si1BGHZPbdahIJT6MPnFNxAYGrQwvB1wRHjxLFnEe29HW/
	 zQmkUnOFIsejQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E826C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485719357.12383.7564224340009219070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fbe650eceddb66a59de4f6ad0c9f97d5283046714f65c217f74a5908a629ab
Date: Sun, 10 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754857193
