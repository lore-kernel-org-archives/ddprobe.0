Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D41A3002C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787496634; cv=none; b=OI0IFTkfERxaxQNttssrl45kmC90e7qkzoAlascXyPInRiwRZIosbsEpU/Ws3Sm+8OGMDlN5UAgpane79S54YR0ylkUtu4V0UkSgkcem0B5yWfudBaJ68n385tudiqTaPtpo1XhYceB5dzKL9wGDXsrANa6TGhv0dnpZ1R2Emq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787496634; c=relaxed/simple;
	bh=4ci1QG2+2C3ELiOWPnpTlX4KFStORXEYACUKT9Yc6a0=;
	h=To:Subject:From:Message-Id:Date; b=C706h1xS1HSDYLJBouiiq4QLKOwuTDI3KgbC5E5WQTsV5FE0zfy+7yRW4qDCsBhlNuO/qJQ2sW8bs2PdP/n4rRfbQDxV9OdVmzbkx1I+qoaAkTjGTjO+cANOPoQgyOKrpGzd2OMQL6dLXIB0z6cpsgZGhLwdCxaf5u6BlMb6PXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hq/pE3/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hq/pE3/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EA6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787496633;
	bh=4ci1QG2+2C3ELiOWPnpTlX4KFStORXEYACUKT9Yc6a0=;
	h=To:Subject:From:Date:From;
	b=Hq/pE3/nzE+H83UpWFEREEfCXY3RTzKpVaWNfcC2IDnLRqpgYmeV9wtqgwqduj6MT
	 IXCij4w59pNQmgY0dTBD6cuYDndADwyLUt8mK97IqEk18hlkp4whsD1FGOK7dcxbAv
	 a//CKhtgCsHfRuuakuXszI+Evo9x6qYI8ICdeMn4Z+z6fKO4yFvwil3xt62fvOBoY2
	 Gy8jhivKRkOgawsG2RCEjBVHbq8MSq7sBufow7OyFJDTAxM4sN1muzZZ5DJi/f/dlw
	 g04f/4/S9FkQMQAEyi+TjyRU6HcbtAE3/5ikNZQLH5xuPr6t6VR5kuQ3ysCqK7FmQe
	 KPx0safRMSmQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA19C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749663369.19383.17589706162563771217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8394c1952c7e42675a1bacb64d0126d29bf3befd340faeb22372768e8f229939
Date: Sun, 23 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787496633
