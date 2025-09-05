Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5EB39FD9
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757033394; cv=none; b=JM1+l4gHMtQ+e9YATK4fyQoEWl2pk/fgsMyfyS+Q6oMb5FfEtdp4+ZpReBMoEK77OEiyyvyi50CFWgpoiS18CgfbLwu8hqmuwK/Brv+vatDUOQak5z6bajYmBw6zlcfoBaYrLLiYs5Lm8JYi2RG8ST5yx1QGl643dfNNo982whI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757033394; c=relaxed/simple;
	bh=6K8WW/fLLaUDQxgiAVMWm9j2dG3XgqyvMQ1GtEyduwc=;
	h=To:Subject:From:Message-Id:Date; b=KPqw2VtZKcy4Eaf7FbuRqRPCN7ihrit9pSM5cFEyfIikj8BMzFK41vpbKh1IKSx5/f6HaQ40YOtL6TgXbWh8VMb+8/Y58YqAd5vwOLwT10idL917Y7ZLu4Y3gfftDQoL326mm3GVgd32n2tow8DPsMiikOv7FCIaNieAQB20EC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMYGpQ7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMYGpQ7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C68C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757033393;
	bh=6K8WW/fLLaUDQxgiAVMWm9j2dG3XgqyvMQ1GtEyduwc=;
	h=To:Subject:From:Date:From;
	b=VMYGpQ7JXJ0YKWXI8n22dls0bw1KqkgTAEptT6N0aKmbsoLu06aCT9jeZhc6a8VXA
	 0FBf5aEoziEWdfYOuB10WOB6K2UsVYcta9ewQQT/E9qxJUQLa4mYZuzTZCeSZealSC
	 CHvHaQ9DUiYx8T85e2qStXs+HgBtWcYUEdkbc40tRIe1/T7BNmVgxlL2CEjbXvvGvy
	 G4FOGuw12XKOas57M5iCFJAGK/WX7tSZ2X7K8V83+uc4xFNCEbJ0+NHVf0UlBDQrkH
	 qBbNnbWLBo8IHADNiWbKENYu8Jl/fNbC2GyI8J8UgMQsC4+ZDmVP3Xp59jy3Hk/wn7
	 7D58ZVXPeWI4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A5CA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703339358.27737.7927664721095616458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3818cb546c391ac4e55b2986424713e4a29489647829982a4b119bd2be173f4
Date: Fri, 05 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757033393
