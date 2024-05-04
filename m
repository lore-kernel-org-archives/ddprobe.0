Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7333C84A41
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714860743; cv=none; b=R4QpZgbI1hA2BhoaD67sH3b3vmeS8yE7+jIR6Vq7krJAnPhGbcjxKJpBZB3EdMaIf2nhGHY6UbDgZ92TEx9TXIimhFeYWykStwpiwZi49HMnUF29/vRsgxewOJa0Cbm5xg5Bvf3VbvzySp/f7fKk7cxNuKDuw3mgIihuJomDfYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714860743; c=relaxed/simple;
	bh=CCqcMF0qzhRWvUuFDq4KsKsSCFkJp/596iy0fOEZ8L8=;
	h=To:Subject:From:Message-Id:Date; b=QKesetWveZc8Ea5qddHtXTrhs9xvy0BYZKwfUS1I6DBnRDEdnU88aLGkPAniYGJ5UT4ed2rro3eUKPUFf/NH6jHMNJNr3RDT2JKATraT5ckURrrSJudJOYeTL1bOiqjUdeAsqzs5FcyrgmWF2/AerjKlETmvoA6d9Qn322Ic4ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXv+LZdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXv+LZdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D850DC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714860742;
	bh=CCqcMF0qzhRWvUuFDq4KsKsSCFkJp/596iy0fOEZ8L8=;
	h=To:Subject:From:Date:From;
	b=JXv+LZdgW/ESzEIoMwca1doXRYFd/4c3I08KaTHb2w2jxdcJSBuqSuA5w16iZUyy2
	 wLT14ddRbzeUMVW7S6ApPrmG56yNTXB4uY+Wkas+Y61BgWpOTjawCZl2OLk08L0/uK
	 rUSDT0nOOac9hfXxdcsbRE1U/u3atV/+A5hCNha4etFNuZP5w94sWhmO7W+2WPmN/4
	 ZSeBfyvOsBcwOLDoacsXMhoTCHQ6MdGia6Hi0N0O3UUIldenqQywAzxBRnfYZ7IbPP
	 Lq5xlisUBoCv5mfGYUZ2Ti2ZpDyAwFVvgl/IetdSVlschlap8Wt6kpmTERJv7TX8hp
	 VKKSjrcAF9UvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BA1C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486074278.32408.11869524777936907558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6597d0bb4060d07e28268a36e2838600dd24cc1a72e025f7483725569b135956
Date: Sat, 04 May 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714860742
