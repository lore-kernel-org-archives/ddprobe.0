Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BB62DCBF2
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768839833; cv=none; b=uQr1DGc0CQFM2GndHPsP9W9LPb23574s7hrK6YzUQXjk7HN06JRYMS1RGoVw+rgUgeoM6MN3j0g6OShe59sxmdM0pDWLB5yj4mAzCuC7PKfq22VXF/wQmVzHSgf9Z5zvhI+jsbe0cM/ralb/FMoYFdeEcUTvTTa8jxAmrhYscLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768839833; c=relaxed/simple;
	bh=Zd7AkLDiMrws83wZ4aUDIqtJT4E5hkvkHZwbNsrX914=;
	h=To:Subject:From:Message-Id:Date; b=rfleyw+ieaBj00JgtiMcUnPC/j3D62P9FJBPekw1j9Vl434aLOMUkyr+F05DjVprFxfyAUpcVVZ7eNKHNLeJ5KBOVL/cXl9dqctfrP1rjUIOrM6lgzNznbUTeDFhti6kIjVzTdGUUO4qnQjtkHh8PgUkiSB9/1nUsynOCimaA9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cp9dQdgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cp9dQdgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D21CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768839833;
	bh=Zd7AkLDiMrws83wZ4aUDIqtJT4E5hkvkHZwbNsrX914=;
	h=To:Subject:From:Date:From;
	b=cp9dQdgW1O3/IbiMsnroHL2jHyLPR45HyM0Qz6b/dNCcs4VpFNHVrg4vWlCMBRD2+
	 WPC75+MGrb6gnDPS/qgDPbxOgrFBk6NVg8kqaoqy2vieoWGQelBLA3Hp7sDHxHaxjh
	 dOMbJm+m634AzdGiR6aQYASJdH6IsdIzhznp62UjAMr/yOgqnfebWq/aQr5OIwqK7c
	 fRpxLC0jeU2JMvoFGptnwn7trfoAP8I3Zlf+pNsmEJ11P9Z5CB/qvKrWgs2GHuzFRs
	 944Csx21pvB24lNpk0n6KMqUNSMRxJq7MOts94n1+uTD6XnfWaTrLFcqbdbTvQo+j+
	 XThRRa1Yr8dbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F269D29C2E
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883983357.13819.3961264298017286316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc85b5cfd67235eb35a0347dff6b3cece60d33f858115db6eb95454cba243e7
Date: Mon, 19 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768839833
