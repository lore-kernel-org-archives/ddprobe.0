Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669DD176AB9
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665703; cv=none; b=HjFqQmq2v5QNgIE+5iIbviTIyDPw9Jpj9/vXtCuWnbiIy1HWeGQ5+l6tpwRTEjIzAmwxZxK9cl3Wg/uo2il489so3YIVGTafB9YYSC8ylpn0w1KscOD/vn3T0x+jh0Y6+ZD2VzyTawsgDBw1P3uG2ASI1dpbv+Fe7a8ZrO5jdgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665703; c=relaxed/simple;
	bh=kl2UAyyeNjn+jWQsqeL1FykNAWXoVR3O6LIwcnh3LoY=;
	h=To:Subject:From:Message-Id:Date; b=XKnbJVxCA2Kzt8NDjZ6WFjpy3RZQyoncN2OHTSQsRL5k1HyR0Ahezxi4I4aLK3VOyHVs4l9iz3aJcmOvV6w9wu+8mb+UhRncau4JIQ8xK4s1qp/gfUjCueLNHQLxVn4TmniYgeszrPE2vtLv5QMAYvViXS881/d+fdaNGQBDAYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iy9V4fuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iy9V4fuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AEDC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718665702;
	bh=kl2UAyyeNjn+jWQsqeL1FykNAWXoVR3O6LIwcnh3LoY=;
	h=To:Subject:From:Date:From;
	b=iy9V4fufER/BQ0hAj9liR6hE1pY5CLKxwYu+4F0OFjVSEppbRF6J111SzAXwfndDk
	 NXn/jxBW/jZdvbL95/+REIfAK0iAM6T15MtJOjDVmr8VUgi6imrzSos2rTSww6glu8
	 mF4CD/3hHC6trYLzDrPeATPjlAlms5PzSh0QySUQwRZRZDaZcSJ5AbCvCxanJn//c6
	 VhXlmKPHOsks3RLkPX14P8X0PuOtcMlpY+oDoIp/CQYCtZzgZ3fCc3l8G4fZw0Nc/R
	 OhBQFzyojy0qB8wPhaxEuMpVRr5C6vgo0BZ6i2DWNXLBqYEE8RMpYcOCVyxPXBV5GN
	 ZeM9oPLpX4Abg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD669C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866570276.12961.8807961335174554226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7b0b0d997a89c8fd2257c7d3d326108ed45218796aaa3bc78a7103e751ce6f
Date: Mon, 17 Jun 2024 23:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718665702
