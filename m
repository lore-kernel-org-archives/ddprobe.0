Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F56DDDA9
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718420303; cv=none; b=YGDYlkkUJH/py9MhPc7dEJPotGWPxFxg7BilRHjYdRO5rug0CIMkG08xe+snEgecqOlwDUOJVMgNVqEDbmSYCnghUy71YwotSWSrAqttOXzjWWkTSzpvTIH0Ds5fGzJBBKTW6dxYTBw1GF9y+0T1t6tCKJiFn67H7tYUCMlq2pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718420303; c=relaxed/simple;
	bh=/lrE/KUS7oDsrlA2x8kinp34g8TXeTrL8wQ0NQezUt8=;
	h=To:Subject:From:Message-Id:Date; b=tkXX1A/+CciRl0fRqfFzrD+9w3SkT7FmugJGWuLzxn94bv3JgcUzuSSlJNp+ooYxiLhgxAk6XXfncmqfEdHNwYpXx8nXDWRcpCXizHkzMBNN2O7VAr+FMeg9fyPz/SHSW5G9nGxN4EFyGAn92vrKrpwGn2aDenvxo3crWW5VZmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c42RVrHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c42RVrHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D806AC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718420302;
	bh=/lrE/KUS7oDsrlA2x8kinp34g8TXeTrL8wQ0NQezUt8=;
	h=To:Subject:From:Date:From;
	b=c42RVrHCFp+wi+o0KrfWx0YpMPMv3pH5YTNdhKOrY9bfe1XT0cKJ1CzbQlpmqIekE
	 92kKgy8SCYmz3qgcLSo1MLFZpvskQeYGbBsQOc9xHB20KZjzQ8mJxeRdmiwGHmp0Bx
	 UUrtNZO2lk0RErwMdYada2M9gF32hgNEqQqeRXZHfEX0udgiVLh9O3hlM2eGqgbsYq
	 5SP2azDOlBwLVLlN1O+01R7kxz4CNH6VEBgsyTY1VULQYxXpojtvWqd7ELvwCWbDmI
	 9Sc6p06gBeJq5pV9WZO8e1ELRfmrzviUXt2P5baAGs8Mzpx/ZE4S7J58tnw2CG81GG
	 MVPZIUPPmN+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1136C27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842030277.8150.4740549292624682792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93aa848ec61035f17fd73282c9bd4c4578240e6b509fed7dc36f9cfb4ad0e7c8
Date: Sat, 15 Jun 2024 02:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718420302
