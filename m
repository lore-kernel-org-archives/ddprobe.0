Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973D83016F7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767007434; cv=none; b=SyL3hj4Eu4bdIj4FBKGiHVg9VdUE3PYuSfkKDbWOGHz9jG3iU5gOXLMv0fS+xyrwzFxntKZ8EkDrHDDBkvTSiYJiv/PN89bVL1jxTfscqNPpezlT5D2X5+ThMrXxTbxPwS1QVMg9x31igXTy3FDpUbwCC8Y3R8PbveJGJseTBHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767007434; c=relaxed/simple;
	bh=TUVxGzu/h4FdDyvqGZ4j6sRsEGWVOIyec9e9+dMRUho=;
	h=To:Subject:From:Message-Id:Date; b=lriETu2VSYe6fuTZ+Rowaj8Q9Xk+NNcL+wwDK8r5g473gwQ2DLgPvvNLJBAitjC36pz72o5dctdDrQNBlg/jco3kkRKDfG3B9kZWglWP2A0+9jTd+KusXsFrFoEuiEDHqvvs91ZnUwMqyUOgyU6NevLWReOC4aK80y71gVKLMwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xnyh7PmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xnyh7PmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F1AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767007433;
	bh=TUVxGzu/h4FdDyvqGZ4j6sRsEGWVOIyec9e9+dMRUho=;
	h=To:Subject:From:Date:From;
	b=Xnyh7PmMeObwnOQhNmerwipVVyOB1FaGXLXZ/dInNL3ljcEa16VFR6sDMmNj8pc5w
	 tUSAR2xjqaT+WYsRo5HO/sxduOrNOY96jj0f/Qpa6/TAlSFzUPIoocH1xoYN+XqeJj
	 CgReKH6xZf16X+77e5s8ieF9j9d4FjLO2dW0EreXru3sdUPrG7lUUSXXE3hl3oaSt+
	 qgsBFgAx5nSh3C60eVmrH3wv+Tyqkey1Jzump+7IO05x7gg/hXjLfSL6LA/OURzcFc
	 GldcApBqNM0L7VXSD2fTWOwEjARJR1d/V3T+1+TpNS5wnUHV2aUsZ/kvW6twJuDv1a
	 I7iiPmDNACOUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC660D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700743364.19578.13424502337636994795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17419794d3d5f9fa9425721d10e3d140805e9429e5057958c0ab4ae34b3633d1
Date: Mon, 29 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767007433
