Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949DD246762
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788697234; cv=none; b=FQhBttU00Z3JvgosJymegOMlGO0btIehY2CeEAIfHpHAoliblYmOcSXefgVDuFrRYu93vtA5mQxZwVoEtLs1f9tAj6aUd3VC/eptU5qfrHtWyPm/GsPRgGuWcF4Aty9han0SqEHOsFO0MeR+m+ulmy22s3CxNBoG1gCvmYLh8NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788697234; c=relaxed/simple;
	bh=EyxzeyY4KUP6xlraSNIbHNBeMefbYbxDQtAHkDw3F+I=;
	h=To:Subject:From:Message-Id:Date; b=R1FkqmyhqtL/POJqOxUdCgzvRbN73QVzRqNG72aeE91dPflr6WazLVY6yEVNbmUfM0J+AmnAhMt+lkHcA2wI3kut/nlovBKAPwmSy4/sQPflCsMdaf6RfAm3taqbuy+9MLq9PlvRemuTBmPpSUM3m9DLKnYbKPtTeOJMZKPTml0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ns09DBRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns09DBRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF66FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788697233;
	bh=EyxzeyY4KUP6xlraSNIbHNBeMefbYbxDQtAHkDw3F+I=;
	h=To:Subject:From:Date:From;
	b=ns09DBREDQBg8VlbOkK0guwEn70sabMA/xcupUPMMPnqJfRx+7vt+C90KSrvX95co
	 O+I9+Nyxjg7ayFGxUKWg+doZJZiUN41FmOLniXfg6H9FKkKYPJ5Rwuz10MViioR4x6
	 CoR4P1CJMn7zGAdUX79+afwlLGBbp2tJ/OpGLTxJiwQFuHQEfotFwChHlJ04dMOanq
	 Jn1w6OlmVHNlC7eeykEXqJszjzVYTrmlCGrbwz+Mfy+1Dmwo1JZlR8vDYpA7DyLrln
	 tZCx1Xx6UEj5c5TEPiJxUACQs3GZg5y8HZwdfEtnUwI1LZU5kNaJYJaMNPXD/J6TxJ
	 4ivZ1Fv0JCvnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC74C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869723369.21465.16213150224007197718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27eb000fe03945b83c6d058ff313e00faffdf71649dc51f0b26c65c929ab68b4
Date: Sun, 06 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788697233
