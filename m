Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BC33ED13C
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774949094; cv=none; b=rY3H5hWC7Obe/Ocsa6wj1FraFAB+Had3Qlm+DejWxspjG3AQAzH4GqocB3ivDDKxMI4JX/1n5XvYUtmoblHcS1TrRYfk55E5IFXkyja1yXREnw/OX3PKWo8T4KLiM5A7AS5bRMBZdETEZO8MheCQUd3LxIaN5qOG4HrneQcXZ8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774949094; c=relaxed/simple;
	bh=lbYY72iNhRb9nyAUu3n8BBRE09vTEFQkDHJ4rzAVH00=;
	h=To:Subject:From:Message-Id:Date; b=SX9nqt56xfimDuMhrXHLq+jLdhYtgp9+QxMm0VNb46vl/XTr3mg0jU3fu0bT3Ylt+IvRe2JwDLmR5dcjk0FmkGJNd2edGFMIPl5oqqWhk9dfU97nfTlqIwgmErn7QNAyLiRle0maiMsxmObNm11lm0QG5cc7SmHEK3W66csVxQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBKGXncF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBKGXncF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2964C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774949093;
	bh=lbYY72iNhRb9nyAUu3n8BBRE09vTEFQkDHJ4rzAVH00=;
	h=To:Subject:From:Date:From;
	b=pBKGXncFmDBFIZGrn7oRVimKireGxHaQJcT3+i7T40De5Ogc7rCIGwJEaYXHnVDXT
	 9nToZqA26VS4MvIe5TRmesxPMBZvSU08w6rDYhHun4aX7ccBHe3YO5mTp6eUEeCEp9
	 grzV8p6QRFfx7aoadf5lZ9IJbN06HHJwjHz/9bY6HLx2eShqiCamD/ViTXR6nOPjIu
	 iPhnStfZ8d6TYPJ7tN0rWSsMnC1QSONUI8LcHmdDmI/iO9A9XdHeIFtqOpk1lXquWK
	 Q099OKa4aH5zhFu5XU7XVEupNtZC/114ZDZRarrIDTkpVY2m5bMnwfjgcyxpeR3KPK
	 tURo/aCneeatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0FFF60F1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494909358.30204.10642125435017481780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ab0033fc43829969bb9426382cc5cf25db97103436dd25aea8db805962ba4a
Date: Tue, 31 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774949093
