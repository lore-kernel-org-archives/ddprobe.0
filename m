Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651B0139F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720492583; cv=none; b=Q5FpLzkKligHpLXM918Ue1u1+RwWs5Wqy1SZcDSxKKQJjUr3r7beOxkv547op50XwSAZWnRp1dtb1/Q6RD/sZ1JxXyT7yOnPTar7ItSeeeGwp38o2dB0trPO255oe9xV0UzQBPpZ8NP7zNBe4MAY7TmRph93XSamNzcvswNBVEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720492583; c=relaxed/simple;
	bh=UDutI7iyziBOx5+xOmg7CoKgTfq3e/zZJFdcoCKdwnM=;
	h=To:Subject:From:Message-Id:Date; b=fUC4YH0TM5CDciRge4OYPA/wAMxufeCHZbCzQ2xm4OzarENipLncu86GW+SZdzYHrKs3PN+g4XHrkrv+ALjj0xZX4lqE2Gtxz7s089/PW4QCO/0bvHoh7NYZVdWMVzlZJirNGnFbK8QCCqEY9ki3lTPmSDiQIx3Qb/prnfqpslM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7c0O0yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7c0O0yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE924C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720492582;
	bh=UDutI7iyziBOx5+xOmg7CoKgTfq3e/zZJFdcoCKdwnM=;
	h=To:Subject:From:Date:From;
	b=T7c0O0yjZ60gpRi5pMBEhSS+MbmddFi8BwncAD8pYQ9HTRZeErXACnRH1KgS5V+9V
	 Zj+LfxZ14fo+cRv/G7x1YTSps/8+9kusiuaA+hkMKIEbwYdPvJ8Ruk6YqrhTevd977
	 B1wKo9YtR4IeMoPerXx7UpfdNVvtR8vR8EP5+I5B8E3onv13eFdMkILnuWX2q9kNwd
	 yNModpHyvg6T+lBl0HQtS4d7eP9ZhwNcCUKcXwwy3meIlSJ33Z/w0/ZSNbU5olBKTI
	 L736zsyghDz0/RSFv5L2kFZzJgBRwrWglRI1mlzUQdEMiQyxcAC4uRpS6RDfma3bxp
	 x8aK0TCyB4Btw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7090C3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049258280.13846.2503079996632980772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8350290ead5d20c7c93446c64e651bc5b7e838abc704d284f47eb5885c240dbb
Date: Tue, 09 Jul 2024 02:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720492582
