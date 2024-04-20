Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69233205E35
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 14:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713623423; cv=none; b=oF8Q4oTv/lgm6QfnGARXuUo7YemVf3xJ4DTNhtmty2wwwsjwgB15fY1BIaX9SiaBMoOeWvGQIVPwAP58heO0S9gm+17y9zgAKO5Ioa96uorcD0dpIwbEvnoVpxVaD4azGcJhlBhGNxjcfsbnlqQblq0uSNYIKfRsmok3P3X06DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713623423; c=relaxed/simple;
	bh=3NPnilHcjmV0K6tOFVKlpTxGuHnFVA34VA5dNKHAXBE=;
	h=To:Subject:From:Message-Id:Date; b=Be6cmFKqjdRtlyfLnIKgx8Z3H9NNUerOoGeiGb1wTFMtHfArwtmETyO8os8LYkTB2gDPka0WHPnxGQYkE6gxsRJ2NxLi6gRaZxuiz8h7jivYhLri7aTKWOjYIZlk6MqgGiMRWfMdF6AM0OfsoU4O61tdpnJbakCAJXor6yvaAug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZ2geFqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZ2geFqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D976AC116B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 14:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713623422;
	bh=3NPnilHcjmV0K6tOFVKlpTxGuHnFVA34VA5dNKHAXBE=;
	h=To:Subject:From:Date:From;
	b=FZ2geFqquxg0QCuEagygF4EFqEihVizj/RS/pUbA2kII1K5O2rKX7iwiH6dREKZgi
	 ijS1AOVwj0dNx/VFm6Plc4qgMsrkCpJzMmnhihQ8T4eGGkhdJQ7gOfj73phKMDPVRW
	 IMuFqpy3iOoDGHtSF0WPSdiXOeb10MRATSCwp59zpJw7mOyKFbyt5va0c/93TaTnZn
	 RR+OnA7rvdmzEKUXFawvaIIC1Lkl4mWkyNSXlcnRVw+kjpF3aFLWfyBSiRtM7v1Iih
	 oFS+w3GZVPk0jpGv8dbdoNK/8Op960dtg8k4JoZPJNT/SQWWe649DrbYrS11B0d3Rt
	 bG+yaubrYzFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3387C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 14:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362342276.25982.18210095685753240593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0732fa7eeb7260a59d5dd625e236a37787da27e9b4994205376b0e20331fe6
Date: Sat, 20 Apr 2024 14:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713623422
