Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C50531CA50
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772069694; cv=none; b=IdKoxUqiVEoydBZEamMzMLTCZclPlk7MrQXF3jMLt+6oiMzTqyCYBH4D7Eem+tGpbttv7jltYFScuey28pmthTs20VFJfrBC447ybLGY7O8UR+pMsRLilJDPZrfsJ+BysRCuQ0Qqt1HADLFj1B8JdQxPGzNFsfFdO488gNXFbIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772069694; c=relaxed/simple;
	bh=s39Wae1dL0DCU4TcPKqLXY2liBqyjN5bi1fgJFrnvGU=;
	h=To:Subject:From:Message-Id:Date; b=B8u8UQSbWbz9NbUelVPMOV/gUCTdt4oDB9euEqMeCIzFoyxel8M3VI7qPxs33PcoeymenyeM956VOM4BRfNblYGQvpCA1153tO5GjxeGlYpIEg8+09sV4ca/ismZWGtWUItjPVgJt/Fw2Goe4kjTv8ZmKaa0lkFRX/OpZ1HqwM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXlgfrLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXlgfrLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4A4C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772069693;
	bh=s39Wae1dL0DCU4TcPKqLXY2liBqyjN5bi1fgJFrnvGU=;
	h=To:Subject:From:Date:From;
	b=DXlgfrLTPJGb7sU8Zidll0ceKBUbicEHam+cPVcUbE8P6TnSe7JzOizKsbARfJgDO
	 /kc8sAVp/ytHBF9QvtoTCFVq+KRU1jrEHcnB29Wahi+3BR1kM7eV3DYoi+yt2IJGbM
	 x18NGpq0Zg3Z7JYZXDkX8urX4Afu6wGlgo4jzVdYtf7zktWay6nppRBLchZSfLAoE0
	 bSfmNWqyBKV8aSQ8u5mwOseJa9j6MZLQ3ySdhiFHZTel3DyGHVxl1Wcxg7oEKPTYnG
	 DPzH8GdYhjnmm0qJRUiPo1AYpO3cxN/JShzDDNkr9WCeP0wuz7Nt5fvsLByBWMJJvl
	 h1kYsgM28Aeeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D52FD45FF
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206969359.15704.15859813206803873279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ada735d4ddf70125636c24ce3fbc94df89daf1d937a089ab171620d120672d5
Date: Thu, 26 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772069693
