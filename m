Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2574D1A38C5
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722582954; cv=none; b=ShMXNqthjl2f2+oaDX8CYhiouayunwbCCTYyCm03TcSnNKm5phsSL6YQHak/JuUsyRtsffpsW5XIDdt07L9LK30EbS1kQmyNTKHwqJszG/8MboqYhg9r4hraCuRGnDfVngDC88/0SmbcPJqoWfs5GB1PcoK2ePW4udOLnRSrcQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722582954; c=relaxed/simple;
	bh=YZJnCYZvUSC2fFMz0s182kdSrSph1aTsIUrg2xtiZZs=;
	h=To:Subject:From:Message-Id:Date; b=R0MWvqgYPrA5CUe6DKhhaWTbiPBvD2Rf2Yl/+gmX5XdPBu/nOI/frsnFRUfTPbJU7N1lm07PGYZfToauQVQ+EkyLjG8GloJSmQlNn8b6cfD7/+37D5GKJcrG4i/4Q08/Yj+37Ul0aXfBvpDFnroC+uwTzYInV2aSYgwRIJwICpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCfL/UYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCfL/UYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3868C4AF09
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722582953;
	bh=YZJnCYZvUSC2fFMz0s182kdSrSph1aTsIUrg2xtiZZs=;
	h=To:Subject:From:Date:From;
	b=iCfL/UYJ3bhm1nIb48c4PSAJbe5filXAPsVccXPd04csF/bgX1KhtexDnAG72NWmF
	 ayNXDsDj8VqHzeVfnpN25BWn4kmDyCwlZu7/nNaDcPUfKn3bWz2lCRuAITpOHXNlG4
	 ASBRIIOtbPifvvxtmG/N8H7YiWayUn5uAyc0PIcmnsaaIaOCdO2uWYVV6JdeFtFdGL
	 A1Z0oFiqV9ix8fXoGeg5COYkXTXEBx8YVfykpwc1b3HTvUib0E3Z62spUitzUEAov9
	 ujzkJxJH3bBR1CoO33EGJUqpjN/lXa09dJ/pHOE+m3a+/hlhH4KPTheFlGU1jbCD8o
	 T/e3akvjgXh3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980AFC52D71
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172258295361.19602.17864826288581347454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e0b730c21fed2a9afaa9ba3b4ecb1f7d1234c2360781b36c3bce41df62ed5e
Date: Fri, 02 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722582953
