Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA241C84A0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780881274; cv=none; b=hcOMzG7pGeib1ELU+QyEdGX2kkICHBBU6Hx6TtzJb/MApuwFkUQf0nY25N/QZqK7VXDa2bgW3cpX6ybuX+ehI2qlJrKq34uoTglpfCBEFJHC6QyfY7gzjVb9G/Wef1t0LOktR8+gryj4/JLLo4Ifd8lEbdxSK/tzE4ARUQq9OlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780881274; c=relaxed/simple;
	bh=E/ipgE9DtU3QyHlIX4iO1OEfFnbqxnyb+abuViKurgw=;
	h=To:Subject:From:Message-Id:Date; b=XiuiICPoh56LbiITVXaUoswF/Oufvmp881mEcmBfTsAesGDyR69UScaAb534Rd2ckkF2fHZMDM4Z7ivcnsyidZiKv8Qru2i9FGCcP80Rty3HVOQen9uV4oc5R7FXv6DvSSHJJicwXl/wgpEh8MaQ/MlWZ3la6CxX1yX0hVb5VQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9kkSdTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9kkSdTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8B3C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780881273;
	bh=E/ipgE9DtU3QyHlIX4iO1OEfFnbqxnyb+abuViKurgw=;
	h=To:Subject:From:Date:From;
	b=j9kkSdTZ7D+K4eyNGMjVam3R9j1mdM/w5v+vO9wBBaohJMs9gvTpA91/aRV/C2JeG
	 b/NqCsZBw2tQvHhH7Hr/BDB3gFgLBOZvN4e1UgBmdNwxvkDPWJe5gSXXW6Xqni8UWF
	 Ym1KLH+68KvjM3+Nje/7cdYJCSIEZVPRwJt2wztE7qrceevxyntsiUyCsN1328hQGs
	 g3OCiu1/TtpzsB65k9/FVx5AGEDa2flnate+7i0f6SeZP498Z5UE4pQVsqMzsupF4Z
	 XzMwC3MATXkFvpaK7RDWsLhT1fBDtGqbytJlzM5Lxf8sgx5b8i++hs6cCW66hwMhji
	 jKKyXmWfyyRSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1202CD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088127368.25187.7633937133060244336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0cabacb506c820fa7d082be6ec7a00037f4f05253b00e611eb2a09fff6aea8c
Date: Mon, 08 Jun 2026 01:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780881273
