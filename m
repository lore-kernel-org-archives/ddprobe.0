Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C3919CCF5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781420194; cv=none; b=iLldGsikVALSom8rS5rw9iMZ5+xN/HlQST/cqG8++d92R4GayiybsmySrM0UfpQoM7d2buvzI0onlSia7fuwsLca3hRewg2iRH/2QMfmNhCsNT2zLxmjhuMXfSYfoZkP+KEYGHn29r2z+lPW/DowwOWD63xuvLtf49HTXozWdgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781420194; c=relaxed/simple;
	bh=BbLii82t2sLx/J26+m8LQ2U1rJqcoc1Fav4dGWoBJes=;
	h=To:Subject:From:Message-Id:Date; b=oaaTDY/rQUAEOTaRWsIjN3emiMM5Upwi2p37wTsXGV3Uy5iaX9gptu1lYZNkFIQJliIdHgcfgTk1t1Vo5gqPYRSSQhSGEMOcT4oWJ1Rvi0mekdFeouubRvMSsK/QNGvWHifSon8qnrbZ+jh8Kq4/UPCXBcMm9qtE4P5QhANiAvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGMc3xAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGMc3xAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB03EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781420193;
	bh=BbLii82t2sLx/J26+m8LQ2U1rJqcoc1Fav4dGWoBJes=;
	h=To:Subject:From:Date:From;
	b=AGMc3xAusRSrTDVUzzvglEl8tUDoZyuifgETCdxNofwIFAjH5DtlxOH9SaS1By1tY
	 tl85fl6YmCI/gn+eMayaDKae29hTddqNIaFeDorDpagUepZuK4lkvMKEYamd1lhBzg
	 ekI9jpZPyVEzBG+qBV1Wcfmo/tscJ4L8x9/jcLX9vHZrWw5kWdf4fC/YStVNveW4Cf
	 Iu1pDGfgxtL+fmZgP7npk8JHkmYUd0pEawgbgRx2ZFiBaU/SKMFNFy/ZeGmf88UhXk
	 4126gHVNjOg4lpa2hk40sNkgwYxyEriao9gxwTLacG2TvQ3ABLvrfnq70CRtkcqwgb
	 fqVzyPfZftimg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B7DCD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142019369.7762.7487601745975827758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb16e2340d7bd89168875d7c5542b26c15fcc9d7f28f0b321dae089e5031cce
Date: Sun, 14 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781420193
