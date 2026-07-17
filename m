Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54462191F98
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784323114; cv=none; b=mT4hHXeYlwx85XHrxR31Ikl1rFF1oHXMYVNnLE/mL8afc1fc6Lb/MoHR6YCsF/W7Qc2aa0xyfOw3Ssq+WjBcMQ/snpBjLOPt/X0+GUmCsI5AC0Jj2bnq7kimSSjeizF7PvwDj3N+xJB4CquE+ak0i6DRvU/daXP6y85XZF745GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784323114; c=relaxed/simple;
	bh=1+XpFDasadTnbaIK1F/Kybrzfb3Od9h+Tl0/NRqVHlM=;
	h=To:Subject:From:Message-Id:Date; b=eCt+FqK/Oszm09Tuk9gz4sj2V044ZTEDQVjsyMZXdGfs6LJNNtrJT5ZPtDSE3Fq1CZlaRtpH/YyjpD+MhdhPtkSfP/G01BLTgK2hiTJ+HxYMx8FdwW5g8bd7H1nyklLrCKVbmronR0PYGMcVJBts81eIkndbtlTak7WEkDN/UtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDanhwMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDanhwMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8FBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784323113;
	bh=1+XpFDasadTnbaIK1F/Kybrzfb3Od9h+Tl0/NRqVHlM=;
	h=To:Subject:From:Date:From;
	b=lDanhwMIYr1+VZMuaLt30vHv1dkRUgu4VR3eA4QsrOhV55L2IUdc/lTzpiKHR0vnE
	 O/dLdjHUkOJLA0MFB2bChfCUBfZVFT3laN3T4lsHIwsQoCrUUh/9FC/rlLX7CVcj2f
	 DyfRIHVy2jTpzwrMy+pPsFo938OXulOX4Az3wuCI0c5cbjW7nEcz4CsECvJSLrigHy
	 XIG8KAoPGr21o9JYC5Nz5tlm1Syw06fZmNIMxwVlmbRWOK2Lhr11Ol4IhVTbubxpN6
	 TeunVuxuxo6k2NMVXuvmLXWdxAjZvPwh2sbn0ctQlhutva6czSHcUwIi7O1GFfYciA
	 mEygIx/0nz4yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F91C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432311373.25631.4144461519421569001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f9f48cfb023778bb346fc3df5429a8f41dd30a10ec618ef252c02f6031ee57
Date: Fri, 17 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784323113
