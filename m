Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A781EBFFD
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725462954; cv=none; b=s1c6uzuJEPGrqrdNTHZPIG1l5o3LT77lBsiHYqg8hGx1SsV6ljFhFVEes0UGswPJG1GtyCaJXpX4H+5NQa+YClt44gYeMReQbcZD4+gKqNRsbXgW4aLs/d9lJ91wke+WYh5Yg9yteE0Aq1CyygnmNJb4VmVciHNvQ6ZjkBVpRSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725462954; c=relaxed/simple;
	bh=W98kJzpfQoWkM1g2MZQDomWyqLtzk9boagPs4ukO7k4=;
	h=To:Subject:From:Message-Id:Date; b=SIBJj8WsRrJEvWV/ehClg7cNlSW6AY1SDqjJ7Us2JJFZRX/0OY0vkJs78we1FqRpQL5fF1sBRnRmyoJE4In9Xj9kZiVVkhX8zevbtGXE5EUpv+6hhIf1sP1EzZEUbApOsKgRSnVce4KGvYrgj+pShfvSwP/ipubcktTd6CeozFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvk/OZ18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvk/OZ18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2DAC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725462953;
	bh=W98kJzpfQoWkM1g2MZQDomWyqLtzk9boagPs4ukO7k4=;
	h=To:Subject:From:Date:From;
	b=nvk/OZ18uORSJy2ynS86xFTrZLOfkGwNR1Fcxxt5uyyVYQFBbbdbbmFwtIj6kgqhx
	 Xk9v3XF7eddHf9nF+3sBJWjIzeCSaINM5hNUIaQc3/j3U8U+R1DlsFTguHiYmLwaGR
	 ZvQCVTdubtr6VWaqLSb39jDV/XpZmt54m2huTo/UaGHHeyC5i4A0DVz13uAVxj+EC8
	 lTEd8uUrMe+3dVupeXMtvRxGMSnrNdbZxOfERZErajz0gcAua1N0TN3KIT+hJZl7My
	 8QYDHwMv3Nw9lMbvPf5Nn4iko61oFpAzKEnrc9sz1fJxiylV0FQE2tSB5Mn24CD0Zh
	 +ekLv59YVMI9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ED8CD4853
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172546295362.29671.9970876625127672697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602b27595b813f6aa75fcee3ee9dbd2b75f5d632b6a1d751870f438ff4e0ddc8
Date: Wed, 04 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725462953
