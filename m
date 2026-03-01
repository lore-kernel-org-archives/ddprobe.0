Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE9D27442
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772362494; cv=none; b=CNYru+TampYfvxgjENchrLTt5YO4Aw1nM5Z4x3/aHRjebt/Imcx+A1PhQPLLQcEu7Xll/4lefb1fDRSB8Utiq1kfiBhP/Gn0IXCcWXNEoXU5JNdxlyWPwOnqMPhNEs6TEf10DQmnySyAitlc3cVhuxrV5a423sgMV6eUxIMmjj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772362494; c=relaxed/simple;
	bh=C8EhGlJXrF4wvECqOwdNUVitFx/gSEJha5D26H0Xl9U=;
	h=To:Subject:From:Message-Id:Date; b=r28n3lL49N4H4sBOZpsW/7gFzcK2Uq5y1cwnirFeruGDapBMmX6Wz/JaH2Kh+XFfDQoJB3wbenIWIVqsphH4D+JBftKBReZmhdHq85bgjRP5aE/XfhtCs7ceT4c9bXaTvY9PsNnsMqzUOD1Qp3r08wMWGVa5E0jdlOcaiYPsGOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5+djzgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5+djzgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B83C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772362493;
	bh=C8EhGlJXrF4wvECqOwdNUVitFx/gSEJha5D26H0Xl9U=;
	h=To:Subject:From:Date:From;
	b=V5+djzgZXVbgsuQ0r4hD7NrDhWIcETAqhtvT7SOXEWhFJsMHc7dRgpgn3UCp/5OCU
	 QR1m7/gHvVg9TepX7IjV2U7W9N3Y/oV3rnkZIXx65B5QEaUPIyU1rbJ03B7UXqQqYs
	 3B9lLBSHSvoIUDWWEw3uAd/DGrLIjlEGFQrCNROJ8X7WHii7l4GQOEVKPovl6cN7Md
	 2N3nNFHD7HWkCwz38dlljDlQsjDrU36nV5IbsIaO6cJotGjcxeDdTj3e8S4n3gArh3
	 a2FkwSNaI+stsBtV/OKAbbbSQEZ0DAJn5X57d/PFgWfxOY363jDMJPFNiPr/JhKuvx
	 TaKXEoQ4jwfmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C25DFD005F
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236249359.21518.5405032341171817255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cefe170b6c332f0913556d49f3c5b4dbb1490b0d75b24963312c33b0e975dd05
Date: Sun, 01 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772362493
