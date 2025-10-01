Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEF656B81
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759295994; cv=none; b=Dy9Rtwom573FJszocto9C7NzFAYNQm80pk+pRPnamTExhOr0Oyx+pvupbYPuFUcwIuEer3WQw/LLeDBQxd2liymfMo+ROFmy8Mhj9iCoqfU9+oTHdfUDRePVraufp7XxNa0rY/a4VSpwbUfZ+nFEsmtUsEoRTacSIRGKvnqf724=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759295994; c=relaxed/simple;
	bh=ffBcs6UAEvamT6QVS2aZedcbpN1iPPcUBj9fyubwiV8=;
	h=To:Subject:From:Message-Id:Date; b=ZXl/h9FHtUS+izxV146YAhmy8pzwN5tqs0jsWtu/Hi5pXqc8ZwWTeQBybDaALJ1O6rR71RuTjubzy2JEk5OwhRn4GKf3uROGNEVD3u/4EevAVBBg9fzytHn6NsIAownH7zztOwH1dJgsLd6jBb7bFzQ8HQms8bMVQkVwbpkosdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjMa/moi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjMa/moi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60ECC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759295993;
	bh=ffBcs6UAEvamT6QVS2aZedcbpN1iPPcUBj9fyubwiV8=;
	h=To:Subject:From:Date:From;
	b=QjMa/moi1KYc42/7OCUbpmHXYledwAyXzOZZvZHoHUdGiCMvQrlHGlV4XhetSkAlt
	 BZTfyoGT7uX/zCBJmsvxo4wG4tVSDLjlwVwAE+LuK8dYFibLJTDNIXCKcPUJojImym
	 j7wBNmX9A8I1+RxSgmdYlF9rfXej3eZiODypmkOtgvmTGy99IgssuGAfis19HN6Dc3
	 J8p2k1a/d1RF8Cuhq0puz9hWlQ2WlVyCkPKIO1lpj+52xbTiabP035vE0rgGyyDxxN
	 d7xhhVyUpcJC42lVPGlPzt2kM6TjXichfbJ8yGUHSkjn0zZc2k3xebF/oUTdaAUp5r
	 rAnuLYeKAKG8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE02CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929599361.2477.9367911338080800995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8460d9e41823bf30fac680e02106c48b790ea479fb0db08fae9dba1afe522e96
Date: Wed, 01 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759295993
