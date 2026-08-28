Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AF141C6A
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787899234; cv=none; b=f7NAz+42VewdND82guh1Qr+46I1JA0U/V4iwRfQ1wfDcekW2jO6l70pTVOLtJn6Y4vsNEh/YRbyAOKbiSXnMVfjiRc6JHztzdyYWLtfPR2+OOJ2pIf/OzPTYgrs6/vKrc4Ck4OSu7yauBmU3vXX59UCnJ9F29VfwGqrIfMFR8Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787899234; c=relaxed/simple;
	bh=4+7d77oKZSf4XPYPRyuB+VE91HawHuM1sQCtz9HLc7g=;
	h=To:Subject:From:Message-Id:Date; b=EKeYKzoZu4morPvg6jTCIYDS6ceX3YpS+Lp0cdp7/CSsEWa5/4Yby+8x6Zdj8pNTSOnZUtFJONaVdhs1AFOGPswTbtR8IO4UmZ3sebLJGBIS086r0NMMb/wuSskpHByhzimfbdZJhl70P6grtwIcIQCzRvnbN1x0XDcHA7Y9gF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PO7wXiBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PO7wXiBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE76BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787899233;
	bh=4+7d77oKZSf4XPYPRyuB+VE91HawHuM1sQCtz9HLc7g=;
	h=To:Subject:From:Date:From;
	b=PO7wXiBkx8xTFh5QMhjdnlhY81a9KP2P21q/hPNOTR9/KrfU/rPzJ6mafaht5oPKu
	 V5lHlhGmMvCLK86QBXI96VjRtqqkuU8B5pLbgd055BiMQMXHCoVdhkpS/BXF9kWJus
	 Xb828+BulhJhQMtcnJC2NndDAm7BPK+Hib/SKOgVcrHgw55JL/Fgz84Mx4cDevaAOR
	 fQcDyHZI9CdtOw3yQ/VctrszLp0mvDLa2pT7fskwlm9SUm0z7SOmwa5Tpm1eHZkyuM
	 MPiKh/3wyr9Bz4MF370fnuUd8zp/DkSyjyYRbESG/kyaJvxdiShBRttkX7PB95eZCY
	 og/SxqGb0DaGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4BBC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789923369.10729.18439548057161816691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb084678feae8d37d2a9a0e71af02d176371ca76cebd7040dc5dca68d12a5585
Date: Fri, 28 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787899233
