Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202172580F2
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770623034; cv=none; b=QgE8v1P5Ooo048D9rIl1xJ6JSoNpQ/YO0p6KVPDGznh6z6MVgGMG10efVkps27fe9+Cx2VLn+gDvE4vzeWylILDjAA65DS5vFKc5C+AkseZ/U+fsUpQ1HKAD3MrlOP7nvDUK54neT22EDCGSeUSafn6g/4AT9r5GXu3zIvS8vX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770623034; c=relaxed/simple;
	bh=aGwQOVzDgy46SMjSRAoT0dhIiw2t/afuv9nOQJvXLrk=;
	h=To:Subject:From:Message-Id:Date; b=L0B6NsjFUPMV6VyQcN7GC7njBcMCNBBeHOFNkWoLl+kbnFGzXyhnUwZv8a952BkkK4YfZoYelr19THMhe7PzkHdoypkSuHdNLiI9NP7boyG6Rtsy+Als2iF53jfh+Wam0qTSq440qgJKZo1B9mtIetPxJrzlxjNdC9Kc3hGm/UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iezyHXD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iezyHXD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC522C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770623033;
	bh=aGwQOVzDgy46SMjSRAoT0dhIiw2t/afuv9nOQJvXLrk=;
	h=To:Subject:From:Date:From;
	b=iezyHXD4ClLMKOpEHvQ6oCSdgUE8xbcahkwgRVzfuoFESe3+0TbKW4SC309lgno65
	 DcFfY2Ca14d5Rm6Q0LaVUejRn6SW9StmTtcziOH7dptseEq4pv49234kXQw3hdf27g
	 uaWZwOWsW4nSFoOrllB4dMRpWqguncmvqGppTb53sVd/nrsLq8DOoTb4UqKTHkZC3k
	 XjuYuG3UCqSlq6LxjrVuBoaEooz9qhkkgI0dm4B5M4Ce3/4GQVnLFSGb2VIuMNgu3c
	 RaTtUYmtloD7mfKpdeT/q8uH9aOn8z5Zo3xR6hdRaY6GRHknTyjqheb84U0Y4krbKP
	 M4U6iNBiRIwBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99887E7C706
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062303359.4496.11504584361918844890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5722f646d48cbef326d4f8a939b42e1a3569c508f732f501d8dee26d89d4b6cc
Date: Mon, 09 Feb 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770623033
