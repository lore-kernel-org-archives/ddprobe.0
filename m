Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353C73BBFCC
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787891434; cv=none; b=tXz4gMupIsTAu/2hcR/xBrA1S8XyPEYCRJlJSrdfOqDjl05Si22+wAj5pK0tmM4toCe/JRC8ynxxPnlhGoOg4sH89ugHFuJ6NREGRCxmB49QvJRDuthq9YR2A41y0fcyDX1Vs431YjkeKud7upckDGzrQGnQK2ixQZmZ+b0Cxa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787891434; c=relaxed/simple;
	bh=jOri+CQ4MHN1TG0hBinWPCyt3gbJ203cIDhO4q9lOF8=;
	h=To:Subject:From:Message-Id:Date; b=KcQQbhFOaT6LGulkMPlhczn7ujrtzESmHFBMz+55QkmmRfSVnFHr2x8BUXE+hvoxsbGEhH048gXb2Io6uffOg95W9j+xLVksTMtmbsGAkkdDuD+akIv3Vfbzqh8QYXjYRFZiNXxVkXBoaRSJtCKo8J7KX5J/VKD21FeXExEfZXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y09693i5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y09693i5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE12EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787891433;
	bh=jOri+CQ4MHN1TG0hBinWPCyt3gbJ203cIDhO4q9lOF8=;
	h=To:Subject:From:Date:From;
	b=Y09693i5B+MiE9afv2C5RH3DPu4OMWK7y47yhTMAnm4OemMq8c3cnaNsN1xwvkwG7
	 lCYK0UxicJsYgUnkKqjnF+j+8ACLGK2mwQ4gGBl40BRUWzGmwEYdE+DdVYLUwMoDM0
	 HbRZ9X0Esqt/D3HDND0Qylv4RStPRVG5yTSelFOrm8sPQaFcNG/kqqHpri8lH6ywJG
	 2kKEPCBUO5gzJzgQ+d4xf9NhhufTnYXiY0ArkEquFleAPyAQqFj70cIz0VSb9LXPn+
	 eA5du+DKnRLhhEJ4bJ7+wrJiYF3o2J2kqJrEPPuUbJn2HYOq0566Qqa8RSB6fbyO4d
	 2ZZSo19a3WB+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABEFC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789143368.27268.13958337839204014607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336e99fb08434a25c7cc5fe274d0d783c804b93efb6ea4e7bfa472e72eecba44
Date: Fri, 28 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787891433
