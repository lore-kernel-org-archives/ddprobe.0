Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD9823ABBD
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769407434; cv=none; b=PAkXgrflXI3iECqDZGCe6p6HtDJRLp4QM9zYAzkt0FbNJwOR6r9hN9wANU1gzKaRXYHbirfIIM0pkiqhKw8N8otLIMVFKoxEUp685VD8eS6IeaRbx/tT7aE+Nc1LOBrNGEOaoRZozPwIrdFO6vIyXf2FGryb2DyFF5ujmE+MI/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769407434; c=relaxed/simple;
	bh=8M5vPeVj7vlFJ+mIlTeoQ+HM95pLDfeLeOg94cgo73c=;
	h=To:Subject:From:Message-Id:Date; b=BuofTZFqAH4tZEcPgcxBsBQZyQ6uZY04VHadEiZ8SIRWZOOLlQuvmpfiyxvVGtUl6h5je8CfaEva5BX9RSz+PZ/h+X13xQgp0LahTIGownPrZ+b/UpsUoa2VGKbNxAaCHLI5Qe1tbPlQ45V/hxA4JOVZs85wLoGjyAky79M0dew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkYfDPVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkYfDPVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B76C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769407433;
	bh=8M5vPeVj7vlFJ+mIlTeoQ+HM95pLDfeLeOg94cgo73c=;
	h=To:Subject:From:Date:From;
	b=gkYfDPVsDqqpXJ5iM06gfAjCOgmrWnm9GQ2Mg9P87ZugN+DVmMzxxHM5uLYloS3zu
	 kzTH9ERRHtbWAVknUWjjeRGmVqfJhlcCle3RZc6s9Xllw+0CQjGEqmadu/MWP7GOL1
	 TvI8YVtgVBzZGd338eY+iCKRfibDJjUPlElWDKzhZbXSImFlfS/fRFk+tkrLmBLCiy
	 M55utI3TQq0wpCXs9Uq77gOXaOouHMvw/t4BbbGU1Kx4Db/1ReTR5UzyD7TTC3vhmG
	 dIfC2q/fX2b2p1mwbRk5GXIGMKH434zocyQS3PnGk/u/LIZh1u5wGcdpsM9oNzQfQy
	 Da+DsT1ZfL+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB0BC88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940743363.31749.9854720102472284350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0de7d45491b173180c8f92dbca1d794362d423cf488a42746ff776b763a0cb
Date: Mon, 26 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769407433
