Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A42735E1C8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782111994; cv=none; b=dXtd5X86s3chFwGB9Y/wyM8Gs19klFotNIosw2S+3yrEw2TZjZTSUyfRG90exC0iVSgXe1SVW+la6+27JFUnlXYBWKzhoF6EzHeFwd6Hzk0S77YzzrZrXoH+hIWQNSzTFD+GGOUsV5YLgytymtR2egmCVO9sU4hbS0rcnNkflmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782111994; c=relaxed/simple;
	bh=l2wCDgVZEciufvmd5oZxLzakSKyUHbZ6LsCBQdAdNe8=;
	h=To:Subject:From:Message-Id:Date; b=fubpGNsJrcCmNs1GoWEslFDYZZhhNgsRZnz7omHAJUcfBgZLXeWuLNEJazgehFVRamsd6J7Hs1Gdia/3chr3ZMMAAt95uXFLUCRv5kUiv/3LINFAkRoOjW3v/jskaeeB3IqCEcAFqnH9C8pW3K33988e03S3APTvpiNsFJnXg6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlN55rfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlN55rfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D1AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782111993;
	bh=l2wCDgVZEciufvmd5oZxLzakSKyUHbZ6LsCBQdAdNe8=;
	h=To:Subject:From:Date:From;
	b=VlN55rfi4FF8ymvj//1VSYgb9UaMfCcfXmWh3HHqkikKn4RJEqjgPENbMGe+pBC//
	 QUbAx03UssswJURRqPaNpHLHsinnK53P/WBYh7OTAN3yKjk+/8mYBjDXmv9/ip9EXT
	 aHjuJr/4+WD8aUmKL44JkGzkIuGEmMKiKx5w05ciK1HY3YHFepAzgnJeAnr1lzudtI
	 596NFrPK0rYuK12DEfDT/BxCR3bbnWcwMuIBBZcDnoWtWtwh1aCkazlNakSwL2vBxg
	 p/mm6tPufNIxuXypjawqQmTf2niKpSFvlyuDKvxenqCYWnBjr21BOZkmLFop7GH100
	 QQdD/6WRI4L1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3B9CDB471
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211199375.8834.15433850378138270252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3574498de925eb50b6b775451da58492da8286c5593ab81bbcf1c1210c6c777
Date: Mon, 22 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782111993
