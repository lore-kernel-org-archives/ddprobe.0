Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1F61F2C51
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736261754; cv=none; b=Uxzox2EO0yLBiYngcfIgekMQ/VtfiTGb80zFN3Z2/Uabz5yasnH2fdXT3spvTiDX7+qXA/GDD3FwvlvzNltAL6Ydv4JhjfxnID0KMmCykhrMwjFXTFYGwY0brRHNUrT5BXAd582gojOJ0237Zh4UHzmJjKrOlpBoCBGa315Mw9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736261754; c=relaxed/simple;
	bh=BtxpFYnoz2UT4rYMA4SnIVU79t8Bl3fp0V2UlixSpQQ=;
	h=To:Subject:From:Message-Id:Date; b=MgN9RR8uMQQIZKG00TimowUMKHAQruHGx0axJbYFY1vbQ1I02NNK15zLFyknP0neNxXQc8NSemHt7lsW517aUbExUzpb68YCmFkiBRpqyqRicKWWv/B88dJC1aKcU6RPYMwbPg4F93KM8MLi41meHNXODS4sEOEsxj3w+uxhDtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXPICOs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXPICOs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6999C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736261753;
	bh=BtxpFYnoz2UT4rYMA4SnIVU79t8Bl3fp0V2UlixSpQQ=;
	h=To:Subject:From:Date:From;
	b=eXPICOs8AFjWWQyWhnAeUte1v+lEcWbY4yJ+7GflzrfW2pUAh7Twf51Uk84iXIevu
	 3dL4b+GiijwBAyJWHtvRL9MrUWy3oikSbGfQ5avqxvlahPOJV3lyffxxL1O8DS4kju
	 3F1ye3CVfJfSGYKqR8lQlGrl8dq/lTdsxmx7ZoldLfNCGTVGRxHRSWW2Sdk2HRz/7h
	 d1StDSl4d74hJb9YphdNNd/uWjI5JGaO6MBL8VvAK35wqF2A3oDGc03jmhn5dUH4E2
	 RSDbM79jFFMurcj8cW/+bTQv2S9CuttOJl6f3ps3gknVPt2Lu24iu62LqtSyqvTZHX
	 2kcGgU6+2qKzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91704E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626175358.7716.9250607090055984535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2f21aea1f3f7658d1939e495d8993668a4f368d19a139373f1f442d6290d78
Date: Tue, 07 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736261753
