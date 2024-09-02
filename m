Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D47713C9C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725277554; cv=none; b=ZjBybZLPBGMHoVqD+5WSjyk+vDpM1JBAnIARA0b0x/s4Yq+SOK1gL9HnKZuYWL81PtfmaPOfc3/t5MnckVe27dTB/uK33F/FNu97ZUxvgljEsaWe5r7nmk0blJcrKlXtlQXuGoR0Df5K5solWioOXS/EfKC9v+dQxJkvRbUY3Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725277554; c=relaxed/simple;
	bh=7E7L6Y0aMWmcDj/CoYyouw1VszD+zRSq4yrHf1PbEzQ=;
	h=To:Subject:From:Message-Id:Date; b=YJ5hOt0sgNhGihBL9A1HLhCV/OKDNIqRdPmCBqwPw+Qk5j0/bP7EdxFBsZfD9jbUSRpXUSin/coY3S8N5fuNFfKSk1tN0v0LuoauQutjP/gkpxRHJzOBqfAfv68xunhHsvFA5t+6Ny0liqECe7bDEKz8xAiHgsevRnKDDjRaliA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rso5SLtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rso5SLtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25E2C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725277553;
	bh=7E7L6Y0aMWmcDj/CoYyouw1VszD+zRSq4yrHf1PbEzQ=;
	h=To:Subject:From:Date:From;
	b=rso5SLtrPNnNP3+7MXRJvPDn8Oim0wWFxTK8xv2b7IdMq/Nx5vO0DzfrXOgQuTQre
	 4G9MhITW6ubS0x357WWfUY1ICmjZOlLWO2Rg2ywRH8FpdcbSQLnrfc74jerntrk9Uj
	 OQlB8Z8lmimvP3juHHYpmTQxVRStgWaUOPcrLeMEDr9aUwDodU4906dau7Hv9dOwB/
	 y7O86BASUsG1DjxMH2PGAR9YRdMY12Lmy8mJXVFb31o8nhWvqNDkSL7iEfMEq1VB/r
	 dwRHM8WnyW+TqydTcts8oDWkSPQZGXz9nMqrt5lKejbLK2id8EEOTWvUyIwPxLpqxA
	 H9SZPKiOieoVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905ECCD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172527755358.19946.3252751967786608774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5722d8b0dda0e48718b3b9e638a49c8fb48d91e3649f1c5713c5391ea1c21d3
Date: Mon, 02 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725277553
