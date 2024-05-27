Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B08215EFC3
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716837263; cv=none; b=Nex55AGG8rly6kSpBMfEuZzZpLwiNnt904kVv4bvZaEwBWdM6aHB/82OK7OQamiHElXIARkzjt52OCS/+WOkXiWuvmOQtJjryy4NaAoMzwKtZZN87yge8FxYEtEBi3wrdnSh8BsxDXjRSfgMcmxa31iS79QuH5ERRIur30Izii8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716837263; c=relaxed/simple;
	bh=XvOg3wad+iaSrpgdmsGE4BqZ+B9RSLmne8HE77q2gdc=;
	h=To:Subject:From:Message-Id:Date; b=X7OG6/gN8TIFS0j9UpxHysWR7/TSXno+OM66D3uBTkalrhoRmy3YgxuSYLAKUQDu4wl45WMhBV6zXkp6pD6aO17/CWgY8Yh1AE0T7tIAjB3XZg/ZJlCBsMKZQCoCSopCSycpLDq1TL1+QzPbTnClex6fFbPkSEncf7kqQPUL7Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adrv+npy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adrv+npy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC83C32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716837262;
	bh=XvOg3wad+iaSrpgdmsGE4BqZ+B9RSLmne8HE77q2gdc=;
	h=To:Subject:From:Date:From;
	b=adrv+npyQppKjgTmGjaZ0Ebx3506s2SQbOO0ep/rUuBO28mRO0Hy2w1Y+uUL76lMq
	 0ua1ZVhEndvTD1jGbbvpyx4RevHtQyOk5xJ4DC35sQ0OOnYGYq7ZANr9uc9NtfrMzV
	 KgbbUl9qH8MjT2IpUlxYBdFjKT/WIGAylix76YUGGuuVd4Pwby1UDIFc3Te6X6JKzC
	 L05qx3f0qtEhEnfdXufhZl0Zsbwacylzs+LPmtaxwbaVS8O6ww6xr519YuEHp3BRDL
	 4Q94exeP4/7/ZzvDRFKaBmLUfd1iL3id+ypgWKXQiv29i1MFTkpozAzoix4fDC8csZ
	 gRKs2+z427OfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FD8C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683726279.7594.15767873812445557318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95b641d13f777c2f28ba40e317d9b83b426b4e14766e0d6889c5b5779418c2e
Date: Mon, 27 May 2024 19:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716837262
