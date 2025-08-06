Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228E31FB3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754469594; cv=none; b=LUh2GEk4xjSVxNxMahbky2hVdySZ0qXbZyx/LrA1v5ndqqnrBYOFS834rDyhqWVoAzejnSSWyv8k0hAWh74Z7yuczEiLjHB4xY5lkB240au5jhtyr1WRO3va5SrjjQbapFp0uMLlmKiyJMYfTnhkxAD0mn67USghypEXyweDrQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754469594; c=relaxed/simple;
	bh=h71z/DlhsVwQDLqQiOnnZyOQCSBuuDbXAf4IwsB/Quc=;
	h=To:Subject:From:Message-Id:Date; b=j9i/lkGrYQXDpwlYl6ormbnFEir72lpOjGoYMaUeJNf9GDpyk9EnFcluyvUVpACWqKtVuOjq8QdMGXu4edmKHza1x38YeOWPBI6hqFcix2uTkNj7P58tF7DSc1SG+3CYtMXJohrOVogwq0z84+Y/wfuaAtvSS8dFzJThHLR+bBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZtkT88b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZtkT88b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BCEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754469593;
	bh=h71z/DlhsVwQDLqQiOnnZyOQCSBuuDbXAf4IwsB/Quc=;
	h=To:Subject:From:Date:From;
	b=MZtkT88bA0dnwkMi/ohoiG13duobz1gav/qvYYkTkG+pF9qxN4mGFazCb8eCE/FMU
	 3wCR5RH5ZJsOllV1xkaGf2YQxUE/BK3Shm9+sH1nWe5C2Vu5IBGTonUfglzUk56oxp
	 CwprHgnu7wG4eNCeA2pJQYuOyd2QAQEk6fPDxMTFz8jQkqMxNwS86DUcetsDjabqoV
	 WOrGutgxX6tH4fx6ZkVqsyoAdi542o9Y/N/fpFmfwshxB1To9iXP729lJmXzya7Y0r
	 p3Df6/KUAOvMylwfSjn6LZNyAqvi65eceY1WMIowJpGajRqEGvOE5N0IlQtSo01hBh
	 rocbulah8TjwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A02C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446959359.18810.8992072221092899901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f41debc5ba3e65842f1db0fcbe82aca521391b80bb1d96687c08822967c369
Date: Wed, 06 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754469593
