Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D21D17BBF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719250343; cv=none; b=PXXE1rcCTj9qaBUdnwAMfBapaEWn1Foyi+2qHF3QSaTkuWYr88ik6HwvJiCffleHtc6ZDn1x3pWGqlOtwZCFvEzae5dLrbyD2WO9zp5j0cYADl0BuYWQnY/gWi9oUTut6IVpMl92e6Swbi/Fv3Yn3gvDfp7ZtumRx2qBfa9Qd7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719250343; c=relaxed/simple;
	bh=KhGp60LBqeGojMtdrmLCr1uK/qxpW7wxabAcSCZYd5Y=;
	h=To:Subject:From:Message-Id:Date; b=gWcDKJBK/n7wK5xncGyX4UvGdtHuEo1996SPNxPWJilwiplRhThd9aaQK02yejKabf109hkmWPJ5dl9a6uSzwv9wy02BlKrF7SL338q/veKgRIHnuGbxlPfwZ/ZG3WkzLmV34ApPj5gG+IOV54J0dt+JUdlJcyCik9e/5IDbn8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPMsSn+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPMsSn+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78EEC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719250342;
	bh=KhGp60LBqeGojMtdrmLCr1uK/qxpW7wxabAcSCZYd5Y=;
	h=To:Subject:From:Date:From;
	b=QPMsSn+l9/7L/qsGbgU+Sslsq/nsaBkV5lbywgCexa/n7VjWnY8GTx9BRPPu0zMPw
	 Cj8XQg8V/LUMQzt4pwhzzQPh17Dt8T/6y6KSvZCuHtFd/1/6udDCi413/oDszYo2Ma
	 TslckTbbtROet4XDTD4fTbMY4LNdntSQ2QihRp/oiDbYxqTOOU8Sjasw7DXRJbXD9e
	 8gv6WUesusfQyma7IA54HhM4zbDmioJjk+ftXbJJkQXb++kF6qcRe3VwV2UXlWqKis
	 Yqc+b23ZPCHUItctcIJSUS12TXRQ92Gb/mZ6NWcHIUavtFNf1JhkY/8aG17jSTYHid
	 /6od5iwlBimaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF72C2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925034283.22242.16265101505988584420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86feaeb32973f7f8e86117374f8e6d12f85678b196076301fab06d73aa53c88a
Date: Mon, 24 Jun 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719250342
