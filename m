Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E3F43A800
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784059114; cv=none; b=b2t8hGneh2F/iE0QdCg1KCmXwiDMrKIhA84Y/XUojEjlScMoh9zHAXwWhJHP+IKn+jadCbR+NHz8V2wg/Spc4KdFOiTUMihfyn1kJRh6xYY/fMtTM3ygSSL7dPQy7w0RQ0H9IO52YmNof47EDPAhWhim5q+Sbh/55WNI0EGXPxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784059114; c=relaxed/simple;
	bh=O0V2cmmlwjQDFrc1y1vncejFsulh0138aKSFyO5JE5w=;
	h=To:Subject:From:Message-Id:Date; b=FaYRc5ILZ+YRYtay1GE2OB6fGUdYzu2hrMM9wSssuA+x9dJI9J5bg70KuzdoSrc0495BHMOoeVFWYVnMl4ZNPRoN6Osz6iqA1V1h2SPuVcPBVa28TDrOBhhxRmdto6WtPPidQ+Zne62kWqBozenK1kNFI1DGlBAhSMd2V2swzMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zsan+rjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zsan+rjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF8E3C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784059114;
	bh=O0V2cmmlwjQDFrc1y1vncejFsulh0138aKSFyO5JE5w=;
	h=To:Subject:From:Date:From;
	b=Zsan+rjpL9WS/2OiV+J8XiIyOOwTSGhQgJn80BuF5oYmZd6tApHBjLLVVFNaeGUPD
	 pyHKq64MqqpE541AIKkInY3sCR2O8XFltmVmawZz1MKp1qsh5aejk9BLqfWjpIpkym
	 VywJ5wjaE0Hkci+ZXrzIRHzk+Dd6YJVe4JCaRDnykMJjvlNoFOiQPXSKU3cHWI3pYi
	 vqbM/cSqBe6FoK+wiRDs7l9HQ3IP4qvOmtdUH4WSrBlHi9BirSpS7mOPjH9afZ0Qgh
	 nBWV6jfEo5Pc90SBYlVaTioWj9aZHOR42IXxbGgmvulzMWW3I+B3LyT6DkEwbAaCa1
	 /6BIHpmdX4Vbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB024C4450B
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405911374.13621.13649361291872174142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f18063129d121f2b907acd33b8294d22e1bd47d8b3eb524fa5effbafc7a5d13
Date: Tue, 14 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784059113
