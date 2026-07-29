Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AAD30C158
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785293434; cv=none; b=nUaoW4qdF73CmdIMRD0wFdDqVfohq3kHUgRPogd365lgqbiuHheEKF6O4mN0LSuoKhfG2+fmvr+PeyKpsfc65sywi4r5bcF0WzXioaux5FzLWjrKZvigFWPqxjo8dwyWUpoRVn1QdD5IhLCKxYOFh/sCvzFntUCd+MF9RIhT6Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785293434; c=relaxed/simple;
	bh=JP9Nc5Z23wd54Of83FYJ3RTz/h/bPsxbBEwAun5l32g=;
	h=To:Subject:From:Message-Id:Date; b=c5aGTd/RiAjQbr8Fk7q+Ewq54lIJ59bit4yfXitrr+Cnygj8Y7krppRJmjjrCofcAebwWeHLbtl4Lc/zTAHA+5EqWlvpXRWpQJmLi6mbJmHW9AvGzXRBx2dxB4c23bxuMWOPKRY3bDAKZ9lSxj2I2q7hJ58tCUhmE1aIA1M+KOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEJowGQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEJowGQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F87C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785293433;
	bh=JP9Nc5Z23wd54Of83FYJ3RTz/h/bPsxbBEwAun5l32g=;
	h=To:Subject:From:Date:From;
	b=tEJowGQ/KaO35o5qHESt5joOLriC867gSDQaxyXDVj3NKXiGb4yd1jz91VWfJNsRy
	 J5x8MwvaWAO3mlMCbLcHIFyEmESsiOzAK5Bg9BtM/Vpg9RKWy7eKikks1dg2xdgqIa
	 rJuDhNfSF6Hxp0cNRKioyK6nwwNOKUAyNoMLv3hTuTVxCpQwKZlIqz6vzsg0993fe8
	 J6wvoGC4XprpBx4Lb65CgCRybqCRuhOsbPcDUOrDd9Uzsl4Id4JQTv0T17kwgWy99W
	 bQvdDzo162OQYY+sL2QIqvQ4MNHMeAGQK6F/Xmjh4DCdW8oJgthJE3W44UPnLcwC1p
	 N0m8EAv8koRbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DF5C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529343368.31494.17361333797438109496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c17353fdeada546ee9cd606a2da0525b8d5659266844b06e831f10b6be81cf
Date: Wed, 29 Jul 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785293433
