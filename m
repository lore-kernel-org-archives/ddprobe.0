Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020F51F419B
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751626194; cv=none; b=KF65zKjsmAenTd2Dl26ueaRIh2eoxoNvCR5IfmccYGzICmQyQI4QUI3zWe4W1X5k4GCQhDAuLlP1Z/f0KtIs3gcaNUpMuPnvwNVGge6YaFEP6xchPILicz0VOnfELyYIyuo6UOu3Gas6Q7N+eklwmqu3ZaR4Mh8YB2NPm/54LM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751626194; c=relaxed/simple;
	bh=VYlcRzx3QwKIYQ7Bbc2C++qUaLngHzo9CvTkxAoRs2U=;
	h=To:Subject:From:Message-Id:Date; b=TJj2WdotF4nc/hJ9eAQaIIur/JwvlVCHZzSd9l6v2bfDLppZ//VEzQPtCo+eVFkJV4A/J70umGugq4F7o/An8WQw99kSNAVMjasJUm/nnzL7EfFX0lwuTPfNHgN/iys0tyTV5wN1gb30PQnvp7nsPsgbWcWommRgTjiJ4H63zT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMfck9em; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMfck9em"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF14C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751626193;
	bh=VYlcRzx3QwKIYQ7Bbc2C++qUaLngHzo9CvTkxAoRs2U=;
	h=To:Subject:From:Date:From;
	b=NMfck9emUMcrOiA9PdLrZ26ZDNzJ/mcnx67rhC24SqrkHOFWitqYgeXaPTQtRA3w4
	 4ZyKxoacNxR0qlc3iwiOikc5ZcBTouPHseg98n9w7zacac9dONdPkGUFA/j1BhKYUi
	 UJzxWKDwkaLba4ZUnGHStaNn4JnihR1kjZUf++Sgo7dMFSFB+UztzHI36/WGkcUtrz
	 7i6x8cL+WbfNy8BJBqxipe5xBCBp/ppp5dgCiznROU8NEJUihfTE0zh9k5Oc+yrDc8
	 RAgqGiAIjT+Uy3iuaYZcN5AZCumo7mHXa/HNlUq9DTIrUSuNd0fNi/LreEKGYxt9LV
	 LemORGEYgqAJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93FC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162619357.18688.843920403970674095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d030d20153c9d0f8e93a52fca8c16a0475999b3fb79c57c6dda265ac1a14659
Date: Fri, 04 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751626193
