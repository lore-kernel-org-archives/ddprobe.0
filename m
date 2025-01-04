Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E6F14D2BD
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735973154; cv=none; b=T8TBPa5Wrnj0llkiZmLUXbzvoNE5cczuQHVCeax0+SAoMKB08Fvc0uIchPEO+uQFlKZ1tIu0jLN5uV1z5wuEDx6p37is72tnInunpz+op2fP8vAo/ox3KSDbptdU4X8Wq6vn2KlyWx3T+rt22dDZTTaoPz1n/NO/I/ZQE7DmloI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735973154; c=relaxed/simple;
	bh=z26w+pjh/N+qY5vWYCUpS259ZWde4fD1pXKnxrjemGk=;
	h=To:Subject:From:Message-Id:Date; b=r0bKG6CGa5uMm+5ZyrTp39iEUdQehyv+SEBeqAiPWUrY4IwJ0CN0GuvJo/v15kw0MMp2Lwbtkqqf+JmSuurSL9IvkpVFDFvTcGMHEPwz/tGxms3VcDzHUSX6xwQ5mptpG4Mhy98Cd9sEMLXslexzZPQqNFvy9Ht0oVqujCcCWT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRLFKnaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRLFKnaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB409C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735973153;
	bh=z26w+pjh/N+qY5vWYCUpS259ZWde4fD1pXKnxrjemGk=;
	h=To:Subject:From:Date:From;
	b=gRLFKnaEfcMmpdL/MbmAbUxQQ6xnhW3FtEoffi/8mbApMVt2oTWb9vWFu+S0mYHoE
	 vd7/KvkKd11+16Y8Aw3j1ZFmQ1iz2RyjKql1RC/2j/IZom/yTsp4nv8cWJn6O8VEEt
	 dfohaYfBCyFA1YqR+W43+EFjFRVT7SjdsVDzi+3sKFUi2tmAAD2iG6pRvkTi/En0MQ
	 n59vZT1LsaukT1nG3hyha+RcxICRsonLzEBJcHC2zS7CkCtUFZrRQABx63UFK3Aq/S
	 /L8mNUCzOmdOM7L8JRoD6aK/THbpVatuym/btxQH6JMn7MnM2SoxazgqWOTpLfuupV
	 Tw+ipSxNVJ7Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962BDE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597315358.5908.4454298880844496182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a62b7818cfba21c13395e267f1fd23eacc96b6837b464e3e6a896f35bcab3d0
Date: Sat, 04 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735973153
