Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444742D5A01
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784153914; cv=none; b=jklleHfJaJxeL1KDabKVOaaL/P1nafip5aTUDGWnCYPWaBjnCHvPONCU6ajgyymCncy7WzDk7E6kFzsB2RffkSbMk4Q7k+ZSZ+MftLbgKcwlhCcH5hQ8S5rSqXUeZDNFmP9fbCmNzyiCXTDK1dMHTdOCWP5Z12MPWV4Ld5E9KhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784153914; c=relaxed/simple;
	bh=sJTTX4bDcl3LuDjlnXq0XrnhaU9lOx7SczEN8HoqIGY=;
	h=To:Subject:From:Message-Id:Date; b=OL/KSKQpfQtelQPeVcnHdFZanclT/lspQLQ880HDyq0racqFEXNhCglX7Kk6tKm9bexufovhICOR7mkuOS6WDRdaDOCqIhEaDEtXL5d9pbjkHnYDawkhYUjPkQozIq9WLcksjCGso1jk6hUeL13A9kjdRBhvb5YS+nck3LqEa90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XImFrLGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XImFrLGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FECC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784153913;
	bh=sJTTX4bDcl3LuDjlnXq0XrnhaU9lOx7SczEN8HoqIGY=;
	h=To:Subject:From:Date:From;
	b=XImFrLGcG3ju3PRXsntWwnpoxaUz5yViyS6OGTzEArqVO6QdsMku16yyxulOHQ0JW
	 J/dmLzoblKnCCWw+Md8cewQENaQ4kkyjAeGpPj0Kg+UHKdbKFbZ79McsnV6VOh32n7
	 pPU+LjWemHgPZX6kjbXly7dmnYRZBcEmVzYXUzaoFm2eDvbvv1WtCcdbFZvxjZYwIe
	 TQhid58/EYdkz2YMvIhCtWQw1vmSW6SPGgmSaHcylCfpl/A9YGC5XzVdNnh0ZDC9EZ
	 d8n4hFDv+ldXvx1Rc6vL6FzAiYmv/8OCeWDYOsKq//TmgfG9P9qCHKZMXMWho3Et2T
	 /Pam3ebk624iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D2C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415391368.1601.15837262054302104039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5937b55828337199b835fa7323c989ae02d30ea9bfb79fcab6d510d4fe5c3f
Date: Wed, 15 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784153913
