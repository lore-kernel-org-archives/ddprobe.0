Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234D02E8E09
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775024094; cv=none; b=aGwetIvWa7fv9Mx6s2SyYwumaHR6Trq75EK2rKWNDGeIWboc3cF3/ScqmfrN8OXKsnExAb39EiW/LCmX1G4NwJEGj7bg01//Oervr+XMCJWSIFMpton9eWC0mC0cU7OVA54KHisXQ5pjNCOnAZFpdq9BUs9pHinPjNwHPH7Rgyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775024094; c=relaxed/simple;
	bh=jCt427A5yMadifGLAFOKyljYBsJwGTmHIn/qzDxXzXo=;
	h=To:Subject:From:Message-Id:Date; b=ht64B0DtPtofuhGjPHn5W1jj3BhGJMQoiXKX/cYTHMVSinDhwtY8dPLXIMNnuPTB4JK/JZELQuVXnpxoSV+BYTFFXt/jMtQ7NJ9G1kriUd3XGR0qitZjEHuHMyujBja48cl5SBXSTlYRH0adbso2vDrfaojYCPxrJIu4trohVGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zpol44wR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zpol44wR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AA4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775024093;
	bh=jCt427A5yMadifGLAFOKyljYBsJwGTmHIn/qzDxXzXo=;
	h=To:Subject:From:Date:From;
	b=Zpol44wRpFGYvjznGcMjRNWcnJjahLnNjYMevM1iYWR5gt4w/v4MtMWoVsV9Ks5V1
	 omCEdBmPkR/ZlI4wCHVDIc8azvUILZixAx5vbutIEllRsCKkULAF7FtMSOpsoIv7Rl
	 nxorIEDfkhhp8p1bOx13KvsK2AVpmvXo6U/a2vhJrioYl2GM8Fqiy2eE9EZyp5zUpO
	 6976Jopv5YA1ZI5yn9cKJ9lBv+QjMxMrosc2FD7W68g9kwoMnBaMns+FEz7zAlYDu1
	 LOjvT7souLp62gf8h5dG5B6LaduLyomFqlQy4L9k4QXmTd+C6HfIDh9fksi/d1PflA
	 19fpy3WiO9Ocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5341076374
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502409363.28218.16910114658859849728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fca5daeaf7510c8b4af838bf1e23b324f8e3883a88941410114904eda6c3c7b
Date: Wed, 01 Apr 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775024093
