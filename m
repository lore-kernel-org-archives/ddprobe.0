Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1459938AC7B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782452254; cv=none; b=hrchB1CR56Oxhay71M3SBXCRyQklxo8O0i8Qh0eB4iQ6Bq1XC+dbU41wTKWbWhQWc+738gHrbXwSgDiiBo0aWbF2+i4/HRNHCaX5GOgg5EevRSJIEnojIXQ2DQEa1E86relSbtSI42eDiAitEc+/uYs2sl0HwaMrPqvlCiByfEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782452254; c=relaxed/simple;
	bh=9dbOOec7rdpEhVgH4uXJudY5sWxfUzkq8uxLafTCndg=;
	h=To:Subject:From:Message-Id:Date; b=Hb24dsLTnKabQ0neBaMotN3wO9x9uzi7yXXsVjYvb7dWsui/jLFryme55iuvaThqa3SzHKd3Q0jKKjk2GZPecKCOI9ttW0EMBKTtcWY1FxLV57aIfemHBIrFUDpgBC3iqI87lEmWKrkxropGMPcm8YHRyLAWKwj6yeXPa1VGXPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cW0uz2mC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cW0uz2mC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C846FC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782452253;
	bh=9dbOOec7rdpEhVgH4uXJudY5sWxfUzkq8uxLafTCndg=;
	h=To:Subject:From:Date:From;
	b=cW0uz2mCX7Uvui0L/Vr/44erH2HtgeLEK++XNmmLsYRdei0b0I3XmUSQg+Xkp5E5x
	 WfqdW5ZFJ1XG60QMN5oCSvXy8S+YDz73j2q5VneA+zArkijvlB032jtX4aP7BLyo/o
	 pCQsMqM8HKEab5r4nxFghX3LIeSt+WCRfpsXe782ar+BvzFLv898a8IXtAtKmvaMgm
	 mmxX3GFIHtEA5nrt2X4dGvRLPSb9OcQRv/xkpI7lH1EKBhEJT1T3DmTMbYZ+uhR9b8
	 tmXGoIPMotT/KJWCWlFM2dOoF2B+EmV7AC81YeKx3qjto0HqFO50o8Zr8nZcx0/7+t
	 Z4qonczVaX4Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9EFCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245225370.29910.9268451226548889857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97eccc04e0946d2bfcfff087f00ee7e1833a6233325de8d72aaf868a0368900e
Date: Fri, 26 Jun 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782452253
