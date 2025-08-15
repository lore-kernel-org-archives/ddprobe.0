Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C81E17A2F6
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755300596; cv=none; b=EW2PbVidqD0ELHqQ4DjZxKUJmXuAsKN0fO4QFWCD9QkyJYvFKP2Bt2voxJf1HuFufUdpgdns5r9PdowQOI5JGrTlpoQGheWaQL70sizj2v5T1KcVLSOGV7n/zLQ+SeBs3LWxKTLZY0gLvm/ONdQtuWbm6uEL4gKrVmC4S2szI2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755300596; c=relaxed/simple;
	bh=UJyVpN4HxEPcmxfnf3py4ONsljpMiQuljPDZ/jDv7Bs=;
	h=To:Subject:From:Message-Id:Date; b=HWtkMMxTMnoMQPwccygl+LPaKmEBiujbAlpHDlULTGz9rBFU9E2IWzy/O3hTJPy/bkOxpiock3hxN3kBEr+ywc3hC5Ll07OvUhtLiUVSKeYKlJCf/jNPySHiMVnLWSkNV1TYZusGsvlIgFBSC2/rfv8Nc5e+J/qfIGxuvdZMYps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcsGjrHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcsGjrHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2D5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755300593;
	bh=UJyVpN4HxEPcmxfnf3py4ONsljpMiQuljPDZ/jDv7Bs=;
	h=To:Subject:From:Date:From;
	b=mcsGjrHm6mKq5i7xtAFnMeLgZ4M0cJS8LBET/H29JY8klQ9B4LzMnBanseV9Y6MMf
	 3rZWI1MFK1xmM9mdvb2+D7k1AWbmg3sNH0NYXriWyOOJshzNa4TXp4h8hkxrf535R4
	 Yls0tKzloIjazQao1bw/b3TuspzpztAhX5h2oGKM4DDG6G2nOVl5OZDeiQIk7huWr0
	 eVhhF93xa5oUm1ogF6BxG7mipMD6oWIjg4DxZGKyrKqoO/8BJxLDoSSwZtrjro2Gzy
	 0fEcEnCeF+4ns0scfPFAbgFRDN5LaZNzeC+04MWuzxpMbFQ7kEQrzNx8z3cKTdazU/
	 Jcb9w7DQukODA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF93CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530059358.4932.3548533880319754442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befa0491e265ea40a38835757851c497e7845e67456ef9d0ec011cca7e83def0
Date: Fri, 15 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755300593
