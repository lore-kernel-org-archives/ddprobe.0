Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A630947DF8E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791868234; cv=none; b=BEkrB7GFPQtStI2UlwrljCC8/YfyxXPuYwEG+1MyRXfNqRCOgDyxkPjAYRFOPv43/xXQ722LAbag+ja7py+zWnjqiF5BS8+lUqAgWDy/JQMrupyQRUpruvHWWeFPwrdpoYNt/rpQfX/v+ZRz2wXLUMeW+IuF44yW47tDb3k0eM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791868234; c=relaxed/simple;
	bh=jaqfcVx1XanXdqSt2z0R/ECnmMylnIV0DUCaGOEI1sM=;
	h=To:Subject:From:Message-Id:Date; b=WvcqPJIGWvCStiL35N4AFbaZMy/j6CIWzoFzbyiirXwnLVX5bkAmepCAkXZw3mQcgxdoo9fCrmhkfklBdgV3MzNxRxo5ejN9Ve/euhOnzfmTKOMLNB8EJur5XqRibB2SoJ79cuTmj/4Sv69VNCKkDame4/+fOLGt+HcqCw4UUtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCI2jSBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCI2jSBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DB5C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791868233;
	bh=jaqfcVx1XanXdqSt2z0R/ECnmMylnIV0DUCaGOEI1sM=;
	h=To:Subject:From:Date:From;
	b=LCI2jSBdoa6MuFflivD/3wrs8zx4HD317CQDgWIMc2YJoy8bFjJyXXUV/KNz9+xCr
	 GkJ4gXiVO/XCIDKN10JufTIL7fScAChJrBMFA7lWB3/awUJbtMPo9oO2DU23gdqiwj
	 VBt2baN+SxywSuN8sEa6KvceUxPi0XtYY0MP4fuoxGIdrHQd2Fy3rWhVe+nq0PLLV1
	 mvIAE/jhy/5WHMVz95auXeFtGU0+N7RF3CLhE8o01J8LxnfF/xoI3/GgbfjXn3R3V9
	 SV2J2R35p2KlSmtv6ODdWruksXJ5+I/MxhQHZRelDs/tcDhVBXUJFdHcqBaeMo9dck
	 eNbQjRSQjCqTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE521CA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186823368.9641.16934312841761069617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18bf47e360ede96522a8470df7bf557781bfe6da6990a191b0adfdce6ddd211
Date: Tue, 13 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791868233
