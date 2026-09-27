Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4505637E5D8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790499634; cv=none; b=gd7j2tRMIqCA+4+nPj/W9rPYnhcIxkC9pjpPowIXOfohCV//dOUU021zCV6uTXt+yO5OEsqbEJN113XgQkobFqtoljd5TdkQU+30AY8N6gJj495U320ZLpgkaLeZAjE80MBKrAdYS9L6jLIU3EOiZCa1jyTq3Z8LGQBnezeybRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790499634; c=relaxed/simple;
	bh=fcfkpa8ctZ7Kb6BEypRxpfYKDP2jP3OhD3NtcdJLu6U=;
	h=To:Subject:From:Message-Id:Date; b=PqVrvbwKhuFTtWvs5lnkFixjjq78Dt83Rv11sHY7T4S4/dx/RjpwWE1fl31332nMu+HEWMAmKuxZDP0Ui2YUZ+HpZP/082neqZF2uaUChZhSVhxJkMQ1H2nI5sUd7GZ/qwO1FqQCGSGU7yO5S/kIaHEut4Xfu30PHjWrzNVkAlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KibyDujl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KibyDujl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD354C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790499633;
	bh=fcfkpa8ctZ7Kb6BEypRxpfYKDP2jP3OhD3NtcdJLu6U=;
	h=To:Subject:From:Date:From;
	b=KibyDujlsyUmnnZYQdnSwYuJHZ8Mr61cMV9T2sxsP8zAXRYULsmdmW73rbH7m1+hr
	 Lcc7H5woZLWoQNMmZ0RUVuv/3CdlPwot8PMmiefed87g5OuZm3Y/wMbDM9U2fi8jPR
	 e/zdRZp5OSJEPqqeHO4tvY4mlugWJBkHjcGFkxIEPQzHoNitCFOLuxZeZ7qqoFNxuc
	 PD0McakqsA6CqxjWGzmiYSdKMstiClCr4vPe+ifM4mkoAMfgfquAHCN1ZtozRS3J5v
	 Kskyvn9BnfMDtg1Sh5DRsBXg/Ky64cMph0KBIia2uSq9rm95yRCZpW+Sc9TmVJ/u4z
	 77KbxKTZtVScw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5B6C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049963368.8985.18015617592079883210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a0ad98e171c44af48e8daf41c1ec8d5e672e02137ee55675409a3abbaf0f72
Date: Sun, 27 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790499633
