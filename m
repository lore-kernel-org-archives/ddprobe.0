Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D5636654C
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789030834; cv=none; b=daFl2Oys+61unOMvjn2qEO429mNylGHOP9xwshl56Gg05zHtEr9sZewHmejvrOk2sWGN+wt4PKcp6Wb/MEk8+kX6cUj6ywNoCEANzMlorEWH25pv8D2fgPS2/sUaCusNMYvUgNI3c85RgsHcF+JV+Iaqg5PFm8QClaxKNI2j1v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789030834; c=relaxed/simple;
	bh=VchYscYDDPvwkDdV3Qr/TfffWjkgBjFTc0YAyidXiP0=;
	h=To:Subject:From:Message-Id:Date; b=YI12Yb7dscdWiAlaThaEYImgeqAapJUQ64HspKB9Tz8Y2XcBNY/fPAwgxu0jeam6mlRgI3Wd1PW7O2qguPNfIwn6e7XiIOrNODM88J6Wg/qUiH0/PbzW6T0lFmufU29Mir6m4xkmwRKdm8XZWgdI5cpGk92kfiQ3CC8ZfOBy56s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iU66M3+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iU66M3+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0507C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789030833;
	bh=VchYscYDDPvwkDdV3Qr/TfffWjkgBjFTc0YAyidXiP0=;
	h=To:Subject:From:Date:From;
	b=iU66M3+1jUic//nbmiCgyzniuZ+UTQM7ddquD/AxXfdLeOqzmn5yfADC8ZTxdCyRS
	 QJNU4FS2HsQDRWyh1ApoQqdg0RFRGIHeXT1dI2DDOpFulcDtwl5YMavVnSPyTx6PUB
	 JoRD9NL7EwJ1MK/yFk9+NVAGqkHiol27OaigeTcCkZb+uRUCj567ufdrT409n8dDSd
	 5F6GGcyNrVKCS5PnHkCaAts9b/VR+wVoOXueEYBwLhnB/02AE4qyd98C2ET+fGAMPp
	 bExI21FvHTPqEiq1at35Efm8atKfqm94yIsuy9alrWhuweg2tXXoGfPM8t6oatB1Ce
	 ek6g7t4+8kP2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10C8C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903083371.22100.331484518107292554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfee6c054d8d8c8f9be49e26bae411bf351552d0be0043854b1cc551251dd263
Date: Thu, 10 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789030833
