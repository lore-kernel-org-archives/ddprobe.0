Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8C616726E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 13:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719323603; cv=none; b=K3VgiiEL+qYJPZICAsfmgGagmvsX7/Ds2LhnsACkbGgniOe7UhP1pbeQws1PAaxI9xrPEBb71DQnYTM3530tuc0FDUNtglfEIFDPQC5ii3nNoWyq5KKwBeGBveud7A8KTd7EaFtFhVoA0Q+qhkJvyFhbevoF5AHzunH7egMotAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719323603; c=relaxed/simple;
	bh=C7qJrDGdOTFqBdlvPrT8WoJF7o5OEORXadqF4LR3qBs=;
	h=To:Subject:From:Message-Id:Date; b=MsK/zGx65Ht0Cv7PGxH3tniFUxMdgukU0m5no4+bpYeVNysFH9+gQfw1DPRQ8li2xwtNkZQf7uawYo5b2049B3MuYG9KoaphCU1UOt5GnMbuLBFigIrsKaoGTWGRUChb1WZbPlF4gTvA8H1UCalvTCELo/HaUyIeIt8/WkbA2n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkwo5o+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkwo5o+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA285C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 13:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719323603;
	bh=C7qJrDGdOTFqBdlvPrT8WoJF7o5OEORXadqF4LR3qBs=;
	h=To:Subject:From:Date:From;
	b=hkwo5o+cAFtxFn/0+TFmR/DUQ25RMv6HLG0liLs665NXIyh5TcRoboV+j4yzCDP7q
	 f/ZOpKHkGYzWwDOKhceEwYGg3aSE2/pl5y8/XmDRJR3rhA54I6x3SRjMleiz8XGYvw
	 YDw4A/S+WHoLhGEvr4NE3LVIoXEMZLLTwrFlK3iYTaaJD2h93CZkChgpxevCkzDhOG
	 s6IjgBNHCMAGjMSChuPoeSs9zJmBCMkrGTyM1o2k+IZyI66MSSn90tKS97cG9cfN2P
	 Oo8haAuwJkeFYL9BQUPAPjKTIb9lQ7z70O1zJ5znjgfUdxrclfeJBdQ54pICtpQACT
	 kkUb7Nj2tLtIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D039BC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 13:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171932360283.23796.5859464471036556703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51466bcba772da493e4d16fac66bf7ebcd84669cb527786a39ae572373659404
Date: Tue, 25 Jun 2024 13:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719323602
