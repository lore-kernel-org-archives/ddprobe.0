Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660443B8944
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789488034; cv=none; b=VtyRqqJHLEmi1H+9GASj1n+JayKSvyhKh8xojxhvTf1zzXgICeNR6f/WSaGTtI6ahJHmWcp8iVQm03ZqidkCCX2l55b69GMPxNgm6Kd9jHURYU0O2BKNaS3fscvK7lVlvM2lNpZYzqW0Ko5GoYVk0CgxeqDVrLhck4xVxkE1qv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789488034; c=relaxed/simple;
	bh=1r4crRM6f9cxahPO7/V9nWExHARzjsU+z5PFiomOouc=;
	h=To:Subject:From:Message-Id:Date; b=eU2e3a7UCqlipqx2xLMED7zGLAsFSETdipEqFo7Fsr0fBH8ceGYrBRFzCr+Hcl3FsvHWgJKKjgGsE2ukPYtS9PDb2Yj5HxrUKsiPjd9qime5x7eeOOB7trFdcVHpdXbFT0AuJCcNWlW8oDO+EPZwdNJ6KOkbW4rsa3DwlmuP/dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gdo+1QRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gdo+1QRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC28EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789488033;
	bh=1r4crRM6f9cxahPO7/V9nWExHARzjsU+z5PFiomOouc=;
	h=To:Subject:From:Date:From;
	b=Gdo+1QRPG9XLaYYqrXHnWWP4MatEdSPj34dX8w21NolahP2hFql4Q/gVgYSQ0yqte
	 BQ88065Vu9ofLOeeNXrCm5F2dn6WeAkCGyL64esD8tVHEGy2kt/ofscYZqc7yieU/1
	 JbBFiMCKJZ6MoF/JUQ7NoTQ1tdw8PdXX/o9NGqipjGYexcKowO2Euw0icOse6QAgPM
	 Ab9KNB8HvnJ53RFm5QU03JQvOWupHyWd7G9r1sG6VBTcQoMXK3hZKVmRuheqIV/FSX
	 5uwyv3ix2jlQttW/QSCfJF+TW4Uk1IWU0/ImVNaHGYCG/chrhyDxvFH/y6BZsTiDZ4
	 ZldN2EVTBy+OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96DEC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948803368.7425.446077772072374121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac325970d34ab1e4ce3c1d6cab85d534f747d7c0816cd081623f0df638e2bfb
Date: Tue, 15 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789488033
