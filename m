Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8812A8C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744007394; cv=none; b=Y/91aDxOE1Wr+biT+KLJNGoCZ4SVE4S0c0NAox8uQNn93GIE3PPZxzLsEKFl+QDiXltuipDrIYmHIiQ2BTNHFd0sp1602BiMb9GMgI2mwhIHh+xa7tZ3E/SRmHL4HtbEwoEFf+achC5AbRiwPG/ra8FShhn1r56kD172VG+GqGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744007394; c=relaxed/simple;
	bh=8sDPJBgVZKmm28amEQPDVlu2ty7SDtYsxXOD/KuF+k8=;
	h=To:Subject:From:Message-Id:Date; b=GVCh4mhTdWplV9gaKP2hvV8o+1dtcaEl/uDh3TWSgtslfccc2ffu1xTXNTKMcjJK+cDBQxwwHvj8Threb789M680a84lFHmcqs3gsfncarQNit4IGvgpYqPZG0CELVUDxsMxZT1v3JqzuDdaisk8nx/WSxD47FJpGVr2lqd1CHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGlzVlaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGlzVlaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDF2C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744007393;
	bh=8sDPJBgVZKmm28amEQPDVlu2ty7SDtYsxXOD/KuF+k8=;
	h=To:Subject:From:Date:From;
	b=gGlzVlaZa8Yj6Hv8mq6KJjj1l4yX8ZA3SMC4SKa/Pw4+i6Lc0zLXEfityFUNGTvD8
	 pHlQtdUx3e94mvsPw3hS3wCKtXTcKMyYV/QIXraiGHAfiUGIsDKf6rzJhBRnc9leJK
	 LGXb7fJOlqsL2vRWEZyFfjR9qK/+9VA01Yyfi0cHRl41h9GnVSoEyw+78wVQt5MvOe
	 mUbH9FmiiJdssU61ZDzP2caDM2tn2PjeUPYe4LKsZJWc4RbuDwZk3hkaI3Ji97oRQ4
	 JmO2oregwn+AvfjNXqJm+sDJi+F/IlIg3TBkbsiUCMmY3NTmafomQfZo8RURPjq1wp
	 Mi/OaRboaxv1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABDDC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400739361.25705.12150010468848062596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673fbd0e4c48b7edddf3bcbac467ed7f6ffd8ed8a820734ad027b9b835d4313f
Date: Mon, 07 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744007393
