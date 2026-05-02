Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C98EE54B
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777682254; cv=none; b=EMCLagZzo1waw12aOgH1dvgGkuwrQGUxS03l7aIoOKi+IX/K7DYei39KC9fQqPYYMiOykH+Ip+1/XD4ax0H2sqVrKxM3PnsIY7LKDq66AiM+tLsUfwbnwsOnyk3CczrnD2aqCfV7w6qT0RgDghrdZqXa64iEkbnHC/s/xRtzB4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777682254; c=relaxed/simple;
	bh=8UFiO/8Z8CH6LK8OJBe+U/XlxjphARFiDYDnhlvRTkU=;
	h=To:Subject:From:Message-Id:Date; b=ZFpH+OW/Nb0uVp3vANT6Hny2Be5Sw7dYbNMjjv/rivzdN31lk16bww8Px8Rfsqe6F2KSXYLWlRQqkt9hpr6GiVZRJUAcCoocu0ffdn8/mVcrZha/kqm+b1TMWEyY1FD/XjJgAVU6HHQTWjVqipGhHI1n2mmLIdxiETeUQABf2qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smn8TAdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smn8TAdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C2EC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777682253;
	bh=8UFiO/8Z8CH6LK8OJBe+U/XlxjphARFiDYDnhlvRTkU=;
	h=To:Subject:From:Date:From;
	b=smn8TAdJeiksB66eqF7pLM2RZpXR+Q8HQf9pCrRewzxwiwI5im84vFGhK8DbSFT7x
	 YAI33nIQilsOY/vau/LCVnHGEpySDoOnrQjJJyxKk5t9neiRsRvUT6vFTBAmVqCHp/
	 dZr6Q2Zr5Rria3V34+HP86M6TLDlHdyAdPO7Osodd0i5x6Yv83QG0nF/1RQQ7Hco8W
	 sa3ynZ09LM6QhgeSZHF59VKYW9VfGOx6/lEwcErFdhM8d/NwcqO6YHwjarmvo0RhIQ
	 bnx663izgbNFGF5ybr4D9YZ/cQdzs72+sh7JZWt370RuepbDotp4HXNErCL+qZsqkm
	 r6h70IyT/4URg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC4ACD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768225368.25943.12510502922772919339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c400d92ad240f5a0b56074074dbf2ac3d352b6931ef0affeec5f1ef46a2aba6
Date: Sat, 02 May 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777682253
