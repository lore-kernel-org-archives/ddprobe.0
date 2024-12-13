Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB6F1DFE08
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734102354; cv=none; b=GeGRJ/Sf/cjKUtzGQjhzsB+JzRf67Ls65102Ev6FKGDOUrAmm5otxhaTJuKx79xbCYUIMA6E5k+WwuLkWkiwu3oTme4ztDo5+Yilrut1+lh6LGU8o1sQzJWHzKev6GEN2WDztBMearjHKkWDUwqXKM20y1O5gDmt9j/BPVMQjNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734102354; c=relaxed/simple;
	bh=rY2T4Jo0LpwY2oPGcmj38L1pZd8if15y7Pv2y0w+p80=;
	h=To:Subject:From:Message-Id:Date; b=s7z1RFiPG5RXOkhcT8QC4NQAU3bXPaGEMRvBvf0cNFi3cRGqZDCAVCm1ZVI8nEviLqXpHSjeykqQ5vCUO2pl+4G77pWwRFv6lL+AG3VSu4G8qOnWB33QPplNDww446ZhA5W5m/wJILEZsGKLaNr32lDmVVVngr1GVpwiloWA0l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjICxSpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjICxSpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF45C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734102353;
	bh=rY2T4Jo0LpwY2oPGcmj38L1pZd8if15y7Pv2y0w+p80=;
	h=To:Subject:From:Date:From;
	b=IjICxSpJKyinssmZINXaKrZ6vGSYS5OE3xl10kjwsvxgFRoHJFuSkg1vbGjGLBPQu
	 m+O7ZzWQ4Vxz6IT+Oy22p+M5YnkbqnO8OD2PpCZz8R86UZRMkpDgHL4VHE6Tc48gzM
	 pQV6mWNp3rLtS23Lw8B16EGJjaIXS4gIB8h8zq66/Apge/+b/xJlemiqwCcNtdPO9T
	 w4BE307n+7Kg5NtoLYLeQH50Az9CcnlLmP+XR/QyflU/LBee0hR1kOhoTh1HiLdpUp
	 YhtH1OdsXNFiA8YHq9VeXe5VY8sOp80MixQQ/reqQJePfq4XJZ9URWZL5IArm8/t2e
	 JrkTLKlfGsi1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D91E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173410235367.24782.18336174303719453563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e9a91b07c2045d1267c37622a07bca180dd68adcb61c844bd4b45a2d752662
Date: Fri, 13 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734102353
