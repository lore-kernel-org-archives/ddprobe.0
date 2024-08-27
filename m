Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DAC1803D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724776554; cv=none; b=dvEJawbgkT57a8T0XzuBj0/AxBat4HCV4MmVNb5JwhtQ+ezMWZNma+Sg8cr0EfCH+qMi9bMG11NVBRrfA9pLWXi/RCeILhD6eH5aiKIUhjyPztqYCkO6t6u6Y3YQqpJDuimfGXou/e00zU524+MTBndaSL9BUe2pIFac15bCSN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724776554; c=relaxed/simple;
	bh=0K+HX+BPeEU2XDJCCPtraLKyZzBLJ73+osYw5dxjmg8=;
	h=To:Subject:From:Message-Id:Date; b=pr23VZNk/gFMJMRKN8Q9GZ29pBMKYP0S3jOuhvS6Ud6TS3AI/cOonV4JiL9YvSko4d/pLfyU8xklQ7m79AeKHXdymZfzdn1STpgOi/aZeljkM1hpVljeGOrjgta2vcLI2XrXcxiVwqQ6t2DXEDLdaQy1+ToBVQe4lC5ZgFNrCFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsMY4/ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsMY4/ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD39C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724776553;
	bh=0K+HX+BPeEU2XDJCCPtraLKyZzBLJ73+osYw5dxjmg8=;
	h=To:Subject:From:Date:From;
	b=VsMY4/aehTOHiVippvQxvxewrvp87ve84rBXHwQS5wAy7YNlVo/xaCd/+j8Dywvo9
	 xd8abEMWAjpwGQbqY3JBMKG3NJfuUxu8BU36xGRS6KhR/SViM71LVlj5y+NX1Kf6fy
	 S8Hh2GtPvlT5J6MnZZXazY/8oxJUMQgro1yOj8gHgMN2NnKlCdfgubn+hAUA7Rdrne
	 vlaOJ4zfaT0CNT4TXPK2D/KKjqKMexvGs+/HdQLLpJd3U+kk/22upmAG9/WZLv1IKj
	 9igwjbj5wGy/qkiAYRSEbGTBifDKPDmOvVLJrGJvjNYPT6G3z867uqQo3lwp3/0Wwu
	 +YGnjW03/rlnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E67AC54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477655363.31229.1626129680554421511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5482308305d727075154ae49a1a9f01fe8507b4f4ae431422fa7c4b1eb75af
Date: Tue, 27 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724776553
