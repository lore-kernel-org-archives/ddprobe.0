Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D765F54A
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706972297; cv=none; b=punTJRr3JZzpO0mvIE69ULnoabmXJ22cKEWV2U64MjhUCasLcu7aAlJH8oZ+sfUxji+ndnCoIvso1JmUZQK2XNtsIv09hItqU2OF1RmVOTb3sa7gVJVeQ61nEs6FEO0XVAfprwu5vJgGt62IXtxD26IdGkDByNi69nNOL6Gnz30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706972297; c=relaxed/simple;
	bh=1r7G6pDRL0/ayoav7Dfl0GT0C+cBVg4SEuGiv/29/30=;
	h=To:Subject:From:Message-Id:Date; b=hrrtm5CX3tCFK322dIfeGr1L0fTPgj00M9Gcf+spzrJtaJ9h5dLoNzUKtWp8GBXbwTjFu2oKrGcOYicCXlmClyPVip/jACXNiVzkzFJtS0zzUZ0bqraI83ewQaG5I1lhs6VO74okJimyx8DIYHWFjnRLtVTw5VuBC67BdiN9Tsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWrKi0zX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWrKi0zX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C0B7C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706972296;
	bh=1r7G6pDRL0/ayoav7Dfl0GT0C+cBVg4SEuGiv/29/30=;
	h=To:Subject:From:Date:From;
	b=KWrKi0zXK4icbbr6jAxxbChihnJ/ZoiAs7EOTHz72/C4HihFx6D/a2zEq1zopDVFN
	 5aIoA+vwX+aP+HIx9duviuKFdvjk6CtogrK3Z0EsYkt8oceuGWFvlEnwuceqMrcJB2
	 zHPdLBYOIzCLiAozFtp7OjQwYTR4s2RhGtNwTFvuehg/cLe+Gc6pySPzeL0ZDUO4jm
	 UhV71i1t8/m3dy4RIjxjL9iHijFc+BuIMz4TceoUJo37XeKAtB1Gg8+umW4lHBN3bW
	 c9+ipTIwhXvgOT4rn149heQR7j7yI/+AjlBnygbgv72lie+ReCUAC8P9PhJSagMfwk
	 p6SaC/spgxCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61899C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170697229637.29866.11218242405485890125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e04399a9ecfa5aac92716997dd4792fa48c747bd9775dc77565cb45ccc975d
Date: Sat, 03 Feb 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706972296
