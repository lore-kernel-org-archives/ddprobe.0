Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A1E81AA8
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761056994; cv=none; b=u351lbIBhFmuBlzhVKUv99j3Zv7pIpqPEzWhp0O5Rcn0Vfdm2JyG2HpDEoFIBHI5udoQyDgKh3iKxIMyBOSqsQodRNsaH3eZ0nBgvcieAxenMskkjjqQ1D0JzA5k6vBgm9zeNH3D3cQ5zmdjbBO0zS+zLNeY7fg3Sda+PdmUGu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761056994; c=relaxed/simple;
	bh=PkRLg8b5FmkaILF2nI0b0HADjZvLWya5q67Y2xeVcQo=;
	h=To:Subject:From:Message-Id:Date; b=nL3tA2DZiOvo0w7hdxnk8S2hv+Q991RjGL0wUXpDg/c3jzUP+KX6aXfgjzAr0Zc59KjvhSG8lf0NcXMVjwVkTX3n723LakU1ll/u75lJcJ/jNDhE7qCmAR+rw8XpHkGRrvCKfQGGNzDIF3i6joIyQlGp/hLqIVDMg3jJeFGxny0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmXBOzIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmXBOzIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB0C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761056993;
	bh=PkRLg8b5FmkaILF2nI0b0HADjZvLWya5q67Y2xeVcQo=;
	h=To:Subject:From:Date:From;
	b=VmXBOzIYr9NegOtrBaMI2IOOdC35KMyzPBnVF4PuULmWHnUZJZ4VsOrfDg3HXgwWD
	 Tr8UwagoIyABap/oNlOpUR5fSSdXumOt0kxE71GMx0hY5w5LHUJ5uHyjWB59dPms+m
	 d1bHdzrWTK1/I3MLouMhhgxTrIZQ5xEX62RJTgbdAmXDBVq4QRW3X23lNZTf6OVzd2
	 upWaGMpJvHSEIUxwnHUOwxPOQ8InJ6MyPcKIpU62ROFC+v1dfUhuclYkfc8olbYuzu
	 5T5Hl0sVE4X/m559wsBU7ZC/zvH4xR0V3xp/RaF5xuf7bXmLHZph4pcvPzt0RrjGvT
	 /6YADzYqkulog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90948CCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105699358.5053.1844211237577517769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be368f1331dbbec32458ab3a5cb232c542b2e68a6edf64edacdfdd7639c7f472
Date: Tue, 21 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761056993
