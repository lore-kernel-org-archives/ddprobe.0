Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0E32192F4
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765137775; cv=none; b=jjKz4O8YR673K3Zq+xES8+b+gQ0uLqzKFaKZxDsaysOxILfgq69bHjn2+a330YsnDRsAnYEnQBoaCyLmGMx29JzznsMKL2bPApn49nP79itjmegihjEo1UwP14BcEnVunDQODsROIsMBT+0/xYq0DRsb6vBzFUeyC0urlKRgUqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765137775; c=relaxed/simple;
	bh=3/e48d/ucZySz8cRcK9V/DbFz9P4fHxeCIsB6L4OzR0=;
	h=To:Subject:From:Message-Id:Date; b=PzFlghrEmz9WsG5yqtd/THMsR1yfo0TaPASILtnroDiEiwEQkQ7cLbSgYOdX2DwZ97VOxJNfgYa5ZpwfOPKa41zGVUBx1R0hp+ycfy84gi79t1ryV2UvGaKinbfkULtHqBebpeS0fV2NHLs+ovfpBnlJdP8P8MIjPqRc99/umng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLd8mrNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLd8mrNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEECC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765137773;
	bh=3/e48d/ucZySz8cRcK9V/DbFz9P4fHxeCIsB6L4OzR0=;
	h=To:Subject:From:Date:From;
	b=HLd8mrNLaa+sQoK+CR9TGncd+YhdRgZSf+klH+oafy4uQYp55nQHsXOdUkHDKW4mh
	 hsux6ko//PPBQTZKyXc95DYXOKFpvvbL1TCruE1hJK5lxSr6i+oc38xmznCXPtDthH
	 07jAvOrCAKEKc4ASUPMbOl85BRZpH/V2EUC4QimlkTBbnD68g668wttdu1Y2euKg76
	 J17IhwdnUIX+Y3RFKqXxnEZkhc08GFVzlruHKztAc4nra3U87M+pFw2cjuDldfqy44
	 7xmupdVk5qyVMDH+jRk8pRe0oNeEpcynyKV61Bc2kbSwA6U0oV+SPO3tZ4DcqSBqak
	 gAPmKnr5Rwekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE4D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513777358.30222.14979302033757624378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cfd17f0463f64ea3e17c2bf3ee9d35e42ef5e2996fe075fefdb440eb96fc0f
Date: Sun, 07 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765137773
