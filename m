Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A4112D1F1
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777792054; cv=none; b=hTeExHYTzsfuLkS2hYgEhaR+4gBSRcEYmeNIjqcSUqwANPVjo9tlXvLLUJgSvJp66kgJ+btJoAPPRv+8dIpT9AKHd65ZAv7b9vktA1Du1+bZgxnHCf7ZT794qx/Dv0CUTv8+B4EdF0C4QzkKYQCWwC2Q/xkMqamxWWrg94HlCzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777792054; c=relaxed/simple;
	bh=Trv/OiWKQpi0P7PB/+FvwMy56BlznZ28ul1csjDFHCY=;
	h=To:Subject:From:Message-Id:Date; b=AISdMk4zJJ+84Mffd4WM8eJVF31LnP7iQC2Y0C7RwuWSO8jWdPpPP5TR6xp2Um1ptMiszFnX5qJyBQlchV1LKXA2R1sQ2U795ijwownMUHmN4UXXhUkijd4pRbad4To8l+eaNRvGQmS13kVN1mmpwglJBiF/bP6Q95amvdhpZI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnY4OaXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnY4OaXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEBBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777792053;
	bh=Trv/OiWKQpi0P7PB/+FvwMy56BlznZ28ul1csjDFHCY=;
	h=To:Subject:From:Date:From;
	b=MnY4OaXhr8/JsiLDIv2pDlyZRh1u8Gwis2Sn1k5GMvgTtrtiweRmSCT6DXQ1BkKIL
	 z0OnE3EO9eABXWyd5TSdp8OeeX5mgR9FGHCiMXVdtbwO1FegJDKRBwnP5Wepr3MrBN
	 3Y62gUQOdOivM5ZAvN/8vaXMt2Z7+wrhCcNtxFCgmxwkLh27MbWluMHzZLXrJ6xg15
	 TC8xzBr4sFo4u+KfoyrzGSEGguuWU+blnYw/pXbamwcMuA6JmWp8veZJV104kyjpgW
	 mme3O8BzgAMBZxuRrKRAiHxXdnPOw209RdoHGgCg/yj6VmfaDa2F/YRhljf4P8z5um
	 +Ocft5r2ZYotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF56EFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779205368.5510.5552874943626901818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6894453d697d8590b95dbb6da67797125890cd61ccc533eb6fd433ae76bead9a
Date: Sun, 03 May 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777792053
