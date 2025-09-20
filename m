Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C934502F
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758339594; cv=none; b=bkKOGo40dWzzHXFnZvTnWzYfKz/zvYeCf9uJbQUjBrAVv4G20SQHhMdEm4UBtNStof7kK8ClFjPYjtSfPQnyCsCgyTvjMZCOHxgH/N6SWxNzp7HZ8XNr7NmdCI1IHBsfnpaOUd8U54lj/Cz7eIlTcnhzQ7cLQZ0yqHzWbnTgKKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758339594; c=relaxed/simple;
	bh=pt1FTIi0+cTJrKOo2Oo+Xq64ie09LHLvDqYvyBUUtXg=;
	h=To:Subject:From:Message-Id:Date; b=j2ueRNAN+NpKbi8F3lq4dVv64vdZ7BrzvTpZhRvKMnt/f3OfAHM44Kz70lEvg2veAgb/gdQhUIq4A3fgR+Q5+GESfM2QygKQa9kiKuBP+MAlK3mEPBySoR2KprS6W83nAfTP4pskcQRyMLVuNMsx4ajI+/uJVYneW4J9zVcVoh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klGnU6iY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klGnU6iY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95FBC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758339593;
	bh=pt1FTIi0+cTJrKOo2Oo+Xq64ie09LHLvDqYvyBUUtXg=;
	h=To:Subject:From:Date:From;
	b=klGnU6iYG32TMBA5O7TiVgobdxgALVTgTlUJbeghyzXwz1eOgDGyrfxMgCr8N3rfV
	 fMHXMMqY2rZyvoGx40XFnuGPGH0KAgpJh2SSYS2DLMWsOZqEegzIoczPa/AQZp/Kjo
	 jnu3Kph3MOmd3gKxyDB6/0EnW0iXmvS3bQlwHlwjZa5HyGKw23C5Cyg2xGp5JWtrH0
	 /T6yD/R+LVfiAeOGR8POyQQAr7ELWcVcmPTPRCL68TecUVjekmW1Qmf9mrRjgsyyHs
	 z8k4rz0N8OmIo0rCxAsEcuazDcxxMyOT5QO5IJ5LaFHt3trz6Daee2Gk13aAjdmS61
	 n58xY36l0nO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93255CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833959358.26597.11678771940556648458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a6f88c18e47edfaa0de6f45b6d9d18a75e0e5adba88a0d22804a6ccb4d8779
Date: Sat, 20 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758339593
