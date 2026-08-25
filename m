Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33155140E5F
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787635834; cv=none; b=TdY5xIH6q+s0ty841E0Ef1NaLI0Agr2RtlacU1VHF5Bl87/xT7xIi0dn+1jq1Dy12Nl/hj8Skr76LgW5wJw/QUzoEH3zNuXsn6ZFLWMFsGbHKnf05EWAgyBVc+4co1/YpGt3s2qOaHH4jnPHCGd0ZTTFkcHb3pKxApzRm2De4P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787635834; c=relaxed/simple;
	bh=dhE+fC0vXdihb8OCoa0fTOVQN+wXuDRyJj/FoNGIR5w=;
	h=To:Subject:From:Message-Id:Date; b=kQEBkLjkRwRzk+Zmn92fnPrtWBEYjJAcbLHa9W2/MG/Vix5hE8AQNHzrKkP2RJ9MsU6ODMo4cu+CbOrLnrEYYj9p8K6qlRQDdWrguRGpLIcw6+V6bbOdRrU0zRr7EU8uxYZ1WZlPwcE5GWlJpc60GAv8lUuHnjzGJ/nAAb5tNwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWR5SGa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWR5SGa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43CDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787635833;
	bh=dhE+fC0vXdihb8OCoa0fTOVQN+wXuDRyJj/FoNGIR5w=;
	h=To:Subject:From:Date:From;
	b=BWR5SGa5UBckjoNoHUlVpDgYgYScMID2qzG8QFDQQs5M7HVQL5g5svXAdXAHHbta7
	 x5TE9oUoBtn+KZ3LWfilVlYIQQ9m+wByW9pf/bKSPtHbBumA2Vhrhz4ve7OfGic1k4
	 9q50eKz+I5liI61gNkI2L/Thcbn0D2DgaJ7vkgX9E6z++gpcn5/X10iWljf5R4NNAU
	 NZbnGn0R4ew/CFecquM94f+yaknlRSefv46YEkMJMouoiV+whaR/hMF+DawbmeOopX
	 RivnnRaRPpuIH/+UMTH/mxclIQKcOSAAOPE5g3QNAGZIovH3LFFhrRH2TzYaHJn4lg
	 0pLQN4oKRLLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBA3C5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763583368.7701.3352585608285664267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfcfa1f1b2aed09b8fc883f1da7a67d3d685c72fe9ad5df6e9a96acd8458f723
Date: Tue, 25 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787635833
