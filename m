Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCF11CAA4
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727633155; cv=none; b=eS357/Bb06S4yiS3uFY1fWpPRF7nVis/yJMWSxVWATqhfH3bHsXnNMKjwM1MRKx0nIprwcVpS4pJExDtwIM1yPB80O1ENZitlBYycZbcAp4WX0LqvsXIpP+De/ck4wWNfNVL8s4TD8avCenzxErYNgyDjqRqQRN03U1PEuGfGkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727633155; c=relaxed/simple;
	bh=Acjxha+bE5weUPqdWeZ8/aSL+aVxDaLWOA/jWBT6IrE=;
	h=To:Subject:From:Message-Id:Date; b=aTCuOQiadCO+pkaAqPDOlumXdU7Oeo8v3TGiXeWZcA5pC1ydUGOnIE1un2iNZuCjS190azUPeVMlffv7gDjGBDOV4MrcOt2YBL2ZUapHojU6GGVWReQ/+9HCD10aZ3xA79DoEHve1sWZeYjZ1z6Qr/RnxsNUf+5M2xvH3KFgrdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW3Ji/y6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW3Ji/y6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB12C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727633154;
	bh=Acjxha+bE5weUPqdWeZ8/aSL+aVxDaLWOA/jWBT6IrE=;
	h=To:Subject:From:Date:From;
	b=DW3Ji/y6qhUS2LZRkRHdLnsCPKCCDluyKiLvdRJG4feqNE+boj2mcYhTg2lRTuL1f
	 WYBr39E5fFSwx3SVa3RpnGK/vSzHBIo9eSrmKXh4sYFjID8/9vjcnk3ZusaxPKqlm8
	 aHpaHsA7mkQSJ0d7WMi/cGdJqE3zBY+csyJXFxuZfwR/F8bwTSeyh0RfcTPkruqx41
	 VVUDwViloxTGm/yDD6w77CkDgJAPBv+c2oWlIp68S5BIm1ixn4qh7SoZ2gu/IdC0ne
	 QXzo8ViDrW+7jxH/5RQ/7XnPq8usFIYdkQT5kJcIHekWoCNeKYjujLlCcuwRV7nPj2
	 5FU7v7a0jbntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9635DCF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172763315359.19245.1388023351957904695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534040aa06b429d1c38f79a0080c9c251421ad89a0a594549626d1c462a1de4c
Date: Sun, 29 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727633153
