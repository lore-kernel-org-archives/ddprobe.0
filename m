Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EE327602E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760538594; cv=none; b=dH2zEyM2IW8UBp/7JYmt0zH/abTYKuef1xHZHRFSfZeNeFLhlFafnhpukKvwlIKGH/P5pwIjgcBwjaeY43lE+9CHp9HlUFsb6W7PiSBquWMhTtkLCXrqYL8ewZunZZlKmV60C30flhfiC4JNzKkZTU8018xkjRFYMRauSFylwqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760538594; c=relaxed/simple;
	bh=GM2Xr0nhZM0kqMVjlC8l9VQoR05gb9xJZrtgGrGIDjc=;
	h=To:Subject:From:Message-Id:Date; b=hVa4h2QXwlU2NxUzjd9S+/81OUPpK6s5CvEZwEvM8e01OlJ7ZXdAtFwJx1Zi0WvnzKYBUCC5953UF3ggjPsp42lTSp3be3XFR3Qx84TP3EEb3U43eLAeNVEwKnNJZUzmUdJ96YH7Noo5JBg04L7f7yN8vaBLhPXvPCzHKx/7Bzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8owS/6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8owS/6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11EBC4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760538593;
	bh=GM2Xr0nhZM0kqMVjlC8l9VQoR05gb9xJZrtgGrGIDjc=;
	h=To:Subject:From:Date:From;
	b=n8owS/6wolDBgV218Lvjnq+ir6K+hky3itYeySF/kqHPt2b6vYsAvEa5A8GDxJsGa
	 BIrmQ12sRLKpyQ5ADFHbQLGGN70vNiBJkbwe5HOIb+UTZc3c0OF2eT4q7eNaOlGmXv
	 P8TtmxPkd7Wv7sPRvfikVQifh3pi6DCsRaXQHIuJGBKaXOLdaaLy4EERyg3WiUNhFe
	 8bjAWie66S7V9h1h3FbcIBPfotCTVKN8ZkAkEqEmpY3fIt9i3WGAVWefMQsbq6EP2Q
	 aZqyjbxFLWq8j4fCUUV3iPVHEgf0mKMb2WAu4lPfHGC1Yj/ugnPxtGgevfnyDsJA7F
	 Sfo5k2oU32Plw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85ACCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053859358.5326.3259039818492530088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb6039337e114942c4dd3e910d07aee686b06286a1dc4ba701f4a019361f57a
Date: Wed, 15 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760538593
