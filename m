Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3920E73457
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720887623; cv=none; b=Lw9KUbPPCglwF+KoFDyRvjDB/jce0niITtO6mgWsSjXl9045dRVlYggwRVu2CMUBrm94af4dWmAE3nxQEKJ892wbR7xAzGrjgOQ4S9K8ZH6dR60HfhNxkqom/3GpqLryI2PnjMt4z+/pk6/+c6qE7ru7jrY8RwFL0JQKXV00mCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720887623; c=relaxed/simple;
	bh=V9BoKYX9eqNNIo/yYbc5Pt5qDpC/gl9b2fjjEzYdpYE=;
	h=To:Subject:From:Message-Id:Date; b=X2jFrs3KKp+vG9YJJK/GaCjiACtcO45bfomC/HH/zkrnKlJaaSYsi/RoND9/t/ZXFYWOFfNj/ZpBQz/XFRLNUil0LfToOaNIXQetGocZeUMIqYPC003LVqGD491MmKVsLaRAUsmgt4SuBVAGGsHVg7yq6SycLXYahHSEpkOBU2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDy995Kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDy995Kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4C1C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720887622;
	bh=V9BoKYX9eqNNIo/yYbc5Pt5qDpC/gl9b2fjjEzYdpYE=;
	h=To:Subject:From:Date:From;
	b=qDy995Kcf7VNE0tKC2+LR5Krzz+9Nm5DKNcK6ajsH4a7ZrduyGOtEaBG1BAz6PVBl
	 /L1sFS1ZE/8oJeLRs4fsXWs5R+5KxOgtVrGxbqJGHPRciRzTp8gaYmvyYVu7vFAcsw
	 BTRu7dF6wEPiu5I0mS25Rv+GjRzBGyCakigaz3x2KAgm9FhZmJk5oEC1toxF3A6aO3
	 8ezWIIODvV33JdjJ6dzoozrAADWV9lQrY6lOgvXqEMuDNVyO7nsa9WnABDCUObEigb
	 XFiBzv1RKxDf9o7qdQijij797GTW/HIuECVvv00I00k7z1ffT20q/cXJ4Fo+5l0yHw
	 6kq3R6/zhSyqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FF7C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088762277.24394.1106753057095559899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b679bd9cb1416ca02dc44160f984b8847eea1dc3b1b3880ed084461b9f0be41
Date: Sat, 13 Jul 2024 16:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720887622
