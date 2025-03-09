Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA3D1CAA82
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741531734; cv=none; b=WIV03HGgKGU/P7tWy18D3/u76YQSiNyf2Dh30yjDh7BMfV6D1s2q9D+jPTLpQXtfpWZhhz/bqD/fKRjT77+6AwEDaNALcHErZL/qnRUsFdR7RJNTUcAupwKoSw2Ofi6ZRfwMKMb85rsqGfD9CfwtoZolJvlbYmP44Oos8c6/Qvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741531734; c=relaxed/simple;
	bh=dykqqAw+LViFQQ5JPopeaGBPPOEW4dv6AWyqj8mBiZc=;
	h=To:Subject:From:Message-Id:Date; b=epmdNsLaucg9U+WJZLUnP8NqmIBKGRwK3mUN6bZ5ED4Z9xbaeKsHHSECP/po/4C/YT0+rtVEKMjYnywmmoSp7xtN5BBzUyS4pMs1m0VzY98MFUOOrpQZGN/U/7VnZNM50UILwSfb7MXMjn18eI3mu7ZAY8h7hkg8Om8i4PtLV4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxpQ1n8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxpQ1n8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37ECC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741531733;
	bh=dykqqAw+LViFQQ5JPopeaGBPPOEW4dv6AWyqj8mBiZc=;
	h=To:Subject:From:Date:From;
	b=OxpQ1n8Zodi0fXEfM87wrywypTtlLPgBhig421hEGBR0DaIfNHdUl/a/BPL3m9e0b
	 zdvY0DmgNxmURsiCHqLT9jHBWqyew6RtEKvCO5HYx0JZZN7Sf9Ayp1sILJ8BAPJ4nX
	 SSd5OxdHPGtF43P8TCnlpBtWaI0fo9B3FO9lo4SFqP0oANRnD1E0ABDKyScvjkkw2a
	 BPGeTWSFu4XT0PTN+GPL3KtrBDTi2eD4ZwCx9GeDMDsooEEchqlH0eXYww/Qae6Ohh
	 kIht68SOvaxagcKr5FzITjZzYouA6vgwrkpN7NUDjN3wn27qjtYaxdNehLfKSCl8cM
	 OYyGPhcgFv4Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E8C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153173358.24689.8415384640931610796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f44198163c1f8e1f498a39f57a7ce1a9337744a881d1ea709cd4fb7bafacc9a
Date: Sun, 09 Mar 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741531733
