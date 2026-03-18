Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226C0314B82
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773870894; cv=none; b=ltZXS8GS7BFq433zNiKQe++XZZAyl5lYiyKxtxG1S3nEwHL/oeSH4WJa+qugyVDI2LZhjm1RaF2CvzwGCUFE4RXC8v1TpUZxfYm4NCbrvxSkp3NegQ93kwvPhGrcXCnOINh4Bf9ZMfXrg7J0VaBoUDCGj+0FNcQtRHTEl1XaWZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773870894; c=relaxed/simple;
	bh=748iZhsuwlTYo/GMdi3VF0A51Rf26EpQ0E8KsM1pwaU=;
	h=To:Subject:From:Message-Id:Date; b=Unu0T++lOxSxx4S8oyNMjIACMH/bmWdyPMNHdRfyfk2GIfo0vXq8LvBElh2gzlLTWEUUbHQtLlkZe+3w6lFbTSMnEQbCBYcBfECgvcGFyWsjSStRJw5ZtpF9+947YgqDrqYHZOCc4ueCScrxNEkP3XUsBdpdzxP4UMNw7NCXpMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDfktVcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDfktVcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6B1C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773870893;
	bh=748iZhsuwlTYo/GMdi3VF0A51Rf26EpQ0E8KsM1pwaU=;
	h=To:Subject:From:Date:From;
	b=bDfktVcCQFhWER43t5XTEHAyzScoTi80bURA6K04FY5O3I9M55rrGDZmJ2KVIGW6R
	 nle1d9gV6n2Oi560lTgdNhb4Vdim3cUu/EXU23bGWBlv2Ke2pUIgK5hcjP775QWn1R
	 ll1fUQJTfBd4kBq12f5N+bTB3gHCC4K7FMMIEtCrACUpiqs9IwOt9wKVr4MdFPSIb6
	 mPl4GfmsMU861UtydejAWlyZYrNPDxlQ5cu82CaHJj/XGGkg2dIDC5AVTs3NGs2AXr
	 Lf0zpS7BHkRXyidbHZQaeD6kjyc1ACxRwoEGpSty9YfA+sIco5yql98u5IkXDjQUc9
	 Y3czdsDvj7Jbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98161107761F
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387089361.29052.306071696640206642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad8761829e30535c049e8f6fa4a15e4aafe202afc9f45762f1190c375cd24d8
Date: Wed, 18 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773870893
