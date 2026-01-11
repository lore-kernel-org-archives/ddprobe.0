Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CBE2F9984
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768118034; cv=none; b=VASCukTwTvkdXF8L13Qcgaaqp9UHZE9AfTrvztbNDylG0/mM0Vv7f2zzplS+TLotRWSM6lWcDRlpxCJXXQZQfVBhE3FeMunBSlehMEPufdHtbJI6oG5x0DJF/Xpeyyawg7GI2xab1EdvBIL3ycCVvc627p2CuLScpSYruTsCRDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768118034; c=relaxed/simple;
	bh=pztIerWT2oJGB8Zgy/gTbmFeN5f5J0C0vQr9N6DtFn4=;
	h=To:Subject:From:Message-Id:Date; b=MTk30eRRF3iLWbIzlI49msBVDjj6ZDewZKrVhUdB25wZGhsNYWyJAxb0nxuyQI6O82avy8hGHrrQNFJ7W0DXMPooTMoBBcirAhPla6bqy3aDdnZktqsE8aIw01U+TZLiXQPpAxzoZWFZSOrfyjhkMCQ266H7yVIxa2snY5dedw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhGdPyH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhGdPyH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A699CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768118033;
	bh=pztIerWT2oJGB8Zgy/gTbmFeN5f5J0C0vQr9N6DtFn4=;
	h=To:Subject:From:Date:From;
	b=nhGdPyH8pWcSSiIzn/dpPfOv2LTCzfLhCx/vtApkJzlS9Oir3+bs2elIhX4pWZrz6
	 oT9qnbrPHtzMx0u1et9qZ9plu0j+dtoRHfQNtS29PQIxEKjzUvbPnzGKsRYuwBTpGI
	 pGTFVxNAM3DT9tHjbfbMIStb+8cxZZNBUDYvlA4ajbClo/etReB27o9RKe/38WAIx/
	 9AZYlQY/vYguT2RkwsfvfNBnQCBfAsuflmfMTUDL2ep6gnic3d7xFhvagipWG4MSYy
	 dh+WBt9x1jymN4wxoBhXNLlydWKPCnk0keu3cLvS/IzKXEwVYMZJONpotnINuYx66W
	 0a/1RL5BpLKAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92776D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811803358.3151.11933012178311003287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fddf07854198217d80d4d1fef7a5518e03a6458fcaede81b3fda890d7b30777c
Date: Sun, 11 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768118033
