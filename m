Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F34A29BD81
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767703434; cv=none; b=hQFsWdSs/KG66N3yrTWD6XSmui6RLrKk14NtmpAlj3JXivnqMDquu/Aosf+fgLlzSx9kL0+qQrLR17T3Q2uRa/HRqgEDYZG6ssQ1sWAz26pF4V9T3zXqwq5nIkTz2JrD7ZAK4rVWMwwbo3MNJ9Xh0ejJ+iAG71wr5gPmu80UJ9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767703434; c=relaxed/simple;
	bh=GZef+zvmdtRTI8xE4G5Mt8UTxs0aqFpkizBLm+fXBFI=;
	h=To:Subject:From:Message-Id:Date; b=ErhYoeGZa1jQEPeODcYJc0NA7Ya86l11OdZMJ/GnaK6u9rltVhYCFsOZD+JK62Oc2eBceK7mLy3dGAnuRhIEcfq2NWvYv3sI5mvV+OTCCJ1p8sp+xNVXD6qtpqDqDtFucQO/CenRuLFyJDk4UKkHaqGC5kchiPO9QxIJjp1CWkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZFDS5+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZFDS5+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E43C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767703433;
	bh=GZef+zvmdtRTI8xE4G5Mt8UTxs0aqFpkizBLm+fXBFI=;
	h=To:Subject:From:Date:From;
	b=YZFDS5+e+0voMwIi0NyoBhxY35BvHhYWvQxyV4SR+u44/ffFnkH1P6S6w3SrW9BkS
	 d5jKqjHASzUGSPGRUtwhiV9qRu2kn0gbamc5EtW1nlWpAojJlDXroegRa35CYVn4vZ
	 bstKdqjewa/8cl8Yto+sa/jIVDEYiWOakYqOfbflalxZIjVTSgegjxNDBYBcs59pns
	 APe+jlJH3c0/KhgoKdba9lt54Dj0pm8pwptdxh9oNoXpU7m2KJBguarlVpWd7bMDhX
	 STvJqejq9bBPXcrGk/RE+gFbv2TUhnQ5yzci07pHPFZ0PflCjGQ1+cgLRjU3Es3D3f
	 c4r7NF5RDXrOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904BBCDC193
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770343358.2608.10824546310958656403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c4e1981189d5de3b2f48bec6209f9be6be4b9d5fa1ff60b96809486056b1f1
Date: Tue, 06 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767703433
