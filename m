Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0E547F4B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707652097; cv=none; b=sVzHDEuVYwvWlyKK8LAMHSxauPgOioNzdVnl8r7SHmi8QVR+YnZrCB+8pEu9VNJRAae48KIu8GR5vo76fZtVvRoxYMug9dIezj6fehHwYRbRfB7W66Lal8hj25sHiAbwt0zU7rRmeIJ+s+vfMmANHswx0dAgvaz3qQ/1bAd422E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707652097; c=relaxed/simple;
	bh=B0U34oMisNMwVfZjZ77HfvYyOxUMEVug7oj0Ky9IU8k=;
	h=To:Subject:From:Message-Id:Date; b=UKTH2K4yDYGtuNDrMwjTXtbpf1+cnChDuh036fAhwwlAtNxKDpp+94uZKsbPjJi4E8PrylsKY+lKVLMtwrHHaXezh2vyCP7GiVHO/KtgMAcnD2Ra4A0oCjRVPUKl+Hkpd98ECH5rO26EwskremueunZ3QruEYzxFzbITa1QJ88g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhXVNQyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhXVNQyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85086C433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707652096;
	bh=B0U34oMisNMwVfZjZ77HfvYyOxUMEVug7oj0Ky9IU8k=;
	h=To:Subject:From:Date:From;
	b=NhXVNQyKCk8OFm44IlJs43WQDNBNHsXmeKP1jeho31nd4/k//9N6QrFoQdomhG2Dy
	 WJE5Vjkk7CJppTid4UJ72gX/d/ZjOv7atkruIQiW8HGBuH/xA64k5DjghnkE+/932V
	 26kOp9wlIrD6tw2hsCE4Qx/re1bCFdygiaBx3dWQNYUEobuP7LvL+H0VZZi5+0K1tj
	 BrD7HZhVVzbW+8wJZ18hbL3RZMM85MNuxpki2HGPZS+5iF28R6k4PAeOKASIxCDMaZ
	 nxPiYsxHDloA7YKNAXEJ71BtWCkjwYB8NFMHHBemj7SUlQ7Dxr9mLO0yTxQ40lq1f9
	 u9MGYZnzVvRnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6090BC4829A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170765209637.5693.1908806592564130982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8185c19b8a2ac9e13e2984f776a232a73f39535de3f8495a7881a15ec9ee2868
Date: Sun, 11 Feb 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707652096
