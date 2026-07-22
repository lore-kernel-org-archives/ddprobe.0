Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8966538C427
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784687314; cv=none; b=bS0WDDZ2ihl4Iv9T4syXaWmx3rPq06J+roij0gSrMVyZqL+6Jb0TSVqMWLCDux8DauoRzAjQdjjMxOJaCdJJE6pLNmy57WC7UpTPUh6EX8TIquhp8Du/i8fPEDxp0MlRIQh8Ml+o3KtmVdkrLCJe+73PhTsAT3asBiSlxVvhsgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784687314; c=relaxed/simple;
	bh=LHfuCKokpkdGjvCRgkj75gbDsy7BnnHWmcm8EbNtYbs=;
	h=To:Subject:From:Message-Id:Date; b=hcxX2aj2KHyjhOxS9Wg0rMTF3jGx9k+VHLSd9+y+OGEtKKOfp+jN0+c2LGz6R+rSWte6f2LKw3JjFd0/gMg/BVqBnrkI29DwPU6ezFM6vANirSuTQn+8A5QkA9zF39yD+SufzGkRZtFwxrWKTuzSEOVj268nrrwxxL56JuAERf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdv/rXNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bdv/rXNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F99AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784687314;
	bh=LHfuCKokpkdGjvCRgkj75gbDsy7BnnHWmcm8EbNtYbs=;
	h=To:Subject:From:Date:From;
	b=Bdv/rXNbrn3gV+DiT46STatzOtvbOaU8c6BQf4Rdxu1HpNdCqFva/LbguaHOa0B2w
	 suNkbh+zl3uNTDMksx0vEWd03HOfHS0Z1CstNp4uvaHmouvKvqZJBKDmVum9sMCjIh
	 +izotQVBaim/xNNYftpSo3BfSsyAR6NKKeyAJ0Z38ec32IsXauFymHeeGcat7oWilV
	 +emRVbA4ka411o2Seo/FQfhOjgYay/OFlpN/DJ3/fTzEdrIP5yo5dPMcmF9XR1+lz5
	 r6JTidfIGFy9gWjaRiBgXEDtVClNGsXO2mnyxb59X0dTkyik2g5T/jil4Xa69x5WYy
	 nHS/1nwjHYsaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3824C4452B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468731377.7710.15608081840901191054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66b06aabe52c81f6ddd7e635f3a4d10375043f437e0fb4e691ff7ac778ec172
Date: Wed, 22 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784687313
