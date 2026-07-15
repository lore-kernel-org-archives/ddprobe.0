Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4299C3C3C07
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784102314; cv=none; b=B7SBtNWVNHHb3yRXac9/TU4nu8azgdyZ+cm7SF8JLHWE6mrNmwczpKO68KxqfK5eUTh77wCgEs95Beuc6emYEK7kWO+tiVT3roWCy8OOWBzxtNXNVwIkakEZegKIla1nSqc2SAlWlV3GlLM/WELsLokLoj+S633R98sNZWiv34M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784102314; c=relaxed/simple;
	bh=fB9UabQNXcU7TRrZ/gK8W8SGoBmQqoqb4RT+lv5ZF3o=;
	h=To:Subject:From:Message-Id:Date; b=CavP6g2B+g6gDjS2uCZM75Xt0/0fnoAAd4I+1LuTj1drfR9u6EtdYTTKuMSvf+ra0KqZl+EXOUW8yNDRyF0NgVU4TCwdMNLVrotdGrlihHgMtnUkF3gQIFyAzXXAZPJZr6xlRcBL7gfv9MJNDGuQfdguIyxv33+A3MykUSRXXFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmzybmiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmzybmiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5B7C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784102313;
	bh=fB9UabQNXcU7TRrZ/gK8W8SGoBmQqoqb4RT+lv5ZF3o=;
	h=To:Subject:From:Date:From;
	b=TmzybmiGc6dcYp3an/q5eOFr4XzXpYxiS5BgWCrW8Bu58+AMkX8w00t2D1ud+BlFY
	 vAlAhuTMLcQmxXIEq0V0YS6mvQzyHA8DfJY+rxuNhJXD19qdf8ad0puepXV1oy+evZ
	 8WYmuAK+CEk9zwFwZ3/cDdKR8+rizaqOeu7sMBOvgiCatN83K+XL/CeTiViDI/9lSE
	 2eVNVvnBpnb8aAAeRPMEv0E8/oNN7kxsv4lxNB13STKqTc/+j4luePgstcdxhRSERb
	 NyhLrtALNOnlFSfLVKTdgDSqopnsFT3ZZwjvkDZ6vly6lCoUyf0b3lq2S3OMfz12JY
	 LS6bvnzo+nIzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C1C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410231368.15044.3356781307990263364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf2ae1f8bb6b46b16dfd5ba48a0b54f18f9be6db959a5a2f59dd021b9ea5100
Date: Wed, 15 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784102313
