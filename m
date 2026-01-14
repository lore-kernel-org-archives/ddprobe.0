Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD3936C5A7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768389833; cv=none; b=dyzZcerwMTYyXWc9x3Rj+whM5WBT1uNNClTehxoZ9MS8APiERZuBQHEWWvZQ11MLHhEQVbro8Bn2rPHk41e0LEdcQvZW2sU8aoJydZSJtw2Ea8uh9UY2y03v7AF0wsVekjF+1tYBL6Xe3vDXo+0e60lg8rxJORvcJcHlwR/sIqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768389833; c=relaxed/simple;
	bh=O09HbGmuxtNM/NjcAuXE+ymo/wi0LK8TDTT+BBBl4uU=;
	h=To:Subject:From:Message-Id:Date; b=L5j0kdXdRFj04k8owEP7IFKkL7AVj0jluBHHXubkJgPEVDwlHwDIoCQBA4j1S2eCE1shUbA3Xa5w5+WAWmFFv3Q6pRSfkH5dDAofq+zV/7qL54531Mc4vRC2k2tn8SNBy9Pkk5/aNctdWPkUh6hwyiry5awzIwHMB543nf5HZJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pq+bd10U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pq+bd10U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09CCC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768389833;
	bh=O09HbGmuxtNM/NjcAuXE+ymo/wi0LK8TDTT+BBBl4uU=;
	h=To:Subject:From:Date:From;
	b=pq+bd10Uic7wnOI5hNb1oeBZ04zz4XzUZlSFCqHqvxr9UsZZzpgLB9qTGX4UI4v4f
	 So0E3olOxu1RJhywsVRiFpnsoaIxGv03Jqik3cObm7hI3NDNNzzzFjTLga9laRm5sJ
	 xS6QdMsJ+u0WdDpl/TTuHuC9aNdoyqZhJEHegcT71DMDna0Ws/xLw5adVwqVB91O40
	 9S9RhI0YIYiPaHHF/ptinHxPn1saqp5IzCwngn33s51EiuxXeU3JOxWWVlhgIbuePd
	 8R9mNSfmlXHeRqvqUewzw5v0vJlRhK/pH0LxQadrfjgBqqcGX+jGJnAkQD4dGiIKhY
	 rfCVTrCHE2oug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCED29FEF
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838983357.27567.9728064578555503823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37361dd286ae60215429ff92f0e1c00bbb906e78656071ca158a094d772b89da
Date: Wed, 14 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768389833
