Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CCA1531F8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729985754; cv=none; b=QcRQtWfh5R7GOEch3JZawdpJtzCaft/BuvfKpUJgsh5vjB44io/dt0YL/9fT5Yxv1CL0zWF9kaSkvputa/Bb3eOzhyVS8QN49eZij/bxDqISf7ahL063t5BmTD3RBr85VHGZO4/oDY6EvcO6h0z1MCBmWXVfJP3WBxAdYlsIFVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729985754; c=relaxed/simple;
	bh=x1NFFgicfTqopZf1w0P1Zt3cnAJHYV6iwp/LJK10z8I=;
	h=To:Subject:From:Message-Id:Date; b=a7FspDaMbSSHwbgJ1AEJ7cwR03rIuM1wqVgW3E6YuiO7CJp2mlY2QX5eim2VKbl986TCOzq79xPujSuw7llUzYBM9UJPdB0/FgjPpwUfXYeCPM0vYYLRz8/svUbJdRmlxxBaEoqXCeXg970WZrRJ/+eGdTB7fdsimYGYYoAsg1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=up0AfuVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="up0AfuVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B743EC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729985753;
	bh=x1NFFgicfTqopZf1w0P1Zt3cnAJHYV6iwp/LJK10z8I=;
	h=To:Subject:From:Date:From;
	b=up0AfuVIcFY/F31IlrQcjeOkle+durtajrXksd52ZkND5nz4dyJBFe+neG7a+xbKF
	 Y0QUFJA2cdX9MF3O/4+bqa5I87CPs1twUe34qRKy1BqPJ0P5XcPIFSJIYgm2FIUM9K
	 ydeTiqzngOVK97FDt5LWSr34U4hRpO0PwxHFs+Ft/nwMLA7hojVhZjHrBs03VyreE6
	 +crJqLADAAa//FrobkyZrr/MegaDAQ8/MahWfJHSZdSb6Kd9UBSO6XxkRegq4Q/MqC
	 7h5QfDnKBBR0uHLO0hdifQhdGuapnxlG+/6hfM4OCUma6LB+5/cVIEjHrS8o15svW8
	 MzTmKfDKzT0cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D716D10C07
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172998575361.25845.15487851806520579023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86507f3f1f847f039764c0555e6ff70593c79be601549423bf1823a49c90091f
Date: Sat, 26 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729985753
