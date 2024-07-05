Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A52D5465B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720205723; cv=none; b=WNr2bi9Su0kimINRS6tABlyh3x5f304k3NC4gt3G3kSVlOZPyU4QJrxGTcXYLWEveZUE5fetkHqMH359ATtXuLhpzXENagptfmRDfybTTVPGkaLnvSfOWi1xcc93uy9Ii0YSHQT6ZNfkpJP8U3ReIakU/7lN1Wp54D6KIpiYsuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720205723; c=relaxed/simple;
	bh=0+j0YEqSU/oHk2LT6pIsb5ILApGh+bmhG3I3wMmyRCU=;
	h=To:Subject:From:Message-Id:Date; b=ZSrI1PzG0hrspnbSxxbgr0puOtgABVqlCbM8y2PMc/ZB1wCfORFLe64zxsDD+2fdNhJzVoucE0/ipoUWiJpjpmGcZfAhIs17LxCTHhDk0/r8xah97aXqqFOxJW6puSx0PijLvdMOl0dVaNHcYMU9LwSbtnasMA8rEo3IyZFyFys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVKR6A3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVKR6A3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0AAC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720205722;
	bh=0+j0YEqSU/oHk2LT6pIsb5ILApGh+bmhG3I3wMmyRCU=;
	h=To:Subject:From:Date:From;
	b=hVKR6A3LuuoCO3uyDF1B0mYQ2p8Agy/DeJ8z6NOOJ5nFawnhu53xb6yBfEyZRdlCG
	 te+bP2IGuKBiiRxnsDFrVvMxYN+zHiZbxLFojYl8zccyg+fPO8yk0wKAV4KMw5gDu3
	 5PHhkx4nM5TYQ3jXV5V4vmjNKcqlJQT0Jc+/QG/r3dZ5DATA36Iow4JepzHiJSMt3W
	 frqLhJnrlK4v9jvLYlwY3XmO9tPkaRaAkIV50v2iBG4LOonlfkoQzLsN0oUOhRg8JI
	 aLHGOaOlizxmLASn617W1yJzmpxVDrIKeKCtdogkUvhBWdJ8cV5sNGDenCqS5oXWkD
	 FnnNROLjy+z4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81ADC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020572277.16865.8482329901044643869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5a477eb752b3172ee8fbcd3fed68602bc509a7049ff9253184d94620a4f223
Date: Fri, 05 Jul 2024 18:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720205722
