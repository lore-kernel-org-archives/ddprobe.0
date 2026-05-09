Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AD82FD695
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778351254; cv=none; b=IpH92xo99OQFgUetMMWEKv83/0crKxQqcYA/jOQ3D/s6HAtafa76/9UcRIqKM3TaNy8258Sy0ef3UF3LA1TQsFPtQSEvLKwTKEFndMRXLLOJWbfhPvLXYTc3xYJIu1zM0Msf5f95mbprFiAlPkSZIQNtqPZ8NkQ1MB14TaeO6Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778351254; c=relaxed/simple;
	bh=GWh/UwLoMmc8GklkFnXTKOVYadqTcjm/FBRaWU4SrgA=;
	h=To:Subject:From:Message-Id:Date; b=H6P7ARnwO/bf9P6U3R7KAiH1flDY0dfnHj6EzvexQjcwaG/cBP0gfDSdhfuD4wvHKzh9BQe6U6FLV0n+uf4FJGGaEa5ChpNESXYHqqGtD+yCM4bgtk3KIky8tQ6lYipyUs2QJxhpNlU1rtuqnW4vQ3VtOoY1AIm8O1P0xCBSPDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzJGkfUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzJGkfUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5AF62C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778351254;
	bh=GWh/UwLoMmc8GklkFnXTKOVYadqTcjm/FBRaWU4SrgA=;
	h=To:Subject:From:Date:From;
	b=QzJGkfUVeZBlAuBB+hWovdR702AMY60olsafOM+/wZUxEf77q8Dgl3Ud+oCVs0iW3
	 UbXtmPMui/M3ClxBjDxW1xPg3vjXYksMpmekqckEr1Z3RjmRC9YrrnrCkmPiavgQ8J
	 TfJhTmhQNiPrkHORCPm5axh3zjeiFtTtLgtBCownPDcqH4cEWgE4KVFcsb+72/PAMv
	 rcKTlU3oMrC/nVGCNsFz9LIG8ftJelCancRkbx8j4mWp3j9L0jBVNXS5yZwiDoiZgW
	 wUV1SHptnlKFJlwNoxE9DqRHEhSlAe+tmRl0+tipI1tPmVvo7oStB9zJy0HfrZUXBa
	 V5MqadZvPPj+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F145CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835125383.29608.11318512162479129137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbff74db791485783bdb1648544d42445cf9f17a19ff868610181342429a911
Date: Sat, 09 May 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778351253
