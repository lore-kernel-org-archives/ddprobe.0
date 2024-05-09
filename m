Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD821494D2
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715244743; cv=none; b=ky2MHiCc4ZyCOSlxZNfS1VXhguHNtYtYd72xG4gwJNmmcEU50nU5hF/i9Ih/pIXxw+KPzvEV+Kz588voioRYR3+jO6DSWM50B9KIbm4t79PCdfSI9McBPe3/B+ROekZJ/2p/f8467w2zsfZ8VZNcZCOS2sb+gjmnE0B9bAz1dp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715244743; c=relaxed/simple;
	bh=pu5Lxfx3HUb9iO40GOqK7DOVR5IlTSFdOtmkUf2PtgA=;
	h=To:Subject:From:Message-Id:Date; b=sGme+7fuMLazgpW688a4B/X3UUtoUAGg0dgSEt5HuSYLpouAdkh9nExtlpiHeB76TE5cHJQprJamK8Bd+8wrsALiQTrHyu+zf9MlKisvOfLySIexOmRmHDJvTfc3iPGlb3F/Alw9R4S2un/lAhbPBVBNhgDYlAAKDb4pGqBSYaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EREKYboE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EREKYboE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFC2C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715244742;
	bh=pu5Lxfx3HUb9iO40GOqK7DOVR5IlTSFdOtmkUf2PtgA=;
	h=To:Subject:From:Date:From;
	b=EREKYboEvhkJafwf66LSnanJfChB3k31/pQbGjSsmRi9vJ33OP51S3+PRUJ9sO6HX
	 CAWPToUjgXJPa8Wv90B14DOPa9t5aWaB2nPltG3vszWiFTAyqLXuahRd6ypLmLNSP9
	 SCwa/bDqqwkIarlI77eNDjiJDc1AdA6INUI1PbEf/zxGAKqWTdkgPNX9gh450b9IcE
	 7BoiqrTHcaJKiG+4hlZ/K8U8vdneDsn23r+zWnjgdz1i7LjwhRX1XsRvsVslhMnh2c
	 INs1rRj/nCvAIQPaQf4kPeTxRSmEsbJwrcx8pw7W25fBrZvj3E0v0JzMNcxH1Mv0zV
	 ynpD00zWMazzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A86C25B74
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171524474281.2071.14947391639457693527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa99b635258dcdabd139b10b467358eaf4122f9dacb97905a6d304992536885
Date: Thu, 09 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715244742
