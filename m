Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B4D21129A
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744222194; cv=none; b=if0VZqY6e0HINTpR8blSpNIlHvinYjxZhZ4ViSo85cTvNSl+pz9OsW8BwtIBhSPzdhhbVAyFwWKvlNT2JlHOrVVhy2e4WxgKmkcbehQrw6CFB1+p4u+swe40GU5x2G08DM68JPSeYUohaFmR07HXm9miZZ1ZwYtx2eIiBkDAd24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744222194; c=relaxed/simple;
	bh=AeEmI+sWwAwWcK8Duf9hzwA10/rgf8LmCn6wYIly9Ks=;
	h=To:Subject:From:Message-Id:Date; b=mYzMB2wZ1Ts+SQQPpp1RRZZUHMWhA8B505yGAW1BWHqUVozIHDCDZThZ9ptI+nblhvkls1aGJrbRFvTOSvohuWiNmwAyU0GlteaJx9xaCP9aLO20u4WkrDROTijou+fixPGLiVwdDA3lGDyDACJj1RPjqHz78owy8CTXEZH5luk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/C63W1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/C63W1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6735C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744222193;
	bh=AeEmI+sWwAwWcK8Duf9hzwA10/rgf8LmCn6wYIly9Ks=;
	h=To:Subject:From:Date:From;
	b=V/C63W1sTHI/iCp9hB5rKpUmxQxqHsw/duCDRxYiy6pGdz+Ien2JXml5Zha8WIM15
	 SAUx4JqQmPMIyG/6MK1nHYWYATWHrjR0lqwVJazuC9becZ8cGEHMuVfefrTaG8y+h0
	 TpkfpAmA98wdNr7Xz+GcGZB2TIRdtCs2tuc++TTqxCBzkeZ5AZo62cnFtIVSzYhOf2
	 4QQKGJRM4EIJ6bIOCYW8F2DHFSA5dnFq7v7BtxBmCNzvWILC2BMdlUiyJUGC0YkqHx
	 3JXE+DdKmFcyNBV68Q4sNAmrLDDOcfVtaRqLgLJcd+WnUGDL36hvZujJ0hXuyW7xEb
	 7GU5QNSI959KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D6C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422219358.19366.16279024395176716956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a46415ad4a288aa99e8a6bcb657d51cb036de09d0e69a61ce533c904af1b91
Date: Wed, 09 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744222193
