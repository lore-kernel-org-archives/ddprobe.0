Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E62020CCC5
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730928354; cv=none; b=CUFh9KHd2h23YqN5LgoyY07fZXIKZdjYdaZTdcXQwV9qa0PECBSOYDeKdYJoxGNGbNK6xSpdcjC2DvnlRCeNApRvjINn0ckCdmLNqvlU6ZTYqno4lUVDcCA/vGCrrzEHHU/ef0Txf6cHj9tffF21WQ6XChWBH5CeP2MqT/yMxvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730928354; c=relaxed/simple;
	bh=w74AQBXNTpWQE43bu2AE1Froe5UL2VMKKqth/94e2AQ=;
	h=To:Subject:From:Message-Id:Date; b=a95/Wnvmau27Az7H6sBQ1ZigwzPdDco5YZn1ZNG4i3VIwngC/84GkLfw50SG2BsZhFE63+r7QI0lEjVm8hZT03MomUTGKvOJZ7YxMNqFFSb+mkQ87BT+G0msGWcT5vthZ+/WbeICoKk0PZWe4ucnVBHR2iG8A1/KNVSqgsBTJTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcGQVveP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcGQVveP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D0FC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730928353;
	bh=w74AQBXNTpWQE43bu2AE1Froe5UL2VMKKqth/94e2AQ=;
	h=To:Subject:From:Date:From;
	b=BcGQVveP4HjIAkyhojrxHDUnHPe7gn3KPzWA5g3ArEi2s23RSwc5mEF8kRTlBeIAw
	 IurGqW69BR6UYCm+px+2Y5LgSJx/UfdRcGswk4z+W5m5+TLgeFRkDn00bSCGJN+6dT
	 CVU2stzxY/VqFnHlFZIKUa5SxpAtPko2PMSxh4vluzNTzJSAAuw6K8jYCGJJ6hAe8b
	 dSbIZSwl/MqI+qRvaJSt7RodgXOE31w1uO8E3Bnq77fnDXi0DCOZNFKrRntKmJVPvl
	 bCpYjByjzKm2Jd83oV+84bQCJwXKtv5H6t3bvW3IERWm15Lajbs30eFv/7QosIyO++
	 1/qjG4dU1cQSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A044BD59F73
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173092835362.21134.15346439150444471212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa72c0da4d343c05c2462a4fee17b4a4ab9106742b922b2db0fa6ab4d1897fc
Date: Wed, 06 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730928353
