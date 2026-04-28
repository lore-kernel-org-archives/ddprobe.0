Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3226E378824
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777389454; cv=none; b=ZBOsPot7/OudD/yJlN46esA/nRBCHIZAhSADd/UhkLCGOliu6TSFM/HksLzRvEY4bzZE/UyjG24hPFrMBdEjOGAQPwXnshNoDLeozkzgi0EdqkAwTbxjIaMXrsj66/c71NYU3pwhGN1F+F5PFLE721QEOiVWic+y1cPBRNrfKxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777389454; c=relaxed/simple;
	bh=M3F2g8Xy4NBxBFbhcZ+MvR/AmN0+qL7uQ3EXEuWF7BA=;
	h=To:Subject:From:Message-Id:Date; b=Tz1lmPQITuued/a08EcKKIXslerHk0O10dWMzal9drxPYfM5KryAL14ZRGQ3hFpGijbDPpCvBRvkPuqLJS9/ZkRg9ZK8f1EE1oL8/r2yt3tILR4Qjeal642msqkJsUSSsojlHNC22g2Dw26wpxVQpBpaCeLt4+7n31EP9CZgdtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lM5bhR3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lM5bhR3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACFFC2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777389453;
	bh=M3F2g8Xy4NBxBFbhcZ+MvR/AmN0+qL7uQ3EXEuWF7BA=;
	h=To:Subject:From:Date:From;
	b=lM5bhR3Vca/zLo3hGKlNi1ETpBJXLHBqQnAmrgVi13XVcvZvMgIlH9MrGuuFaLj2y
	 RLLU6RU6v+s2BV9V2GC5e1oZdU3TBzS0Cfs6myBeQio07Pnfq0Mtb51XR8sMLKB5Gi
	 CjAr0kdDVaaVu/NofPUyJvfBlj3X1331pbRN1p2/PhJEAos71oShvNkX7mJFvgjPM6
	 Dj9dRxa/Ao6MYUYtxV9qw5ig1EtoVAjkXgY+sQ5r7xLNnoSlrJKvrjpDSYCqUMhYHp
	 CG+/JpU4f9v4xyh2qmJUf1l/cmtIFeje2AzUjgCQnsrRh7gTOhq0OfZnACWqxMNskH
	 NVSo78oPqLXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDFFF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738945368.1465.9887083605956476286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db7d44873dbe34eadfd2cbb338d8181d78f31ddaef6257ee38b500251ae21aa
Date: Tue, 28 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777389453
