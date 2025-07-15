Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283FC22083
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752551394; cv=none; b=NgGcwln0z9sL2nY+Ihe9nqTaX2jUvABDHjNrN5jIB+GlHPePd7enGztgGqd17GrDWJH0Wn6BxWkbMII7OkoLmCCWLJ+z/w/6ZZ1WG8Ucdu7ZKXHj25JbeMRvAKS3tr2QSKL1A6JsrCYGgBohY67BIe/+NyyaLcDTBYph/uqKONQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752551394; c=relaxed/simple;
	bh=IfEAj0q/xOrkfrALd2Hxek/N7H26fLokoastW3FqoSQ=;
	h=To:Subject:From:Message-Id:Date; b=XZsA+gtnfRBoG1Nqh72bBIbW0ajNVFnvKPENRTReunytfa8W7SxZN0zroO1mVaBWjSd2+UNWTzFt5bG99Gg8pa5pvo3AV+n3Uch+jOBzF2nxTi8LQVELyPd/054MLQ4xkxRpL0bRyE3GmSGimhOJqZk91DEM/dLjnePsoZRi7TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MamQvybj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MamQvybj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C596C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752551393;
	bh=IfEAj0q/xOrkfrALd2Hxek/N7H26fLokoastW3FqoSQ=;
	h=To:Subject:From:Date:From;
	b=MamQvybjHKZTLDc0jXiv2+B05jv4bvqwTJLt1oxVzqGcaYlnSOJHs4NMJV3Rl/7Fx
	 uK2CDYJgRskDbTGMNDpUtGSEo4cAUDDdj/Om0JXm1558AfesfJi3A8ak+bF2Jh4Ubb
	 Bj8z2aRIdFGskoVA/2wckPtWnCtXN0Kk6dtnnmdI2ZSYvze0HX6aDhpSIzPosTguFA
	 GvpcnHKnH0w4CjQNlDqeawvPRNRw8WFez4zp8Jf2W3x9DESQrQJpX04bz4iFmLnhO+
	 uwk/a4Pl5XK7BSL/6DjAqlKuKfe3cMPGQne4yXR+pUsvbYxq5PeMJ5H/zpGEtRJ+SB
	 +krZYEth+dGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E222C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255139357.11492.374134493309205781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bab75935cfea6c7b3f68081f7d6cb6fa7028b53e1599707cc83887a3a77c591
Date: Tue, 15 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752551393
