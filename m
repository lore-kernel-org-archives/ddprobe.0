Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B90021B182
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743164994; cv=none; b=Bog4FpG4tI6Jx3BrPOVrjQr5tdsYaKdwHuPe7wFvUi8x+XxoOgA1Ql3y13PwB9fpNXm2GUKUOoK0n54LQUrJ7WmAuguQKOjzxxFsvPczRMujosHDVTZM4CTCGWeyJksn9QUqIu+Wsunmhw1ZykMFMkejOwjHr2UblOPu/Cm+Xrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743164994; c=relaxed/simple;
	bh=k1uBwXlRJNF/lGTq3m0edlAIdaIL5uR8HThnGhhqH0U=;
	h=To:Subject:From:Message-Id:Date; b=rIxnpwwqwOnytD9lfnoAHkyOYwZBqJcDII0hgHwog+LcmJxSaqRyN2sqyBrL4tHEfe+TBP1fAgHpp5kSkoE5hQqZUMa3gJD9q/q7/FjieG56H5heMx2yy23O3KDvbRnIM+uf8SjrKYgTUt5ynbOiKzWNe6Y7Xq/CBiLorpL1HXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWJEiO7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWJEiO7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F0EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743164993;
	bh=k1uBwXlRJNF/lGTq3m0edlAIdaIL5uR8HThnGhhqH0U=;
	h=To:Subject:From:Date:From;
	b=oWJEiO7mEhUpebT2LyeAUeHvpDAiiq5Uy3hnlwnrWcA3QeiIxhLwUfHPvjJnHx73j
	 1nC/dXfkWuczPe2CoTL417MIuM6xoiN8ZM7hkkUBuIVPxvIGSIDXCAMY5HWn0m+Z0P
	 a//vCT0hCsh4joZKzFr3r79Sdtw4gGEyWlfLxYUz0/uJ4yyfHqJ6pB6NGbn5snureq
	 leI3/Yo8cIr4OYOu/EVoqPEmzueDZsm9SrPgC5vTTrFNvJPX8o04czXAADiG8+dzfP
	 +3xMnAqjM/W+0PKHseizw+93sOnCTmVQF00FnHWpqwNkuJTIJvkvZYvTLNghJHa7hj
	 B0Am4g9uQ27sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97313C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316499359.17996.15666329546152356312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155a94d34eca22d4da2f4a8ae031f6f83cc82d5a00c340ff4a367e1edcc03385
Date: Fri, 28 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743164993
