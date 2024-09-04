Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282EA1DA2FE
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725462354; cv=none; b=KnpIKB+DRiO/9No7TtwZhO0dQYpMUMI1Dz6EjXxXOiRsBpRJ+sSoBcXLxNKpNNdeTJAcgjp6NpNBIYrg+angUCAevroPqrgeraxEuGIqTRqzP/+NiDgR0s/t6hDIxKKenXS1eccrsmFwUQe7JdZs4MQWJcqHsOAsmcWwKlawmAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725462354; c=relaxed/simple;
	bh=15hFXTegRmLCH5FDc4aM4jP4xYl9LjWFTi/kggrPQiw=;
	h=To:Subject:From:Message-Id:Date; b=jFr1Dtdm+L0eR8dhDaXktJkxJ+d7Rhnehfon7IXCrcRze/RRpi5oAz82ydOprUd0qVvzyUb1QAnZRRqbft6cbwbTzlv2mRj20tIu6cNzDOnMV61fDX+oyAGLcsHaeq3bqobHSBK69PlYdg39kaHdDal0iAv+PIxT4xP/R6n1fCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENu/QBaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENu/QBaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF237C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725462353;
	bh=15hFXTegRmLCH5FDc4aM4jP4xYl9LjWFTi/kggrPQiw=;
	h=To:Subject:From:Date:From;
	b=ENu/QBaw9JEQQRkMhxZQ/7UQlDKsBrbYRft1h2gRXEqRFDzwzu4upt6Paa6Eazlix
	 hubeYjIPXQPGNNCZmSe+YXg8gImPQ8NTF+qgOO1sWbti14uidjY+lhrbHsVsFDF0dI
	 3afA6A/bRkzeOHEo1kUdILjf24W8DlTgqrRIEQB4DCRH6tyXRCxKgh+WRP59BI49vf
	 QukGTaUDTAuCd2LZ/DZGmMo0pXCB2eDNe3I9e2iwf+EqR991O1KB9fKdMJXknK/D4p
	 2sNTIfXRn4PKaCO0KewNX6qaSUTxHUSkaB/JMNasSKPbzboetWZBg1DGjPCcsH8Dow
	 KSiSCmghEQj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EFDCD4853
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172546235361.3747.17449566643282373332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab765804f2fe84ecca37037fc57f47b1b1a357c315850281bdb78ec72a5053ad
Date: Wed, 04 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725462353
