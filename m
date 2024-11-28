Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3513B17758
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732755354; cv=none; b=UK00BiJ8mM+mak3FGO/G+8ywM3KgKI+t01jfJpeFs+K5dp9Mz5+htu6TWK/mfUkyaYHrugSJBo7YYg+1L8DIWq3FIQPOFEI6aoW1FbFPWO5FSgEGvIrLXi25BgOI0MIL6ytJXE7vm2LOtki9ws4kmm1rZS1cIwtex71GCsuXB4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732755354; c=relaxed/simple;
	bh=L0hfh0WuUkgkpup/gdQWOZjfcRMwIHyHXiP3FLNuKKM=;
	h=To:Subject:From:Message-Id:Date; b=buPuqNdZD8zyYVAnbZxl8eTyA/PIB/821xWP8jq4uL1iBXQgv2WSVKd4Qz9wd3W2rIWUIXhX1D/Q3G7QQfOIncpLhEFGQzvslJIDgvq1oKMIGMUT4QE1awcvL5JV8m26JU82WQYyxBcu1Uhbe3mg3533fQLRyS5aVYKBoCDpfls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6LBs1JS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6LBs1JS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA613C4CED7
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732755353;
	bh=L0hfh0WuUkgkpup/gdQWOZjfcRMwIHyHXiP3FLNuKKM=;
	h=To:Subject:From:Date:From;
	b=m6LBs1JStUIlzpO2G9Qb2+VaKNYsBMF756iYngnbo+fdcrSHXIVXcpWWN3RXyKuni
	 nz6GLRRnvkFOYLW7q5pnRNaM6lr4INLWlR7nY/hWIeFjoEj7mZleflDCcR25HtgmuS
	 JKUW+kJXAjrTEB0LSgfHkeR2MhF2zyEezPu+PdZdv8dPPLPtMDvz5dJgeUU2VHLIV2
	 dmX1bZwGSxrZfIGYlPfuODQZpcEFN1uav3hWXLPIv/NrdPXPa3fjkJTx9qLAEWOuqJ
	 yAlvPkIdwGW5buadHwlSI3kcoq2mpk1rXen9i56pingKmq32pzKMudaPfUUiGXO0+p
	 qCeaG8AxTpHTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8F9D6D250
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275535363.25888.7075074395173711545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c15b99bdcc64d6c3d18cd91ab93794fe12ab7a5b4813502ce3a67ffab4e3921
Date: Thu, 28 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732755353
