Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6AC34F255
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788140434; cv=none; b=lcXwOp19pXNOoaW7S3ifObq5qR/D2hpepaXL9H5TradrPC9QN8+ceHrwsjd4zloMPj9ikenqTmjlJ3hh0hOv9HJ55r8cw/SdQdVSWNddOL+X+zjSF30hfI6rL4vLhQGQwbQhfEQhw45HEZ3a23psc95NolDvbehhxOfOrGc94GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788140434; c=relaxed/simple;
	bh=eZyBwtCOJXww/JV6fQtbfvSZUXJPnPiO40Laftp2va4=;
	h=To:Subject:From:Message-Id:Date; b=bNn/5uFnzk+iqY2ntiPTLyMAa0R01nFP1r+ExtPUuZna1pJmhLFSFSkjB6xWKaG6qjlyh0KFUwBzp1qrngmXkv8YoVlPUocGaCE58U2jPjuIj3smoVHtYyJhL2z3SaloFi6HEnfNErYXtENDyYIYj2Q+EpSdMpjcYwL4mBcOrVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZtznWMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZtznWMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C90C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788140433;
	bh=eZyBwtCOJXww/JV6fQtbfvSZUXJPnPiO40Laftp2va4=;
	h=To:Subject:From:Date:From;
	b=eZtznWMmNeJQu9YYFWPR4KuC+nP08xtjwIM8b7XhnF1Ic89Ks6X3S+ZnZkIgdOplh
	 6pfvY3ktKYgAc3s0BnhMhG3RBffoiG4aZdXIJ/E+glyL/ThyetKk7vx3lkZRU72PUD
	 N33Y3WL4j9h1/MYhilhjVnzHyI0CCwrK2DpC6YVEUy8yhgl+OSf8He18V+cAMRM/Ql
	 NkhcOV6yuwd4JTu4gcs/TjEFgGQ4R+iQUFFD7pDGBET/F4qh2kyvvSg1YQNBcMpxfn
	 H6YMZoddL28CtfmFKzdDXhK7UwS+JSg9K0j4wyApVLVelLjCqbZTce5fHuqCGwwjAZ
	 ZZbxW2EElN9FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8DDC61DE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814043368.1900.502493700946849441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d53c3b77b64cbd68cdd856bab90e5dd1251d79d2c99dc1e145cacba5e23f41
Date: Mon, 31 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788140433
