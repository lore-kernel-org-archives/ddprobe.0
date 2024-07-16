Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB2D182B9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 18:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721153723; cv=none; b=Teq8K9u5VR7MJvXYh59/BbFbjiYHGQWdTAfRhx1pk7rPJJq0I2U743ACLL2cMTDRECBV+6E1AhBfWBj9vmP/fYf9iMkKEq84LL2zB61dqjwvLCLdmcwc819XD3h6cvKrURMWQewHZS2o6BZUck7ly8iVUZ3hQUwOqW6BbML+g40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721153723; c=relaxed/simple;
	bh=6Il4bYlnEh6qmpw411gtwglDJ6WgMysE2HOEDN1zcCE=;
	h=To:Subject:From:Message-Id:Date; b=tRru8LMiWNCoFjigP5b2QlQvD2wuUhW/jU3hf/suf2FrjIn9VxKrzht6eah0Os5jiXVwgVtplPNrGSN1nfDaf0CBja0B4wPNingEPNJTf3ZIdC/5zb4aataW6BgTJCvKfumpt3pUBzJF40q6Az0Ot9VUa65/GgHUuM9WxLaSjq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ1X/u7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ1X/u7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA31FC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 18:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721153722;
	bh=6Il4bYlnEh6qmpw411gtwglDJ6WgMysE2HOEDN1zcCE=;
	h=To:Subject:From:Date:From;
	b=hJ1X/u7S22GUBD90Od85kIe2KVkezU70oRVp3jzn+vdFe6IhnImQhcN4KB0vRfN/a
	 8iCchWIos3Z0erD7QzJxXUaHLpqEshwDOrGo8zevO50QDFZtUMBHepnwVJyz2HlMzX
	 ANNNCwuVSZnjKFw6Zu5b/+S++XjovD5d164LZ7T4herBtYIwe3w0xanIr6x4vj5MB7
	 rLoWraI3SP0aTG2voM+SNB9qwCLuqC2S5ukdxixVmvf/WLPssrRAA6U6cGmZ6T02vB
	 2Gh4KQRJ3N2U/d+zpmmQtdVqn1ABHWy3Vi26hrvDnGI4ir7wDaRojshBSWF61r/DfW
	 Ne7kbMFHcnpfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D65AAC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 18:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172115372286.15995.13245854464141301258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa60b1f7f102c5eb2f32bd139f363311bd48ce3a2238a236a27f3b8303526e3
Date: Tue, 16 Jul 2024 18:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721153722
