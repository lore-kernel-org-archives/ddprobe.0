Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7560624BCFF
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739201154; cv=none; b=t5wKlIG54dwoNlOpyr7lm10ddAPcqvwEufkj1N2JtHemBFN0qLJOY+2uEYn0AXutQGEA7z6LY4UzzDgRo3/EMtLrLnqFWQyOi66yyMdwFZIGIhlFZfFXzfRwmp6KRATkMqZu8y9mFoUQQyDtJ1MPZdH8TP40ahlGmf0afDURI0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739201154; c=relaxed/simple;
	bh=akDNymQ5wuVikFLyLPIoaQIhzWuRkslwSqsbFaYRGow=;
	h=To:Subject:From:Message-Id:Date; b=t4BetPCAZ0RyrV9rkxEtQl3+36vsXec0KDJQFP+udnLJJx5FIozYMIymA1emJjzOfvEwh0I9jPsHy7Zi7yzM5rnlNdhAGdIe40uXkVgoHKPywzWmRlQrVEybb/WdVxP5Hzh4vvFEvfLVpmZbVtc8R8GzSuYVeG8q6fsLtf6Dtgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK4a2Hme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK4a2Hme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA860C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739201154;
	bh=akDNymQ5wuVikFLyLPIoaQIhzWuRkslwSqsbFaYRGow=;
	h=To:Subject:From:Date:From;
	b=CK4a2Hme2DgXTyXAPRa6WT/NUAE/Kj3TjHoayWinIhf26pjHVyJCVcHx1waRCy2Ks
	 RysTvxtzhg5E6OrNv0NxQbDJKmJ4as7al10wouTIAs/ex40nJo67kdTrecK1iyWB8V
	 iRV7sVgQpp/ZYVgLKTZt1fQrcEbClhSCu1chZvHdHixcTJ8JB1T2IY/qRdfrmS9Onm
	 923EG/mvaVcj9QIk7sCrH6WBSGd+AEvu5AMhcRnpSO13XsvRVoPdhwTYZRlvdVsMZP
	 aroPmVoq9zMZCOcXgDs82G1K8Qzv4C27LigXudx3WQGn/4ReFLgMTNJQtLoV+MAfG+
	 H2BHbvNkAL6WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B451EC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173920115370.3669.230078906227880991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a62a9d1623207730d209f0fd5eaa5b72a93d476a7311412c2ebde12a4ff3a1
Date: Mon, 10 Feb 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739201153
