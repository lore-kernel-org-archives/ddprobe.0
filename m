Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA24305066
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764661973; cv=none; b=Rx47ey+JmGrX5B4rthZcqDkzhco9rYVnuRNbZEYRACRgWD2dBUAUi6A+Vete/b6qFopk5A3pkxQudmCc7V4alkOiaazJt+gs22K2HUpDFpkH/tV1EAgJA0kt4u6p+FRczStwBNIST5SfB1BUipheBc8/ZQobd8K5DsjWSCbTjCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764661973; c=relaxed/simple;
	bh=CdAev7srIDVVFcrMp+wfnoUbMa54dUH2ayV1gHeFFuM=;
	h=To:Subject:From:Message-Id:Date; b=RcjseCxX46RfQIth30l6F1GnEjMuidn0YPtZIo3vYthOTTINYOxFmA3/dwnQ7Uuph54S+3ePFxBk5G0KHGuVu+ODB/+Kl6eR9L+o+pZ+wIiOdBDNTn0OzHeiwdsHHAojl6hBKIcYawYNTj2nD9Ale9+3lxjWLAux1OtUCPhcE3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+PPtsHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+PPtsHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF834C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764661973;
	bh=CdAev7srIDVVFcrMp+wfnoUbMa54dUH2ayV1gHeFFuM=;
	h=To:Subject:From:Date:From;
	b=i+PPtsHvNUW0KsIjEm/IyHrr5+YinQ3B4BSOkcCD6ik/wQOcVG0lpUVrAScgUmy0W
	 3SwkVs5ByFJVw6pFiAtxJjvrAoYCltPChaG27McLokD4/pkvb5Ga+4g4PZPfdVRE7w
	 bP1H/CqC2EOgrI03ZM9PrVsPp2G35grU8DgJOzVIimCtZvY7EZT8Ngrl4524uoe6P0
	 6HT1SyjaNiizs8bhmrfpImFUl880F013BxgrfLmsz80JNP2h0sUPBU94AZ+TzJ9NpF
	 2ctrgfLsSxIatiIctaXvEcvU4JAAg/EXVJ1XACZ1Tr2O9K27lCw9GaoQBVyHWJ7EI6
	 uZG/f8kHnCJFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9CBCFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466197361.8290.15283244014326726996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bf097592666edc51cef90511eded77a69026c1664bf68a8343637cd2c28ee5
Date: Tue, 02 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764661973
