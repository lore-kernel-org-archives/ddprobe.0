Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2147D265CA6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768859634; cv=none; b=VHkSTVlf5LxqtPAZRfdsDPTNA/ymxuPwLo1L4n2aZlBwo/n/37oDY+H1e8iUBQPXre3YkCjXTR9M38eHH5d+o/TlBvWSPh20jtvKP5AC2T3ydqkpXyXZunFnaAYaOMDtOad3OJxRy7hT3OsRgteaoOoxfegA+SHsu37IF54hev4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768859634; c=relaxed/simple;
	bh=rSczfZqOiaziAxnjFUZF5j2vEIcRYro79Ai3QK8jBGY=;
	h=To:Subject:From:Message-Id:Date; b=opf3WTPqJ1xP2LzwNkx+qotqh2Yc9X4ap10XEee2+KiJ4E+HzQokLvWk/YaZhrQDe6CVgMiWTfLJADuUBhJN/CfFoI0Bcl4IMe7bvzBnV1XE7R6rCLxuRW74S/HA6ShE1ZYoEJRRIGd5W3xkLMq9tKFaKkaXaci7SEBjO7NSbJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5G9za+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5G9za+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F881C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768859633;
	bh=rSczfZqOiaziAxnjFUZF5j2vEIcRYro79Ai3QK8jBGY=;
	h=To:Subject:From:Date:From;
	b=h5G9za+SdaJftoHScPpqom5CNoZMXLUBQ3t3lXKM9hmKLCq+mLOuzBHYaYRUrb0Cn
	 /UWNhw05HqjiG5riGX7kcvU1fjGQmjJahVndXbOd8IBY6JpLi8romd9xHGRuk1csCs
	 VxPy3hI3zv5+RFqgJUybO4w5wO/eBdsIzc55qS8kX4tluEEgVhKx1EKSo9SuSYN+SL
	 r7IDy57PjEWGDZyJw0MoPef/eyuI59Pl9+27EDsPudomAAr+VrMeXsZLReqdqaOLx8
	 HUjnYY5p3Kdoll8Pdlxvf76Z1P2cCTj2sOOaNEglNwBeo15yIO2UR4ljk+P4SDWspv
	 31Y/Y0BppN2nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E941D2ECEC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885963357.10980.14702170514248591200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251c882786bf8a541d38b5c161ec123eac92aa16f0d27d4520793dca8255b082
Date: Mon, 19 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768859633
