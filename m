Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3777C72623
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778988634; cv=none; b=KFSeUk7UBHoE87WLB6xzuRLzVVBMxuRUmGQTHH+pB1Lm7gHYnaMNRBcvYIQS47qDTQ6e2a+StSX7kN+e16u912unStq2+SVsUHLZ4u5d7gYOuKC8F84R+kopLo06TeHwqUr9X9UkLnOL0jTvsCg2T0w3OeEVfM5GnAqGQCYYPGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778988634; c=relaxed/simple;
	bh=nlQEwrCfoIwuIa++i8FBhvS1FVeWkvHHntOJ2YJ3W5I=;
	h=To:Subject:From:Message-Id:Date; b=oMQd1CB5VMz40V+aVe+rlKE4CJ++F6R3APGSeHadbp7CO5vdFKMGo/SO1pkt2g3+0InQ767slv11P197U1pkdXr+APUEGd42kWNgPq9D5dwvUEwx8bpO4ag1noEiZcZkGN60lrAIO4b4B3J2X2D1lKajTid/17b/K8oEmIu6bB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwbWYbCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwbWYbCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD737C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778988633;
	bh=nlQEwrCfoIwuIa++i8FBhvS1FVeWkvHHntOJ2YJ3W5I=;
	h=To:Subject:From:Date:From;
	b=KwbWYbCK9/2oIL6D9geX5iQSRWCbSRaI2EsSYAUq2R7lQCDBMFjuYtJOyaQ/0/yC0
	 ry6H2CY7GapmRIjm5zbiLaWgx0yhB5TqNjmXDxPmkJsavrxRBoGqeIr5dr3YM5Xy3U
	 ojrAmnxlSVUo65RBBmdLEBcnif0E7pxGukClaK62LNErV6Zl7x5z9z7rhzqL1hd2mh
	 q5ISrmAIuD3nvN1Ug5yvoGTV3TlFa5j4ss8JgaUPaOsY6m8KO8AKhxSHwyx6rPoD0Z
	 ZCPZzVpTIi6SqpC28eI4RgOh0iPOinS67fm3ihp16+D7FOI60KEOUgzsTgLSzKa0Ey
	 7IdY6W4Dm2T8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA457CD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898863368.1010.17766979806443456432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84704092d3c04f73fc6d6d32d63911b11728c9d71ed22393c4e2ae3c5acde742
Date: Sun, 17 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778988633
