Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC0A20AF67
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750090194; cv=none; b=hIpBLafPjiiUtN821qYrt5b3bbD/wFRNNeIyVPqtuvzJKSJWZUeB7W3SFjgHuA8O+fyxE1u8MllYsMS3CGbfYoXq3rXL2fAYqNrOYqxSB+eUw5AdLwtr4UXEDrmHbhNy9uFkKujgQLQDqbSxt95OfePLYX74tFYef7jV2JRD9Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750090194; c=relaxed/simple;
	bh=ogRK1z+l3Ntl03nSP2/UxJnHjydqTUx0K4IETruX12k=;
	h=To:Subject:From:Message-Id:Date; b=kgoKMawVjivvu6Sr3jbVUhTmzlGGiRwUU6SpAQMIbWhJtrmlgsmYW88l/rkloNNY8JS1eRxOVYmu8ppaLKpFfMEedbaoo+/2Gc9rlewPSoGpaYHRkUYU5qUYnGFzumFH5jT/hMPElQMYv42rpqkkdd1QrN9kV+rG3nKYP/0sU0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYgNr8x4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYgNr8x4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FD3C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750090193;
	bh=ogRK1z+l3Ntl03nSP2/UxJnHjydqTUx0K4IETruX12k=;
	h=To:Subject:From:Date:From;
	b=TYgNr8x4IVEPXSPK3MRxuDD40zqhFmtz/aV51Ebq4/JmEHUrl3Nk3N8/vSTIHzxPK
	 Npq6yF+DTfPlL5iciwZ+WWYBzDUcZLFt/j6/fWPHQ2RNZd6MmNDT3eKjcka+QFtBjm
	 TmasrtDTzXLUtnniqPoEo1+PxQT7C+wSzPlBfdX8d84KbCAK25pLYP5VYcVnikPu/V
	 1GTijLyBhuOKOhT28MGk5ryNCrndAXCZjiExaDX3OQy20knEvQ6LR0K0TSaDl76bIe
	 yt+TKhkxLiHwrbK3akK6UnH5sZ9LqTowpYgpKzY/ELVmvNM/PHv0E1HSZDKvILM9kc
	 WrtVniB930lUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A3C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009019358.7415.14475663884078474989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c18ed4ba0709c829d67dc4529e422b3261b887ad38b028d5d95088440a568c4
Date: Mon, 16 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750090193
