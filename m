Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3160258EF0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759534793; cv=none; b=TWLbLP7yqkAqOjWD6U4Acw1Q6tCFXYRnxcM7rU70S9pKsrmsXmEd09feffkgtj93jRx/C6CKLTle8fL4ZpU9YDjXvVS0UpALH9trO7PhRDWCJilML50Mezt8GUe1FJrOJoRAwY/1ZDGpeq2ph0hoelTwWPV4DzcQ9aFnPzl5m3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759534793; c=relaxed/simple;
	bh=YrpehKQFSBGyVu5GKlVL0iPTFdKtL6t3MQNsa/ZRgbg=;
	h=To:Subject:From:Message-Id:Date; b=JowrZBTGAb+2JRz/Nz0XAgeQlkdXgHBymv44y7qh3HGteGvC47ATcJh8O1eAyTpGcRCNHyy6GTg4wbrLfCr/q2dW2RIV/hazDuxz0da9XOEm5SFHUlPuZqlFMiDWec2GAPD74gu+1kil51ZwXPrCJpLS1dLsPwfSVgCW+aVnLyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehxNVfS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehxNVfS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73DCC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759534793;
	bh=YrpehKQFSBGyVu5GKlVL0iPTFdKtL6t3MQNsa/ZRgbg=;
	h=To:Subject:From:Date:From;
	b=ehxNVfS9vJEhERj/IynCxQSlh5GOGnw38DJ6tnU9/LuDaU/8/TA/ZDWwWtoKXdxOu
	 6ajzJPJktxbfrKt3Jlh6gC37MhXMCidEiGoDO6HlT53VG6QW78cHPOw7E0m3ct2iYU
	 61QXJVcczUR5TXrxT6DaJGfRb/3yI688AmoHdjW3yt66ASlCgPfe9DkxZAFchj69Il
	 FR5zLJkIB+yCkRoKX5rwxYdZ0bEgEhpURoSIskCbYci9wYB0eHT/Obgga949H/8Yec
	 yAOZ5Y0dgYd5gMdTykptoiQ/54AoM9WScRbrewuFrGlzVvFqk9s5qiMO+aJIJTchOb
	 4JGrE3Fa8G3vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9361CCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953479358.12199.17825065541170409595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6cb8ab8ebbf055bc786b435ecc2c59cd4bb5913512cc6e7de70c154bd0b610
Date: Fri, 03 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759534793
