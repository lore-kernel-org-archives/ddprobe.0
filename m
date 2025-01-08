Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA4C2594BC
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736354754; cv=none; b=nJOqKbxC1TRTSjJlBM3MWtzHPchqqj2QNvUAC0DnAm74364raoCerGCDVylkg67N+tGGsj1QZvX6U6z8NUQr4dCMvYRF4zlf4JI7DPtnCH/vlxi03omfUC/mBtu6OQb+jkn6Te3QZMYw05JlALtgsK08ErbfF2hRzo01FP1SBnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736354754; c=relaxed/simple;
	bh=GnsfJcV/XNkUzu5G75rgI57vkoTGj9eptOkWLIteTAI=;
	h=To:Subject:From:Message-Id:Date; b=oFJS3NjiLEpmDWCvAfPRYXwkgyjFbTpC5Nk5c50aotSDTWgweMTx+ZWRvIa5h4Tnou/WIsEt/wiPdVehvZX617YcWwgZV4TohbE/mbj400nt3NtRFNURXZth7cI2x20QbJUCj2Pm9b5LC5IUYV3H3Lsd153XjrgiuHEJI7vtzH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVUpaiF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVUpaiF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CDBC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736354753;
	bh=GnsfJcV/XNkUzu5G75rgI57vkoTGj9eptOkWLIteTAI=;
	h=To:Subject:From:Date:From;
	b=DVUpaiF0hFq5303zPdc56PJwf94VG7vLyWEfAUy2PnawGuv99SiWkajWm13OKUQ5l
	 C3URa4YpAzD+oxvMGIVo9hF2wvc9BBm9skmP2RuZ+A2oDnKm2zY2PKPFaOch4T3YRt
	 qKufZtyKkWbJA0wKgT4VW1bqBKxMC4swEq1+0HjoyP2JpHVPg49T1NDNBBV4aYcCi1
	 BwpqUnrRmSQZXyC2GWsDKvIjP9zoq0WX5PqppN6+OC2a9F0N95qlKVDUTGHWv+AjXw
	 +pW+LhFkZ18Vcej9ZZT3oPHQAo8Qx9fwEGudD9QIiSYI2oXkrxVOBY2Gb5jp6/e0a5
	 epBK8ms8+wMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88ACE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173635475367.4151.3376682597550866677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282942bebfea670a01d5fbd38a4cb07cc9830d1ce1413d8483864820c4efcff9
Date: Wed, 08 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736354753
