Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A9240DFDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776473254; cv=none; b=Cy7bEMweD+/f2p4eKOTLQvL1/DTuqH/ndWiSlW//8QmQNB3Aoy3rpdJFUQfsQltOyDIZH0UBT/2SYwNH3AiIkDCbIeIJXHNXQ6p7R2xrrUnfTvNSTxdQEzcfHiziibAPwk39Dszt79jOMfZCiWypiIUJ84ObkaIXE2P9mwAZx6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776473254; c=relaxed/simple;
	bh=sj5Gpu01mbnCc7eJY3mQepVMbnb054JzVkudQHgNti4=;
	h=To:Subject:From:Message-Id:Date; b=pfKm8MwFMsdO9MWszchsK179lmAhQg9C2OC9Znel2JOf2NY/bYjtQeQNSoULopfRzIlS7yxd13cF81qJwBymfmW6jHeXbUk4PGk5WBBoHdONw+99+XJgPX3QFbH1yLybutOelkMJPR5ksJ9NwihyzR9X3TXn0A2biAd/wWN47fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwIxAxro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwIxAxro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E0DC19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776473253;
	bh=sj5Gpu01mbnCc7eJY3mQepVMbnb054JzVkudQHgNti4=;
	h=To:Subject:From:Date:From;
	b=CwIxAxroXbgRzR3HL/nsKEVoaZdwT72LWRCoYILYNm7RiSHUHtMkrONsrSCRRPk3a
	 ix/ul9AFUfRVvKj9sUIwSOqkHDOU3LS+czmxujIOzuEy+nnFdGI7rxvuk9Bd0bN5ZQ
	 0fiL1KPEgQrajAJZaQCmXAyj29jOPEKX+6blg9/rTgMWnIRW6Z1S7VENx2zPe0cydd
	 vYpa0s+EvoH6o7ifi83GfmY1Dkl4dLpriNdwfWsT4/sJ/Gj+qVht+uepEgOKPiZlnP
	 MJx+vzEEGKENUuFXe7zQVqw234sHcfWmEiGswqMZIg+iTYnRuwS5xuPkrmCpf5HtHS
	 vmZFWoRoxxfSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E67F99C6E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647325369.6417.12173317788056220696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417efdb23a8a560e5d844cdbcca42978ac461b5dfd4b554229827758f2d8685b
Date: Sat, 18 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776473253
