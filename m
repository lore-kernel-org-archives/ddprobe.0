Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AF5156237
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748283594; cv=none; b=qRQBh2pL2wk+6e9ErKanY17eblzg6ZKb06gI9GQEXnKecpFS3TYtbiPg2EbMjsnyezS4hZ+gUGy3ywegt7dhaZN9GssbZZfjyuDygHFVqpNpms2Qy8NNTOXH9KrnWUYGu4EH/oEwNrkLt3ZCV1lC2QmU9PhgUZkuvVRge5J51uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748283594; c=relaxed/simple;
	bh=wmFvsoJCsWepUYpiNbe+CWzbm1tXj9SNkZIp3S+k69Y=;
	h=To:Subject:From:Message-Id:Date; b=A5oeTgSrdNGCUbdYD7INQf4/GOPY/XTDR3Q4MkyXI8p5h+oXyhxBwrKDA0hfM9VF/nq4r0hN/YzBva0z4uq4a9GyWbTprekLDRNoQ5bdVfNX1YQlSC3wig1wXTv5Vs4lxFDOD17mw9yh/o3lzKCXufMGkbjjyAmM/RtwUMRHCxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXYDf0bM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXYDf0bM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A507FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748283593;
	bh=wmFvsoJCsWepUYpiNbe+CWzbm1tXj9SNkZIp3S+k69Y=;
	h=To:Subject:From:Date:From;
	b=fXYDf0bMpJuZBKi8wPSG4lznTNKd+lR8DFemsDROrHv2RCQuc8OJPybBgIE3n82ey
	 xyJejWL15ec7qegZ6S8eiV39JM6uWGgsW6r8mL2h2H4Ij/kzPGaVYRId+Lpoo7Vwzy
	 Nm5EdWgCgVL6/Lv07COL6VseIrmjaX00hnydu0h09j4QI55sixMx4QNcPhP6/ySnkF
	 xjLEadAt0ahBDIk2sx9yXvT91y5xe1bl+nCifPUJ2lOkzg8N6+2512U/blIb/ltZLF
	 xRdKIQ0YaSCDdeSRllhPWqeiotYUECeeQt2kCJC5SV6vnf+SFkCiGWGfBeNrWw+lGv
	 eReEyhsN7DB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB3C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828359357.1247.16339897218508096229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c2abe04a91773d2fd567ecb1937f3915497c9f80c4565ed2708515930e447d
Date: Mon, 26 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748283593
