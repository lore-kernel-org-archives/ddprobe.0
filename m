Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C1D38E8B4
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778640634; cv=none; b=K+9r1HJxj8GWFHVD0xP8g+OX1erkdILaNmo/TAEr4pRBpHkfBT3qBQl8pgutmX5IuhmliSvmFpxTz+uO45OyaczXeFYZYRzDWG8aelokOfqZUnTIdUqh1DpseY82DhKYkpE6JqY2N8g740B7eLUeARBzcr5RuhAzhlBgwvigXjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778640634; c=relaxed/simple;
	bh=WxabxSAm3CC3LR3GpkOsxtkqy5H07JlrVs73Yty80KA=;
	h=To:Subject:From:Message-Id:Date; b=YnGL4zo84+MiwMc3uNBNIzsxIpb5v2x8ySoO+VnI7x4lNo5PKkI06fhFAF0dLklolG8PvcPszxzA3jBc623a6epszHNK0m6uK8mgwZqG7ERP39Eoom2mI+NU7Ab6dgF7D1oJx+HOHFaHuE1RLyvcVGonsZpsdUCa00TS+szAG5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST4V7cD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST4V7cD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAB6C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778640633;
	bh=WxabxSAm3CC3LR3GpkOsxtkqy5H07JlrVs73Yty80KA=;
	h=To:Subject:From:Date:From;
	b=ST4V7cD8PyXhRaZ9A47oAeNktTGns6I1lRbIigecWR//5osPeEouZ9zqsskT0+yHR
	 ER2XFsjVY2F7wEcbXpndTWcn6KifyJoMtFYCfgBgmUHnEcU//IRBBglkiZTcnMfU8M
	 XbSmaNomYjgUxA+8e9lc1A4s+tbZ4rIgk7OZ4VY8UcxAaxFgWWecyKvwmKsYT21MKI
	 u1FHxMvlg3ZTnHL4Dgoxsqp5dvwbAwqaU91ixpTftzDTQ0NDzGr7vMHZPtbaE70eOR
	 0yT6QKt5NFIi4uXPnrCinNtIj6oqXv4xMfQgbsWwxKnftnTGnY397/jF/U4KkUPvoF
	 PsWQxy/7c1dow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8988CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864063374.17844.14330463259731885957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c66a4f6763ac20e5d14ef0b4a22a99ce94ab7c7226ce81719b1f41a7f38fb52
Date: Wed, 13 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778640633
