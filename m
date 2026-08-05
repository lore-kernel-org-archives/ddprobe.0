Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AE3403E9C
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785927034; cv=none; b=H9OL1EEnNR+93Wk/++kzQNy1zPPpchxFx8jdb+7O56LgC+vsXJuVuCBY80oAopCBPvwktC5RuBbanAPZawx3WTBUVVo9TO4onDKneqztwqj/BtPR995gHGlqfIbH7wHDxQSOFG7IO4kYtjuncgTxU14rYKQsdAZwGjLbsB3ocP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785927034; c=relaxed/simple;
	bh=3rGAk2cp6FmNPr4MDw9kNqhrYOAD4/BMbukBSvgz1Ss=;
	h=To:Subject:From:Message-Id:Date; b=CCKZjgzzgWm82KjHimyK17Zb/DDnnPILuOuTTPtBuIX38XNlhNdck+n85OULbpn1PtiGTXGU/7kyLJbgoiHiN9AEXfXEJzd3pIocFEIqViWjN7+wiOn5Lr1w/ByhBQ+r05vqU/rnqmMN2y2J6O+zmUsj7DTob1aZymRN0OpYUX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhIcyL8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhIcyL8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6342C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785927033;
	bh=3rGAk2cp6FmNPr4MDw9kNqhrYOAD4/BMbukBSvgz1Ss=;
	h=To:Subject:From:Date:From;
	b=WhIcyL8G+cCHRx0BpWrQi4XGIY0SB13pI788ug4ovdD12Tnhm2Y9VkWziNnksod47
	 hyNO6wE4l9SHDOLqvYz2IzM8Xc2YMQKlYaq1bflva3V2SfwqXrUc7FnOCLdIuyaPq6
	 Hzsm3qeZwB02QDZCDAEg/9LJzfNI1BT061iBBGjHAhPMjagVRLnjZphqkMnK0cgJGu
	 O35ORm1KrfMXCv4HI/Mt0cZjux5ELEgYfIBSga9bD7oW4r6PMQmeDU5n42/lW7A83w
	 teKQya36CgicusUbKDaZPefa2zoMjm7T7ZA3nieGDLl8c1yWl5+lE9zf2R9F26qOYL
	 pQUtzgfemLAdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4FEC56201
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592703370.27024.15074634705232312043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290ed7fb166e648113f2fd6b2083c8dc3a929617713c87e47328b6d55992ce58
Date: Wed, 05 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785927033
