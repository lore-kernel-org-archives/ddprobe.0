Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381C079D0
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746272396; cv=none; b=bFAaKxFTzgfeflJhz5iYreqyei+7dQbbOSGFfruEM9DxyucXTYfKUrDInFndP3k9wxHoDUE8psXoDwOprBCwKyAOOsTAEhTnwysp7kjzGS4VK/fwrj1rDwLHKBEIZAXopZDlRYRA2mL7dsxojWZwunBTrMEXOHY4DtcoQIC2mXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746272396; c=relaxed/simple;
	bh=6lGZH2VXTTenReGDuAh6Il5hzyz5SRpqUIbQmh+5YCM=;
	h=To:Subject:From:Message-Id:Date; b=CyLjTl3ze0j/k/qLvS/C7yvH2otr7nLAAm+2Wr7GpI9rWeZMJFmIdxMdJF/mKv9+GkQmsNKlsy3r9ZnPZpfsbEBzMtMADTeMUX6xd1ceXmzcULq+j3Ga7ENy0kHWdbCZaEfaphqbKdil3+7zzGUODncDOQL6wbwlSwLkMRAcPfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1zkD6e3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1zkD6e3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4037C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746272393;
	bh=6lGZH2VXTTenReGDuAh6Il5hzyz5SRpqUIbQmh+5YCM=;
	h=To:Subject:From:Date:From;
	b=j1zkD6e3uYs7/CnTz1OQH+vKbuHDsaht92NcQzSbsP5c9HoYQP3dqM7PncEDxYQXm
	 iwAaKWU38S93xEQi79UQRrtfh1TSvU39q/LLOV1RaFdhZGY+/nAi1dJsPDUEXbEY3T
	 NVC6NpXgnixUz3r75jva4oslLj1qE8xLJdg72YFCUPExqZVp0JPROAnyC+TjmZUrcT
	 eRa6Ll8fucKAbppLRMJ/yQBf8WBnq6J/AD37ZMVi9nuQEe/MSxEqYw4/MoenFsPkG0
	 pOy9Ciii0ION1e9/XOxMT+dZwwlQeja5fUdjgCPBwlJhXSathKWrr/UMksLvPFmG6s
	 iQkryflBd4RiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360CC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627239357.27225.12647023709549213713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b5d187b543fb1f5b1d0b37b22013d7951f6bd4673e6d25aac60abd0ab97668
Date: Sat, 03 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746272393
