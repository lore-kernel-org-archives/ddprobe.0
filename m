Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474CB443A9D
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789470634; cv=none; b=KO8cP471Sn0nXeSbpPZ/1J24Zy49GwTeS7acv7Q4HLnTiD8qJKzYiOP8lUF7KZY1vM4hDEU77kCV98oUApXIt6vtFa+yRxO2HO4qv/v7zHvcapds+Bvp3Zp7JjP4ToNi2Ns/PgyaP2uph4B2VLgUtWoivV2SdVRSD288BNyKu8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789470634; c=relaxed/simple;
	bh=ua2zgU34r1NPdM4qWgj3m2w6rPgO994udM6D5BE3Enw=;
	h=To:Subject:From:Message-Id:Date; b=lA7UJrKiFLNnxNXgINtaMEggTE7WYH3pbweKgSDb36lkkGcrpg3Fsfi2pjQfvMVWYXjGibX+PfYOUU05sSeNszQ44h4kzHOhGhqmLQWK4X3PV8ebzti71bqeCdaSjx1aiIQJJ7xHZU8hwG7UJhYEJFTCFEYz8OTyUF6plEwK9RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GN6T1sNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GN6T1sNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFD9C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789470633;
	bh=ua2zgU34r1NPdM4qWgj3m2w6rPgO994udM6D5BE3Enw=;
	h=To:Subject:From:Date:From;
	b=GN6T1sNe7EK3ztvrH4T6f+Pg+J/PfFUj0uvXE91xZiaqKCHzV9HMFN0oL6/NYp9w6
	 rwa+ZaDagXur32NAunslqUTk0t5XLyxjhKS9DUbQnmiDzAOoX97GJ2RkbqMgTh5x2h
	 yDUdWR/NSCvC1VAfZmbiqX/bEQzop9yqyDOSiAkAh1zot0suOYsTx5zVfemE36vFMk
	 OKpE6czZu5e3BQf/eFL4R9nDwTNbo0fBoHiKJ4X//HyTRqXroP9qXNER9+RShss+/g
	 IheotxHJH+VFP1EDpvShM+qQMkgdcw77nmfeoJ3agCya7OplkeS0uV96BjobeTkkBD
	 H4OpmZI5A7XkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9471C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947063368.4927.11147303492759418948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172b7dce62ac0ec490f8cc0e6eeb939117f1d883c2885061fecee9e5d70c8ee0
Date: Tue, 15 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789470633
