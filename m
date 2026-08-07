Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6B1449B0D
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786083634; cv=none; b=FCmr6AEF6wMZP4ye/SePwOXUJLyPON5xVzKtGxcYiFlzgyf2kB8HLCMyVxMoUs+But6NQM2QFI6CvDR48V0FzaN7rHwv4aBIRJYDtqaQ+n4XBLCCOi6TKcCyRNBCNHdt6zzuGsJA7N3ij+XHB/XJHaLK96ysrydPJEpify5s6B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786083634; c=relaxed/simple;
	bh=g83DnC11vN71ZRvfGis0m9XIfoKFu7bLMQv/8mUBf40=;
	h=To:Subject:From:Message-Id:Date; b=QSMz3L0u/UASCpVC75vgkoODFR7zXGsDjb3xkXUZ0UoD2AJOJEOXqH3tmFsWcaRfDvz8xN5WZkobvO7DNI+EUFk17VwymV6m7AyyCXgtFHmeF3CdXXqzNsKf0wm0lc4IFEzEf600ZsBUXkFA26pK17zgbEBCxEeCcMhGoLEP6i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHS5uih+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHS5uih+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23F2C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786083633;
	bh=g83DnC11vN71ZRvfGis0m9XIfoKFu7bLMQv/8mUBf40=;
	h=To:Subject:From:Date:From;
	b=QHS5uih+dzo4cwrsJphOkshX7dEXlePwvuAvG4vzOi9slmDuLM/pMVYXYmnZTdO/4
	 /lS+/xNm5yix1iN0HKUdLvgp8lggh374GUe65qFIizp6i6orhe+moEx/dxhW/asjeZ
	 v6YMihWJWppOvDOpTCfq685nMGXpj1xiuoNSJ8A4frFSEfM1ysAsQbpxK4azHfuZn3
	 WeBiuVLkF4jW0tYM86/JO3SOjWraXiFOsw0PI4I0RT7Inan1nOQzJFcXSaWVLoYXHY
	 1skYXBBRg6m+BOZcde+3KaCVaP7dVgdDnlsAPaK69mFjI1I9pL7sC/ZsQPbAVoM7Oo
	 x+kUktz3iSokQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE18DC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608363369.11393.11887847651330667559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8709bd17ca8329d70f41358499bcafee2cd0959bb81bc50665cad5415b7f4c40
Date: Fri, 07 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786083633
