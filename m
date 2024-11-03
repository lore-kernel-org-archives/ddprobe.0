Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BE63F9D5
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730608554; cv=none; b=ZAFJ5YaNOluooK0L6iofKRW3k42g6nAwfOiARApGrndPr3aAuSmRpRHJyIiW/d2wWBP4tqw/117yOZGxkOzuBjvK3J4Re3T57tUjzY/Q6XUe50+787U63cZKGd5fZ5NvSIYd/hBP7Mw7D10j5B6P56a+Q6JEZgpnNnUpa3VyqOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730608554; c=relaxed/simple;
	bh=TskZ5OD/bz+24UyztoAogxXn1Y+E0hVLFXID7NG2vjg=;
	h=To:Subject:From:Message-Id:Date; b=luCsOvUFpIjYAatDEmgt+xOdh1FkNEB9Oza0hAo4HPaMsu+aia3jF3CWGzATiToyPEQqgmztNUHEfrD9RAFcK2HabyLDblukb7+93nOKXWxnbBUE1fqKRqCMwJW6IIESeRflgkbzb8vNFMOROxM26LUFBNnCBZnjbfjmV8Fo7Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EchxhEFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EchxhEFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD79AC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730608553;
	bh=TskZ5OD/bz+24UyztoAogxXn1Y+E0hVLFXID7NG2vjg=;
	h=To:Subject:From:Date:From;
	b=EchxhEFIkZIcUnvAT6YSKBjH/g0+oxrRW/wj+cy1tad2GUmOGGqyEdYS02wrv0j3m
	 aFb+fZ6Uumwjp5M6pzGKmN2AYOXL/lHETh7wucGX7/eiODcEzc6ybh/svFBkd78pte
	 yFe5P8vAKJ42PTegah/lFqZ93ry0dRBIy+tqqmh+diLTtqGBNHSYw9iEJaj5KbFD6A
	 ACC3FbFOPA6vzAKglie6j3hufFVMU8uLHqgXt8Wc36UFwPWxADNgBJ9hp51qIxT+uP
	 aDYHbrNsmt4Aa6H3tVSuaeP5sv8Mhq0YMZ3z6hfRnnttZ+lRWmE0dHt6JNWJ1RlSpq
	 wG1LkFa5WYSow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D02E67806
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173060855358.3070.14374110399281162951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21739897e4285e09f5aaaa39913401f1586fed90146d2edaeb7c6269b4d233f
Date: Sun, 03 Nov 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730608553
