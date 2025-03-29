Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B74FEEB2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743225594; cv=none; b=IvdlEbR2zKf+PTDSxNi4a1nwVwkD2pp0fQ4Qck3uLeOJaCyOXe3AJ2k000qPdvWLKW2vbSHr1uBbFh/p/xeA/1lIqz7jB7uNN0Ep40gtu3qfKkV4LyVtkeBNdbWDmwHN5rvYV++sCgd7DaMEW5uSc7cw9hZR+akVDz4pDv6Wko8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743225594; c=relaxed/simple;
	bh=Br392+4kLwdTrC7+O+zSrTtHW1LJfXMRQv/pp/CBdnI=;
	h=To:Subject:From:Message-Id:Date; b=e5Tk1IpOTGcxYWLJGKvxITjkxQsDFGzDtCgXR4uNJH8edwtQbxUtaoinwzwFtrT9Su5UZf7JbQVALHq6V50/TlhDcsE9B6Ywc5GfR6D1fkVcyMGbKG7fs9RDuCUt3Pfysd7ILqgtrLRCFnCiTZaQ8I6NCqmgdrJQYcKojAxvT1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzCJAqBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzCJAqBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D8BC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743225593;
	bh=Br392+4kLwdTrC7+O+zSrTtHW1LJfXMRQv/pp/CBdnI=;
	h=To:Subject:From:Date:From;
	b=OzCJAqBYVs8Um8YaR03IC2jFrUyBwqI6o1KCOOiZdHVn7w9zvHYS0yIO3hv4iKKOi
	 3GeSJMDyv66tNrY6kdOQp6i2ps0+ohPx3iRqde1Ya3RJjrFB62q601fN4dmToEnPKf
	 3RK49H4PRA8eV9qQdj1ukkVCiO0Z5wVAxXsSHkDltJbjT4TAPY+Eu9ySgUf23QINQ4
	 AdrOCCJ166V9KG59wPOdDNw/ujx1xmmacx+PwwlBc53JAIBhxhvOHAK19LfDCOu+xC
	 TyHYiuSaYJwMkA7PoKTWq5oFu99q35FGTLs2fcbJTpwC1/k8J1bVUxHjJa3aLdwexm
	 dbdkakhjWNhgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A3C36011
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322559358.3914.997116196101044107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1189ba8235b2a24d81bdb9adea73d4db7188996b3c54a039788a04c362f211f
Date: Sat, 29 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743225593
