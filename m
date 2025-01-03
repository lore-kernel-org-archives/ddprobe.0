Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F751FAC26
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735926954; cv=none; b=c+H0AMW169HoKDCKaMmFBqW1WHXzjr4alD/PtmCZjieKnvznp3fsUdJtCxhSlPU/9Bm93i0JmNXcV1eHtL3M1LBQ4Y2whOACdQA35bi3wXGmHup7sP5AR77oW4tMfREw35nlydfz/gc6czmbYDeX8DSUNRhZFUJT9ToDR2FTzo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735926954; c=relaxed/simple;
	bh=VZNBbAN7Ehztxo3TConY8G/5zZ5g2z0pnXFGdwpayOo=;
	h=To:Subject:From:Message-Id:Date; b=MqfF0Js2T00u2KDEZpz2Rl7HArdkh/1C1NI6oYHaB8KS+C5uL4mDcmw+ioD4YBxDGIg67gPQrix8EUAWL+NzaOVmS9NImglVxx171kXMA+XFG2Mh3YX/h+I8WpPJA9yRGT4YbZj/aUl5ZKxkDclJ4lXe7yCQVQB2WrRjFZPqd14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayK5FWD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayK5FWD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF732C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735926953;
	bh=VZNBbAN7Ehztxo3TConY8G/5zZ5g2z0pnXFGdwpayOo=;
	h=To:Subject:From:Date:From;
	b=ayK5FWD/SmtfbkjCIansTy4bgvECfxQFo85Vg5cmS3A9PEmdHb8/M4LsielvVvm5f
	 kNp2jFz1An13a6xXIyo2MCGRaOyAAj9BSFL7v4RokYqtKCdodio8pN+UNPfjk4PYij
	 U5frkRiczJW153L/Ntr59zpqgIdUvtCjoVs/S7H2H/9p/1aq0jAKmAWKL95CdNpZfb
	 jEMB/1GNCfwBadMZAGkggAShGF84t73LDuEPlcqDnecX5Y49wGpnUPZy7BbtbCkF4e
	 MgIdgtIg/jzAZseNQa8DupbD+7EuRx/ANi57r4qOcS+G+H52xRfe1DVqKwpJXvhGaa
	 30yaD8OirBGTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AE9E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592695359.16293.9715620957825340496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0db36080cd8b94df842de0ac2963bc033321876658c449642ee3fd874a4ae57
Date: Fri, 03 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735926953
