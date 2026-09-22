Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CC1534445
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790072435; cv=none; b=Aw12mducSbuSbDkrVqisjzinskXMiqxUcALsBLOCGErg3oM0Qxyf+Tmn3pKu9t1EwJ+F/Wj5CK1SbIUaoTHfYuFFjHmityPQ6KBL+I2vlI9bNzfcDOPtLudRNdjONWfH1WDHHw6lV3m5jPRS1SEM2QiqBN3DdLqTXlNlEQICrYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790072435; c=relaxed/simple;
	bh=yfHMRdapoqiX3+n/t2bXOTYi/9Khwhnd5C18ngPm8WQ=;
	h=To:Subject:From:Message-Id:Date; b=KJspIMVEMjdcy9asI++YF00vC5DUp4ERJOdli1hRxOOp9xcdj94fT3mAkyrMUlgw6Q6HsG0Jpkm/uCJ2E3JyYdeFDSkFlabz3x9N+7T9SrHIklmw2PNmKZd9EXJhh0ZZWhSIeXy9GJrlxervx88x3IgE1pxZRzBMcXiyv8tNnMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jhd8Ndzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jhd8Ndzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5D3C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790072433;
	bh=yfHMRdapoqiX3+n/t2bXOTYi/9Khwhnd5C18ngPm8WQ=;
	h=To:Subject:From:Date:From;
	b=Jhd8NdzkuNh19oKPgkofA3q3KiG6v2jPPQF4wC0gFnNRkclT8sjw1DF5vsw3ElmDP
	 0eC5Msv6/sXd207Q3lnpxXeHHpxNkSjXLtSrnmMugXD8uVICnM9d/3dulL5e6qsUgi
	 7PNYQVTKdDtm9ipbM3wVwAssNAvTUyZxJTq0rF6iH9VM04k4WQ2XszwY30RE4IOI+n
	 uAGHnOlLrdLdq3+GV0KVDnmu5Jqv42tv+8ec+yrnekOTD8A3sepjQ0LIAq/jUBrNTb
	 DrTYMowp2JbytEhWOVe6i+Pc6We+yqB2y4IKZtYNRv5eMOviMha7/23y6Pjo2QhkDR
	 2fMB25QqMTu7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C4BC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007243368.28017.169417322350471834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479689e87e817dc0c6ed60f8f5d2ecfd6ea988b403dbdb04e8b83204a6faa7a4
Date: Tue, 22 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790072433
