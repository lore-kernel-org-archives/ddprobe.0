Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACE41DFF8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747263594; cv=none; b=FaBtpPn53KjkOW1HQ1N4jEjsochFRIgA2fMmeGzG7lfmpUsrnlVBLz6p8dc6bgqnMoSgVThE500c6IfpZFu6OCEFb4nSFEbOK1RtcUJ9XAnA3WFYRtTfd9AJa0syPfnzTtQ6NPT8Gg07xTKUoUzv7nmgm0Pv2tfTA7NWlPikzNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747263594; c=relaxed/simple;
	bh=Io/SilUSJL+ATjSPSzKBkAfoXJVd7HPqz8PPfZX3jMQ=;
	h=To:Subject:From:Message-Id:Date; b=iTGY/3L24cXQyhQDGtr6cnOl6HffZ0ukU14tiGuF0ZT2mnsOXccl799VsqBpm7Uv5Ir8rjFS36LQs7ROEfhckiRFb5rSZClMhAUDR0eEG8rBmI2ikNIcUASwTohEvSLwFCIzEutlneaSXmK2q/H+eaOuaP9C/wCKth1sYpdN3DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=es+QDwNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="es+QDwNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6D8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747263593;
	bh=Io/SilUSJL+ATjSPSzKBkAfoXJVd7HPqz8PPfZX3jMQ=;
	h=To:Subject:From:Date:From;
	b=es+QDwNCtiaP32HM16md9lIsIsA0WNijyW/BwONYsCVK0EMIJW6AGvjFpRX7yTqEd
	 bHMkyPiVC5KTCXCTNq/hhPgGEx4kKzfIar33WLZSz6IGOOX4+hLIuM+/nHOL5zPkbH
	 1SP9hp7RL8dNuekNw4v2HT6WGowAmA5G/BR+HWY76Sz07M3BN/VjMWue9O8I6xKvkn
	 rcuvNqX9uneHwCtoHa3czdaMUfB/nYYtdFCV7/lKbX/DaGE+REJ1a9u/DlnF2+dSbX
	 NJS+xpkDEHm/yn+7y94ouu5e9olVLTD97ElazgKonRoxUSwgCoHKlghiomOFa6oKah
	 L/89z5KSbKk/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6AC3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726359358.1774.4761606589456800172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc3209714732ddd5d2884c6ed06d79318420610942a85b57d81fdde5b6e837b
Date: Wed, 14 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747263593
