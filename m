Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3CF14287
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723251354; cv=none; b=rq1ygnqjZMBye1TJjfSU9jjky0vAzf2P1gXkU6KBlOAblUV6ORmRmghfdmUbGihxPhK4cQ2wdu15RS17vWdIPikqkPsyxtJ3tNH040XtSkvyCdFfWjD4AmkdsIbiRiWTXohrT5+BwedVwflEUSborDbJHNJVJyiqzraiTZmANeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723251354; c=relaxed/simple;
	bh=S1vBjHgdC+tKhai32e5nvjmMMaX6Z94xmEUoXeAAxS4=;
	h=To:Subject:From:Message-Id:Date; b=aB5Vnq5FJ5Fn/8GJsy8aXpK9k0i0r2yPm25WzbppYDegprheV57Z2QDbZHhQdpHwVx0Ukar3oi9oRdzZDXTQliGF6vMVorMzUndx/nq11oBoZr8THHXQZJEakqpFQwAYBD4wKFerydrO9EhwRRuAVQ4pZIDpmd9KlvAJy/4OgrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtzKcDcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtzKcDcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A342FC32782
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723251353;
	bh=S1vBjHgdC+tKhai32e5nvjmMMaX6Z94xmEUoXeAAxS4=;
	h=To:Subject:From:Date:From;
	b=XtzKcDcXwf3v5wzcTh9Q0gfuKJtMksWVKVxa3Pgj+vcCfegYAdDIg08yXmDWnCj1G
	 YixczqrjUuY9PrGQKhriAk0jB3BkWaI1/mWR2RyhyJry4rRCHxnHmNoD9ryZ2fWTXR
	 IOITAcK462J8nyMcONET8hlhksqd+3+WmOSXEezj9gAZ4AjEE12+GAsqFqI/V2ALqy
	 oropFzOPI+azRSvTXiuh66PWLr02jwMDysb9xOf4bxzSjqQBLaNXuKUDeRh6ot+vpb
	 NTbwwY4Vk6qAhgC6l0RM++L5SClIoRljE1+vLQS8XqAshBQaVS0jrAcicUyi9ASCH2
	 vhKLSaYPvgMLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91793C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172325135358.32280.13400290510502341424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fede66d94177c0e128b20924a8e89934e70bd0bd9d9b3c0300bc58a1bf6ff4
Date: Sat, 10 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723251353
