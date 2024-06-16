Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73ED22561D
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718540303; cv=none; b=qpAZNlJoKQoM4o28SDSp6pLXHPa2vgP1VMKPxQtTGvzQk7zHXehXEuLfTtFP+TLLz2WCxusE62s1Ie2lWI2E8Jb9yKz6xvOkOHTeSSi38cEdxDwlloFOB4fuQkWp8crkrjrECgZwJf5JTAXGmpQDUu84EPaX40ZAw+4NKIvn0MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718540303; c=relaxed/simple;
	bh=xh+Ku9t7cNspEtETAwHzAcesROiALauagY8Fuw0TAkA=;
	h=To:Subject:From:Message-Id:Date; b=bEwVAWH0hlLY1lizuV3/7MWFsxH7Up6FLGvn3D49R+vXBEl/IOEWMKjKmkqZwQNbTgLPXgwZ13tyY4MpN8hz3kuEkIVwMV8USDSroFqmDRrN+/V2D1WQl+bJLecwWBDaokx6FT6Ao0D9AbseyBYjBHJpvxPQSDq8VyUGIbMXX8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6R9vlbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6R9vlbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAC1C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718540302;
	bh=xh+Ku9t7cNspEtETAwHzAcesROiALauagY8Fuw0TAkA=;
	h=To:Subject:From:Date:From;
	b=O6R9vlbZ4KH2rnbNlOtcFZsABdGg4WZEBVuPmTksKrHJ7QUymu0VJdBr9lR/PAeYq
	 D6EmCkpIEgDyxhAAtfiimXeLr/sSpgBodbpRN9s5qUwUfektxT69Tvv7xmByYMuHYf
	 u7H7SePLzws0V9BTf2jzx+RpURT1R0KxsaXLWdL+LHoX4UY1MXSfgxGwYGSOPPiUIt
	 t5n7nAw74UIJzXROHs1lM3RkLL1pCSCVnVYR2tRQYUqnxxC7plBbcn7lwCOk1ijS50
	 FpMSlIDLkbJM8lurNwnTl+ntsCk5Qc1fCA8OGaT/OPou+VWX0VkNXJ22yw4dg1C3Kh
	 Cg4Inwhhx9dDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED35C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854030275.21932.17113540524192813071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e217061d11dfc315d361189804971dd623d618258719b12b8a642a4839baf1
Date: Sun, 16 Jun 2024 12:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718540302
