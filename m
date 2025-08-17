Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8E11D61AA
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755415194; cv=none; b=Zh6OXi/4RA1UIE05UM/UpWySaVWNwqd89eV3O9PAJEO7zpIYk1GS7fDUbTby0SB8j2jbxWn3JcgByUa41YHbY3wQET+pMv0t5+NzouUB0V6pYWEAKhDeCipxSawG9i9LBft7tDznjx1b3Fdg87Yr18Tss3Sj6h4q+bn/REi4Ns8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755415194; c=relaxed/simple;
	bh=x7mbpLUzOTWUYBd9T2ysJRdkoMk+wRWNBmANtANfZu4=;
	h=To:Subject:From:Message-Id:Date; b=I+61v15UiecgGDo4jyR9Vh4aVc9JNOUokdvRmiprQ5A3AIfETuPQBH/ma9bX0j13ruH7gnkhZyqgkwW0ciZN20NpkyRfy7zCsfrM5T+Lo9llnKhlTLF0sm6gb4gO9+wlV///UqRAALbwca88UHuieD5CNMpX1mGSXD/UWspgH00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CricWr2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CricWr2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B71C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755415193;
	bh=x7mbpLUzOTWUYBd9T2ysJRdkoMk+wRWNBmANtANfZu4=;
	h=To:Subject:From:Date:From;
	b=CricWr2+Ki8R3W3+L1zepUi66ascigPbTNG//VtD19bG7J3xdnEhFCq0DPUAX55aZ
	 r0jdYr2zAF+slj2j5jn8TeyAnlHHI/geoY1GEWZKGVt4iR/wsp0DcgS6BrY0frWQRM
	 GwQy0bP5AZ7F1k3MX5xHT/tMu8OG46EnVdme+c6qarfme2MBQutJndD+ZfFi8m59lO
	 jDYgV94hgIgyuLCSNx9hPwRRhpPLevyo0+ChUU9FhIy6+4atdLJrZ9uOKEVIlgDz5B
	 1MX3aexsY5zRSxmW9wud2I/YV2gvlZbb6cKS/QkJpJYwp1EOfLo7+pSsGo343Q1in2
	 G7xqVZAZYWzrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9510ECA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541519357.12351.5916727442589782655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02970c8b14fe50e39481735d42acc0e1f4b7a018718764b6a6a847484448e7b3
Date: Sun, 17 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755415193
