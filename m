Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09FA3E6DF0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773758093; cv=none; b=dUsTYGbIE6EKczHSnai5XOxo0XxaSFSPZ2RY7fun7J2ryNVQrGRyiUxWLdZ4BAxTd3ceNbb5F9iebh5oZsdQAjHDP4RH/KO798QieCmSSUblE1v/wUjOTV0c9fSZqzycc2RkIsPFDheq9v07yR1V03m3TgfFSPFhW/Jpuq17LHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773758093; c=relaxed/simple;
	bh=QQobZB35czQumoXrwRoFRmExS4tSrWMGoHezlOnLxYo=;
	h=To:Subject:From:Message-Id:Date; b=fiU2YVTV7t93uuC/bK6h8ckb4wxe/Ktf9hZ43gmrKPEUIirrdRvkCvqxBxuyixTPDePuVXNB5bM8JUwYUlJsrlqc5BxLxq9R0l1a+FWf+ECh31oz/Ip19Y6ionLz0ISERvZ1DUIObYN3zp5t0tYKmqBOwF6SQ0bpZURRD6mk1BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvnyIjcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvnyIjcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A251DC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773758093;
	bh=QQobZB35czQumoXrwRoFRmExS4tSrWMGoHezlOnLxYo=;
	h=To:Subject:From:Date:From;
	b=JvnyIjcmXUXH7kLWTfs/YHaccSinBQx/YzJhxgtTmvdxaSuBiohVhr2D9uyiAXonx
	 WQoMSjFomVnLR9/VoNoXw6SM0Fuu7uRBo1Hi1KKeFaVZObpimiTOnhhISaP+l0Uc+W
	 xTqHhluSmIKXpUcRxy5FL8GfX01qNs/Ztv94nfEF8XOHvD7cvuTfKGAAFX+5igRMn9
	 f5/KhAkQcESd3Dr6Z9bc1upVAyUCrya6mLSbwBAqFOx6BLfjSg5BRPqXkb9Q96Wb9u
	 r31mCOTOvTGA3vjPnAEL1xacR0KJ+jPJn6kBXd8uDMGAXxXF9ey1sek6IVORJ9hH9c
	 /Gxp0B3aZ1N0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9350AF33827
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375809359.17341.5912285658088886131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a020563b50545773249cbb22617419aeef95c58190b2d879f18d4f0c05d080
Date: Tue, 17 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773758093
