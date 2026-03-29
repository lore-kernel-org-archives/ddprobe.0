Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB5C26ED59
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774770294; cv=none; b=T8ugV06qW0J3vvtj5owH3VItrP145aEU4J3WzKVPgJ9Srr8Io63HSlBBeGozVckvloH9DA3JbcdOnvhKit+Gdg7jbZ2g9QsJ2AWTOMiBTCsmC/g/gVNysXX/t3GoX8ZzOOAB9NHlDDE/snvozxOFh3DBlLXAnQmGLlV5crFTNC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774770294; c=relaxed/simple;
	bh=mRVKBk2sTCztWqfu+5A7U8l7hfhKvfOr4OqKYVDeXr8=;
	h=To:Subject:From:Message-Id:Date; b=dGPgIYe4HSrf4Aj70zXxgF/uh7bcmaXE0rNpgYURR2l2bE/dk97fKCvwnRsuhPJGWhuV/NdV2irLJeSWtrFyNNtyzNkJTFfPe03Xbt7fIrjePwajjITZ4k34+ujHDcB4WXGVjJ5Th93N+91zGcwxzkrZUH+20W3Y3a2Xa9idD+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7suvltj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7suvltj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E87C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774770293;
	bh=mRVKBk2sTCztWqfu+5A7U8l7hfhKvfOr4OqKYVDeXr8=;
	h=To:Subject:From:Date:From;
	b=t7suvltjZWbCSSf2iJKPIEzZiJIPYAQie5TqnW0n1l4j5CG7Nm4415JCJliYht4ZD
	 5M9MOvZlMs4xLhmvO01TAFEEo9sXg2fBGqFswok0dVD1+p1xTaBpLwWZ8Jc6DWQWJQ
	 KiTnjeieKe8jeX657Lg01Z+BJVQUGK6hN0hmhf73LmHobIL6M6t1HJLzA0Bk4+YlVR
	 iyYsM3C3Adb7zgWmU60Rox76hwB7XtJgb4PdtUVDKFtnFkZMNr5cxTPopRn5hpKqH6
	 Q7wsIUuzhosT1N5s3NfMEceVIQgjtlCC7Ai03tauCnMftKb5YKiVN5SmyiGe+DF/j4
	 u3mK2HFGCKeNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C70F3D5F6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477029358.25125.8217326256114811205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffab8ad70dffefc73f1ff9051bcb5eba2e663324c7d01c2e273a0a08b8c52376
Date: Sun, 29 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774770293
