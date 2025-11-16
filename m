Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F0017D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763283654; cv=none; b=GOrVSRl841XivlXwij6axsaIQpT9RaigjnNJuaj/qRcrkc8+e/KW+ijM7dOsjnAsmvGWU6C5K9t9ifMZ6Ir0aKlQ03YLcVOYIAT2sunPRJJQGvFn3f7374jxReQJN5u7xDNjtAKnkdbLWlf+9ThPZMdWRcBl0PkZMj5HnijqZHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763283654; c=relaxed/simple;
	bh=Z1h/FjmYK8letGjS09COzDjsydZ5IlnswecKIX2Sdpk=;
	h=To:Subject:From:Message-Id:Date; b=hbiOgiSvCFAQa197Sdtwk82HMexTjs9dQLgO/NDpzYIgQ/HSDu+v/ESbUmngc4k2N4tkFB2LwujQRNX48hjj7pG9FOeagBdKO3nv1E+JoAmsYooVMQdGAH5Jwgaahu0h20mDRY1mRHBf7suHJJTeR+Jz0KfxEmGtDJheWMeUs9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0ewl3vf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0ewl3vf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19EEC19421
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763283653;
	bh=Z1h/FjmYK8letGjS09COzDjsydZ5IlnswecKIX2Sdpk=;
	h=To:Subject:From:Date:From;
	b=Y0ewl3vfnZ6pE3hgNlcPsMGlYc1YLaQXSKpueaRZkSrzyNuKIacx6ncdAJwwJ+drW
	 XJr7WJ927pxwz2Ol3FwCwAxbE3YqiKGJb/9c1kYMD6VFuYWa8LOJLFXbr5/vr0Uk8X
	 YmkTPOW2djO5DIwnGZFElntQ0lborYA441N6azf8o0IA0cS6bGABksBmNoTNDDvgke
	 nigBW+RmAH37tl1ZFV3N9sKqQqaZTaFuJOQVV1Z8XdpusKk0x+OwA6BGdY6BNZIT5t
	 bf+MiBdeeY1Pd1AsDPx6B+aT9PEk8fQtLG5kGBiVhbxe2ZGQTKnW4lEv7AZqMltupL
	 0EwE+7Ei0s3Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EF3CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328365358.6154.8028225027528530968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9775d042b92442bd7bc0ee94a9316299fd3bc2bd424d053b5b5a31c7dd4149
Date: Sun, 16 Nov 2025 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763283653
