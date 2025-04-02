Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4271E521
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743605994; cv=none; b=Hns6sEj1WnjOKDZJASMKtbS7HqcvrYgcgw4Er1zucr/+URUwmaIlyirxCpuzBl2PMVUU/rUiD25WknAYBXjYOjXkEVfw8us3k7xRCfY3P537A6z5LaqO3Mv1Pif5ELJ98lAOi+IdC+GXYlcbVTVFJ02Z1LWlMpwWqhbL0vw0Okk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743605994; c=relaxed/simple;
	bh=afDUkRIAvESBsDLb+nB9AROndeBZzsf75tHg4xcLuMs=;
	h=To:Subject:From:Message-Id:Date; b=HRkodsWZubZvKwdelB2AUlRvhUW+602W/fFwyw3+ai+mVTUOMvC4HJeAehyHeiAV0Haz9AU28mq8Q6r1+gTyV+zrYjbQ6MWDhSq7hWQt8/VoAs6GeQWuAORxECpwvi+5Bx+ywXWqZhGEAY4uHoMmcefyhTjl2xXACelk0hRWK8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgXl9zoN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgXl9zoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0868C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743605993;
	bh=afDUkRIAvESBsDLb+nB9AROndeBZzsf75tHg4xcLuMs=;
	h=To:Subject:From:Date:From;
	b=fgXl9zoN+7dLshJT0eXKQz1lZXGdGQeGs0XAPI5B0QoDxFXmCvzkQd2yNdFQDIAmK
	 Xa3zn9d8fcBrh3Ah2rxSGQ5SS77JgPt5o1sTEOSe0OkX0bV0CEINibSvtGm3PtPUT4
	 10e5XMk+Nd2e9A/KbUTSunUeD64Ggy2riTuLB9HaYgpXTC7GzODZJaY9sd8UtjAbhj
	 Mk+b8C3CsPeeSRrc6wwpvAGe02+CU1KUt8CqtWJeTR09TB19DJ/aGfp13sVvO2mIxN
	 Tlhtpn157LLZ/SCrp3iuIzywGOSoQbowuSDMNvG+ZScj0R5z3Vu34A6bpdYIRVko0U
	 5TzTMq0X6BKFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9437C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360599367.26636.11176751954736751450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0799914eb3c782a1582edf2fe4c9334e7cb14847c15f80227616c084a3173b
Date: Wed, 02 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743605993
