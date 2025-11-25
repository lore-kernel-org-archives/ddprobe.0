Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEEF1EFF80
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764110574; cv=none; b=NPRC3UuVykg126058UHD65Z5v5er067Gnc8EkgTU6EpGK2SIGLdC0iXoj9sk2yrRvj+MvAzjMq1gGB6E85plJ7P060hnndRKePNyIVSnSJ8avVXV/M6AI/P7d/N1FxoP4Uo/KeKSCpWEBp6Zah5MTZouAR/+nA4Nb4RLv4OxL5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764110574; c=relaxed/simple;
	bh=Ao3iAMsyqzoi4f/UYwu64YyQNNt/8zboFgrRKrtCan0=;
	h=To:Subject:From:Message-Id:Date; b=s4O0nO4UZYkUu7n9My1ZlCAHkxHnNkwD8K1DaKhEUK4TaTPBxr+qqIXEauzttw92QYeCbfagH3+i1Sh67x+JnJuw+6IyNaC+6+l6l/MYZ/8+SmSjs2DXd+644/gaJ54OhTLsbbsalW5yIz8oBsuEtntl9BK5UjKC95Dn9l1jb1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzuFXHoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzuFXHoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2CFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764110573;
	bh=Ao3iAMsyqzoi4f/UYwu64YyQNNt/8zboFgrRKrtCan0=;
	h=To:Subject:From:Date:From;
	b=JzuFXHoWuY9tkAyh5+sbs5o0/YtvNPcFsf2ZP//63ckKsu7i1+RbvYDzAnEVg9WC/
	 FxCKZkWxrpQ3kFGaBfYJzGB3I6EGRon2mWmHYB/3tZv5yoE+zxJ0+I8wHgFxmJFSz7
	 cheADhCyvjYxHIDqg/60Penblm1II8VVWpTA45hE5XTr2wNB2Y9x8wtfY/5gbTUA4l
	 y/GIrN5NWz+dHaRO6PJdLaBov5zbL6uyS/Fmsy1gNcc27gQ5skRESFxYvpzNdD7vAA
	 u+J7c9bPI22L4i8X4GPMAsbbhDuwQoKP5rhlzRS2y4OFyoYMP9JqqQjigSuPP1A6jT
	 utDxAcU3+4FMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F89D10362
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411057360.29813.5977715324365648041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce416ccac653e9aabf0147f1b68dba5d81482a7c7b196c0bae9b20c74f558cb
Date: Tue, 25 Nov 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764110573
