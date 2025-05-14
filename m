Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AD917A30B
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747241995; cv=none; b=QkskphJ3u26ZBdQgjx5diqb3fjda/kOcET9GPrSCyPnlER6XXt3dlsXY15mCgVuoe9398kD08KrHbnZ+5fP9g+4L5haxUNeHyqldEFtN/USqrhgngiPkGrTNEqljrBGx3ZP1+nOSRoamnOGtvs6TRhg2nln0gjRVaE8c95/kEz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747241995; c=relaxed/simple;
	bh=oS3QGYMkf/to8lReJVhW2ABEltQuKw/gxH81/JbHYnk=;
	h=To:Subject:From:Message-Id:Date; b=Kx6+Z42XpUvRFQQo/9DmkFYcJMgmhD6rvufPCZvsPWB2LAXlt2furIvB2czgxkPEZTpx6sGhGHg/rPiEx1U8g1nKjyaVAeG1zLatYtkmWwEg8l03hRhGWkVYKJY6G8+tRW7Sv2Q819egnkPxhsSTcLVITA8iHduluhLCHZvU/ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuaHkQs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuaHkQs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA528C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747241993;
	bh=oS3QGYMkf/to8lReJVhW2ABEltQuKw/gxH81/JbHYnk=;
	h=To:Subject:From:Date:From;
	b=HuaHkQs2ORenCo6UuJ3QKNvYAjXCNeGwjhRCzDCO06MzJzIPLSbT3ieDVlJftn2nT
	 KUp3dY4Q9CJ6gK57Mljnu316uxPnoZ/Xh2RIC9CuHsDDkM4Wew/jMjkQn019EhCiUL
	 ghOYp3IsMvrTvWgAXP8VKbj7Cs7ZWR0EozO+FZKymOLKH60jp1cZEkr6+Skw/zymGj
	 sKjTyKc/WJmea8DuoLW5SQMEhwetPUbK5zpUmT+WZPrBRxlVICfA0iWleF9Q+UKmqT
	 tzvo2ZXNOZzWbehlxV6CgLjXWYQ0OkEB70M9OY5oNml04O41zYSAgEnaBI7wj7jFT6
	 azOoE/Y7VFfCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978A4C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724199361.3298.15366016652030974069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda98326f0559bf0eb85c5efabd4424826fc746693ea0f79817a66f9c707b052
Date: Wed, 14 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747241993
