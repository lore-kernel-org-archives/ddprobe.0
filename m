Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D782356BE
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784923834; cv=none; b=Woy83hNGZ3z7wmudzLvSTZCkrB5NY1w6/XXj9cHfIkFDSwm9xYGBkLP2iTm935yq4gH5QHb1yPUfpY3zbQoejF7hC7ycEu35AXzvEJ+UGfzztYdiqts4exdwPYV3PGAB3cHOw3aYMb5BLavWLlMadSfxp3ENtfGqzV5eBfMArUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784923834; c=relaxed/simple;
	bh=R7gTirVf7tfg7MHEKrlqylHarjKHPEDb/zwrQQucVzw=;
	h=To:Subject:From:Message-Id:Date; b=EszDLPW30V6lOt+qhU493VLr0R/qR3RQUMtnst/JSrZnsSHk/v5GUgnabe7MERRySAnKqZh7ymzwMogm8IAKX+3BzUi4zIveNxMIisxNJ2R/LyUv9yavVWhnCw07/wn0bGeL79Pwgsu2UxNC6+dhEUulxRsDkFnRttcrPyXz5ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMGMo/N1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMGMo/N1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D009DC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784923833;
	bh=R7gTirVf7tfg7MHEKrlqylHarjKHPEDb/zwrQQucVzw=;
	h=To:Subject:From:Date:From;
	b=SMGMo/N1eHAq8PTUFY4ZzA+BmxoatouHgKm4gM7J+I3vjJdIpZ0KxqZEvbSzNgxds
	 WHvfb2TzGAUDH8+X5LWk96ZPw9buJcUh+4JVKU1L74z1pYcdwDL9OPyrqWCUPHWhKR
	 zsQBEYeaxUQNRSsg4xCxiINHeFMGpQVPA5UohjczhPQOwQfE24+N5YUcKKL443ptde
	 9OVUTGDFm7o3VkA/A7416g8EQi2UQVBd034S0J1S3co3RvLvMJkm79oESMlijsPh53
	 uW/AO5JmLNSTh7UegM5/OAm0utUMvVAwCemR/c0Cdg+yi+QJV8lg1NrbH0wMLc0fVR
	 Ba2CojFhW3Zhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD9AC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492383368.11930.10249637516089390547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe9e2333aa22e8199835c2c95d737e2f0610ce98b787d7be977f556dc1e04d5
Date: Fri, 24 Jul 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784923833
