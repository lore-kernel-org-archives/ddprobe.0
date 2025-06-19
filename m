Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B45425DB0A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750372194; cv=none; b=CUHYOlsydEodaiE3Nf7ybsSR9dpjRzQaakiewJg116qqUGcAcq517PR3axlZcpdY+Dh9LZxsFaktaUZcuMIw68+y8louf7hpiWVQUqQicZMWEbt4+5f742WX+/Tiwsq11h6EcPqD1LLoZwhZo0+VNePSpBOA09ZWcJ/iRT9ktoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750372194; c=relaxed/simple;
	bh=d3aBQmUHRx3eDc0Kz/Q0hlwSFwk9ULjzqw7YsAe/6kY=;
	h=To:Subject:From:Message-Id:Date; b=SOK1oYXge+tg0uCdDxK7WYq9/WabZc1vVIZVCuLJPfmUJVsz14vA/Q0RdriRtj0FSWh6x1ubCQ2ySZva3Tz9c0+Dy3Vn3BEALPRQ4cLE/T4BofgG9QZ61QajkWkXP5jiKRFQGjVNNELiQi1Wld4wFyUBhbdKbWqfU260KV+OSvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moO6b74L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moO6b74L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0033C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750372193;
	bh=d3aBQmUHRx3eDc0Kz/Q0hlwSFwk9ULjzqw7YsAe/6kY=;
	h=To:Subject:From:Date:From;
	b=moO6b74LK/gKx3wyvYyVk42bIpHwPQuv/D2hnnETaZ8AZHgf77R6H/a4efi+hEuEQ
	 TS6FGyT06KR/G9AyI9M0rmH2vT6BEhlUtD6lKtfOyzGo9kW/W6fFx29qQ5BDq8UdI9
	 Ticlz4uNHOg/kIMzVJRS7Nb95IoPC15Ojr8LHmBNOjfZTKJ+i3tPg+INX7A/RyVN80
	 SGoZJ1AbhlVvUTa6/Gcx09Z6h1NX/JPV74LzgE3gXSwuUSKMBd6bFMFYh58o4Me68E
	 fe4H31zj4olKerK2DgnnLsojGiLnh7USccaF/LjU9f2CNvefetarFzhRzN1pxb3sOr
	 G32xv/+S/5ofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B02C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037219357.31451.17273469404973038432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e4cb04c1073f847858ea4a5648da77d7e133dcf14129bfe315c7b0d7364a57
Date: Thu, 19 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750372193
