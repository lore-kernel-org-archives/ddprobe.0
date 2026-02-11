Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186211EB19B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770838494; cv=none; b=GDBEbe92oB7nh9iCVW3Hcc+z+Pbnikp/mXDSRaCmm7/ENwdx6B7uVFORuEWBY4rGQS/jU3gF11Wivv6fnoiCFqbOGifjClfZEz1X7WHMybdr0yvpziUONopEsB1MOnG1ZkaRnK+TUTwqGbSdN1a2SRFcC2Aygl5z2Fv6gZPlhy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770838494; c=relaxed/simple;
	bh=p7gS/iiCwUBq90jv31rY3wN3zcl8vm1IY2kBj9Xh6Tg=;
	h=To:Subject:From:Message-Id:Date; b=irxZGLFBNnNVOp4MaQwQaSCdaFQnOzUNMWgy0Clgg8Ohqosqq8GjRWKfGjPAvuwC3ogpn6VP6inazjw+QdaaGy6abj3vQps22qUoc2hlXxz0NEN8lssniq/YnEmTL6maKRTuHzD+sDHFtG4m2Z11T5obQakEz0fsjGtfgicZyBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bt+n5niR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bt+n5niR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4C3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770838493;
	bh=p7gS/iiCwUBq90jv31rY3wN3zcl8vm1IY2kBj9Xh6Tg=;
	h=To:Subject:From:Date:From;
	b=Bt+n5niR2C4/OCBsAiNeE8XL6m0Rj0hPoQ9sp6DCJTLsR7q8gXQk2sZREgy+upkmu
	 6W/sGgEOVoXj23FxziDfWjEFbjsNZMHJ+sb50B/ofarRMD1ruQV2VRu7TESF91Nn7M
	 JM/Yz/TFrkFtb9zK0zjAOrVE7ZkqrMbCOhu+sff49FNVam75RE1oKF5Kdd/oBUdHpH
	 wg8oxXqZb1WICWAGOS26PI/gg9W7zXGJzTpmedJnU+bJRjKna0yNIfWTZzI6CSviWX
	 QtB9OSbifz6SW3CnRxOdj7514CUF//65kWqzHzW0W/5HKhLohPY7rCemnoHUV7dpu+
	 ucqr2J070Fe8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9740FECD6D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083849360.15520.8644149692567201944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a8c87417a4395373a65bfad26f64ed9c8a06a3dcb5642a140166b1b82d9b48
Date: Wed, 11 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770838493
