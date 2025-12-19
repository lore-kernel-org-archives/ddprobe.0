Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10144324B3E
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766151834; cv=none; b=m0jKxnGrrBtpTGxitTE03zIMPjzVWWSRCDKFbDWtWnWxG4dVK+W+NFw2UCrMI1wdDzdqB/WgXa2dBzGBjIB2Q3qmiWQg7xXzLe5N4co6pmbuNxH13cKnD75DnEh/OIP4Emlcxmfo4b1irf6zznmDC2UkgkaJzH6KFW2ryAo87DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766151834; c=relaxed/simple;
	bh=K0byAzFWms4igHZCQImUau1OdmnsbQ06g6WdyQza0RU=;
	h=To:Subject:From:Message-Id:Date; b=WGgYfo3Rp6Yn2FGqkMNAFt1TBCR/DL6zzQ/vKgf41xJuiw8QyWzk7KwoqSeSeB8qhSXfxgy7m71iJT/UCnpVM0T3lCdKw65NsC/EY6SpeP67Eqjm4iE3hd2ZLI1F1sOHUI3D0z7JpMwvrXOWtKsrsDzbW1LWZJooEyhoYhunSFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGxYX896; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGxYX896"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A053AC113D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766151833;
	bh=K0byAzFWms4igHZCQImUau1OdmnsbQ06g6WdyQza0RU=;
	h=To:Subject:From:Date:From;
	b=YGxYX896IG/xz06nupFOl7VfcohuWDMBH3VvjFGOA4Y8zaL3N4+q8ODIfNmNPZbQl
	 YP2QAZjkm3g34WTTdMv0TOWEXfqbY/cuuYcc6SWa0mi6gqksPvuCesxzqt7karWRls
	 8JEHNfz+bZ5LqP5/z/86VzMLgbtW7IJdcAL8AlGG/2GSiya90JAWFJpj+E+rQgvL4n
	 3jh+wL2EG8QmKYoWI44cZKkXsNPZ6RXtHoVKyeL4gqT56Za0V9/ck3oHtE86fRSlu1
	 ylnKTXEusOvdmfwJfWoFUMtBcyOB5Wo9vgxqZXo0LT+9z1SwzIh7+YIhYyJy/sd9fQ
	 ksWnN/NfDzseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CED78777
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615183358.13832.8625088320559913605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6dd1f10048bee6193dafe1a856d94f7d00ce598edeb18ba794426bb124a6fc
Date: Fri, 19 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766151833
