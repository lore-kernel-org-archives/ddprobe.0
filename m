Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5009232E68D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791520834; cv=none; b=RcP9qkwYtObOV6MyaFyBtSQlfjAu0VNCcPiRmshikk18aCGLvhhA8A0FHZtz234OZciz1cMZ0fS+2itvfu9y1JL2qdLqjuwYVG4bqA6Dw2Ozi2/it46VvyNhGPK/7pGd7LL7YoVZxDA3VfUZNCJ6b7/D8fCPUogVV86c3I5OhfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791520834; c=relaxed/simple;
	bh=te7TDFSm8mpYEzLT3FMCBaoI4gIF+PIMz9IzmfCVy+I=;
	h=To:Subject:From:Message-Id:Date; b=sL8Mdpx6K+qGqd6lw+NKU8yduPY93a5odXy1pVpqv1t/G0+IEOkL2EXRbYO3gOXEFwCm1xVTvgruK2ERVT7TweQYyGFlUXf9JRJP3aq5N9eb+YDE/cxDHtLtlA+AFUzP+B8GHA0ZTiPE2T1a6Ekxo8nOMJ9mi4PdAjououc0m1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qhnecds+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qhnecds+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D627BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791520833;
	bh=te7TDFSm8mpYEzLT3FMCBaoI4gIF+PIMz9IzmfCVy+I=;
	h=To:Subject:From:Date:From;
	b=Qhnecds+m92lLYZ3t95E+QLRiQlpGFKiIhbUUFjaztj3365ssl41D12uVDEVjhIAG
	 AVG7aSYKGcjdYCaKPZpzjD71yGL6DRFox45NzL/4QhqcWpmtK38EPPNpTtjke3cs8Q
	 GEqM1lY7XRslfrXZ8QiWFNZtD/WsS23vTyEL6FnEhl8GTq8C06PZF5paibEWkX1DuK
	 xCwsXgGAPdd+BxGAiMaevFtJJAZDqEi89JbemkVzry2vnNJLRtbC+1fy2KnUzTBPkG
	 ctGgzK647nYuH48xLiw74obkT5lYZomhtAzT/JuAB1CSbMTrfFeuh1Jk48/AA5p1UF
	 fbquWM3bPdBKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03DCCA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152083369.20373.15399151895831632376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac966d75bb621d4a2bae73f866ed7e8a339123c7a48261aa61010086b43734ee
Date: Fri, 09 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791520833
