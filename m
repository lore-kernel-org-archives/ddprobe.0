Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36235137E
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726929954; cv=none; b=QP10HpQEsSfNmAlQZv+aC5dvNJ0qdoR4rowSRt9Z6uDxojQtiQ+cJGsGxgFe98XsGpTPTLKLpw8LG3u7nUvnfAexaqirsCmXhXA+R2o64kGBchXIThfbPaHAfEAkXGPgqAhfo1CYVyrp3tAJyiu5ZQf5VnI28idbh1DndsiRuTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726929954; c=relaxed/simple;
	bh=q/hXVjNvnLMIJaxANiXK8jp30a4GzI2uT4O8jFSt37A=;
	h=To:Subject:From:Message-Id:Date; b=YKoBt9icKMESuERx66EGzkO116L5LnzZcBD3rN9RNkA4tKFqvA+kugI0XeKuocL/0qgIvCAJnVNGCl551cXgEe1gkW38E8BKaDooLQ88RzUCWiKv5nU4X/+9U/sTBZh5G2I+XLsJ8YatTqSAtNPIbm449ZB3yFyqrYua+AD1Jng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYw00p4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYw00p4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A312EC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726929953;
	bh=q/hXVjNvnLMIJaxANiXK8jp30a4GzI2uT4O8jFSt37A=;
	h=To:Subject:From:Date:From;
	b=hYw00p4ASwyqQ+1ALitn5kQHV0yTgUEEHfBL4jKn0w3Iedv/r1e8uoHcg+A2RqPIJ
	 AyxTLaS/9d4MasT1CIyQnCdy9AYkCPyXKJC1NiExfdaDASOu5S35OkBZL372UH48Lj
	 itL6xT7de5xymd5qwr9NGexOe/NyMgT92a8pcyCQ2KxMKBnjX7985XT9TBnqRkt2FR
	 08xVIndPiRx6RQRZBtwC1gahsPvXGbqItO9L5wBdwRt+OSnE76Dk3K17lJi23PjF6P
	 tVu1RzfpRpIU1hE2b8NMQUmIDVgrQSsGHVjFY3k8kyYMo3bNN3wXLrWDZkhTAPgsqC
	 xC5SFtXCa9enQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA9CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692995358.19768.10294051818899176784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4310b6648041514f0f60cc9d52e9aca7c6cabee6535e7a560dfcf75b6487eeaa
Date: Sat, 21 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726929953
