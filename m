Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F84537CD40
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790870434; cv=none; b=JGqO4NB4KQUQ3Zxf3ByMWSk+B1nON8SYbQK3mBsFIqDJW9x5jvVpStDt1YW7jC+irP6QFDTfPP4kMb8MNy2cuoKVYasaBR/XQ1kQOOlTmzI3BGH3FJ6GpwXeLGvZSwSUkpu1DK9KIKXXCeXhMtMtrqOGYXypOXSBA2IPdK5jFYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790870434; c=relaxed/simple;
	bh=8b1ZeO3E1slhWxiRnV8fvJzvdepHQ+KRn3RWMG8pXVY=;
	h=To:Subject:From:Message-Id:Date; b=YMOe5DY42GqfO0goslFBIe2HJZTWjPz+adndAd7Pd46uLjmUfgdnl63OcrVObGux9M3FMsGdNhmvyarlNFsCLCmycET/hpD8Kku+VR/wpW4YCCN3SCQX/pVQD5z+K6Wzfc97PgpDUDmbAHGEnCSkv7PAF37Cy4zQWFdhSDzecrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u236dNN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u236dNN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4503C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790870433;
	bh=8b1ZeO3E1slhWxiRnV8fvJzvdepHQ+KRn3RWMG8pXVY=;
	h=To:Subject:From:Date:From;
	b=u236dNN0bxlIBcDymz5qpz6owPJpHdK5wbi/gaq8s/vQfWSqtPla3wDkgv7gp/ANO
	 lTIC4Ts8mUi4RHatW/zV6MAh9PNnTpnIVrZBQlM4hsisXOdGmqN6traDr2QnFdojz6
	 Z8kp2b1lMQL91DUd11W0liHl1OYL+O39ZXgmX0mjJrHp4Ns+UDiHCJatqYDbArTMkq
	 Hg7wEAVc/bK53zdZPdjrdSufTy6v01eRawmhfxHugYZhcj07vKVfJj8nYhEtranYoo
	 CvyRIQyON/uMLRYL51YKSQCWA8Gw+00HVpYFnGOjeP77sSITh/vTWeqU2kb1kO7Fes
	 7Y0kwF21hUj6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CE3CA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087043371.27679.17051876483566620199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6002fac928c469f9864ffd8879dc8f37d453692312e03cc1eec3a66b62a4f5
Date: Thu, 01 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790870433
