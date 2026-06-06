Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58961213254
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780766074; cv=none; b=kCBztONHUf3f5JiG3MrViB74tIiyO8vOiVYrA1dsKgjZYBYplDxCgWeFkS4jYixqQkBBPblxQzxlONopA9TYZJMnjPjNmUKrF8aHMmx5KMXnYlpHbVEUrqLeB/AMH1L5Thk2fpMSDFzV6ZdrV/LvuvBSQCUI2t7zF849nA/KjUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780766074; c=relaxed/simple;
	bh=9q8wdewzMz2z1BXjnGZp8n4GIbiJLobNyg7c6DkBCYU=;
	h=To:Subject:From:Message-Id:Date; b=cGkl6n6RRL7z9DZVfOIKRrAv01Epjs66u7ca9n2bXb3DNVR8cFq5+1jwNEboi51SdItz2vUFXFJGXNtPvs6C9qE9JCiaJV1zkn5Ahuy0uesPTHOWHpVLTiu+RhP2hLzM3N+e3QjZHRwk2M+Sg1gbvpi2Uqo0DaYPZCpO2epDsL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxE9CI51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxE9CI51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01EEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780766073;
	bh=9q8wdewzMz2z1BXjnGZp8n4GIbiJLobNyg7c6DkBCYU=;
	h=To:Subject:From:Date:From;
	b=GxE9CI51lJDovMUszYMT6ygfBHQhiR2WL7X5mY/KIt6N4MFw9z0o1NtoW/fcAkZOF
	 kiAJZJKKx6/kBFRYYSuip7HNw+jV/tkAhlQ4NpCmlD/IyUQ674YHqsfn3t3DvB7eK1
	 I+6caxnXR98F013uhH/K7b0NVP+9Hy9LVhiAXueDNpaqGsOiOuP+H0+6ozzmZkZLcf
	 TO+U+xHb3vklauP2hPYDvGZWd7SVZ1Ym4X/p5Fz16J/gDvG6IcMN6u4I9atj719y8Z
	 cLrpzaYe0MLTFYCEjmV9+4tGc4zvp5ojzcieA/iBf14EWGMajxwmhjTlLF3mDo5DNq
	 py5pamC9Kw/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC14CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076607368.13125.12766826880702686362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10ec81cc4dc9e916611af87df4f4b7f508492230c71877b410b71c228986217
Date: Sat, 06 Jun 2026 17:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780766073
