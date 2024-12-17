Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91211F3D3D
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734440153; cv=none; b=X3hxQ5/CROotmlDYnWqWQljWboT97wlKJLy1E1PEKKsWe4Ip0GlnzuYsf/TXMsGsudR3h++gKsHp9pUFIeKMcwgK13GjqALs5aO0/FSnpjRWk1OjuOUwj5W60zD22ik+3k/KcUC2nrxO2fDy2KPpLVvJPCrPYVJAJtzH2LUfuUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734440153; c=relaxed/simple;
	bh=GqN/nZaDs/tLYHU4xGnAOYsNy4cyz881hE/71TQGwgs=;
	h=To:Subject:From:Message-Id:Date; b=dWLT65nmG1UuvLW8fgStIBQ2qAfB17Uqa3lcMPMgzFVWQkKMw2cZtBU4hp6oinn6Cl65rNdzMHLbkTOimOPIx86EuVlh0AIr5qCbwzt5WVz2mXyXktQ6OD6+MYxn1/56sRFKhyxIKQKJOxBNfqaufATn6UxhKEZhURgcahmO0EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6HN338P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6HN338P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5D3C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734440153;
	bh=GqN/nZaDs/tLYHU4xGnAOYsNy4cyz881hE/71TQGwgs=;
	h=To:Subject:From:Date:From;
	b=b6HN338PRsdVWS8+dXI8+/R03sYv3wJ/Fj47ePWfBs01e0LEt4IpK50/UiM00doi0
	 Ml8cc2yD99nv92i2m/5Ic3afU5M2Zck23jd4WI3tSyiOESUyYovTpaqBhqlBWSv5Ue
	 Imzp2v9x/cpbrHa41jdnqGDric8pbYy9+ibcbLTbHTzLUAzvj+R023inUGwgMUuwf0
	 l1RLtxM7AeO1+dhPLxC1GsHOMPqxZjHZWTZGX8veb94IdPQtlC5H9/wGu4Ft8CoWos
	 plNxncVNHaEWifvIowhXCU7ESWRBjmg+wSdTETyIh5DhKrQSRao4Mq6vqJl3PF6cqt
	 YaFfojHfRGRvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA51FE77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173444015368.6375.13723594011737891274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c493ffc9f86954246de680fcded0a455ade74566a13d40d3376bab6f6d203e3
Date: Tue, 17 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734440153
