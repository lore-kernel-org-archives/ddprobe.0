Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4200521ABD7
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775354134; cv=none; b=SFJseXO0alDKrGpPtXphc7qv/60y6Dp98/rqGSUheGB+pUsWwxtW3IYAicAG8w32EWGuQiSWmX7jSdtl9tFV32qX862k66DDFdBxVk8UpH2QBn12OQUb6O9ee5XGBrGUIemNfhBjcq70M0tkjhDyHoAIHjGOMAVdjEMNWxFrPuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775354134; c=relaxed/simple;
	bh=U4t01LNhgPOoig1ZR95LDeTE5yI5Kx2l1uNsfA0Vtms=;
	h=To:Subject:From:Message-Id:Date; b=KJSwKFxGdlGwfW5O5lDEdKkQO1cTbt8wWtkLlfz29RhVBKemeI0n1FkPIgo5Q9SvvSc6/D39NDx6tUEgpMCHdkzpfGeGaJUpUPGZUBX+vX9tDxeIC2z8+sChEjdtNoJhVVH/87KTpHZ6my0eg5gcYf/LG58x0xA07m9pRcjIdZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFp01qKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFp01qKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C695EC19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775354133;
	bh=U4t01LNhgPOoig1ZR95LDeTE5yI5Kx2l1uNsfA0Vtms=;
	h=To:Subject:From:Date:From;
	b=AFp01qKLi+FBhKA9Zk+LWEp2d+huMXEn0ZsG59XVIHYWNKLbURgCZtONptBA3Rhtf
	 Z6AWo4aSpQif2s5VPiv/JOWdFNGzxWCzXL/G10PfL48HKRpyonwz3XO1iV6Y2dAhg5
	 2/ANZD3riwGUTHZQ3KL9AoO8S+USGszkF5Ix/s90qxHf65wvnDqW3JsrzkoPtYYuRg
	 v6xUV5kcqvVXF5psGAhcx1+nYyLkRhciqRn965cRC4XuvwU4I/iUO/qfLUyrffTmN2
	 LJNkLaS6Frqsgc7n3inyte1K355vStp3mT+zWBDxIdmEAfvYNuuxwTHpYh4ccnbzjf
	 JG0wSilj54gGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2ABCE63FE6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535413369.26878.8658956756382689458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1acd9bdbd24cd02351d449a0dcfdb9432f25cc08c689e568b86190dd2b37ce
Date: Sun, 05 Apr 2026 01:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775354133
