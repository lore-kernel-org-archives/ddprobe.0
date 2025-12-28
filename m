Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE191F956
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766933634; cv=none; b=qQeWC7u33X71QMFpnkpqUb3gUKhmXjrA0X8lZMvtMbQl+Iz+g532Y3NsO3IsP0oKCVj4KU1jqRlLPDAw26y06cPUK7XMvlA6bUVxHI8OsxzHz3V3WDdX7wWKHu6aZZCQbr7PrMtqH/0MrppDAdoXfQCgsCwwpd53NegDreC+cHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766933634; c=relaxed/simple;
	bh=htCWP4NF7QDnOPrbRRz8C0x26Z39O1xfaKMGACOqTqA=;
	h=To:Subject:From:Message-Id:Date; b=XCgo+a0jsgiKUOPx2MgAPx0y5TtW7Qw/Gw1e0lsHzkmSumqqfq9VOaVDoc1msYyCZDzddxDPJBLZS9zyJkcWiJiIVK1FTthviecaEqMq7hgL5gUYbykm7BFZzd/l6AzEzXHOYii7MBlzCjtU6PdWDMzUxi8S7cDR27R35Qk0/ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ywvr5XIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ywvr5XIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9884C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766933633;
	bh=htCWP4NF7QDnOPrbRRz8C0x26Z39O1xfaKMGACOqTqA=;
	h=To:Subject:From:Date:From;
	b=Ywvr5XIq8vJjmPHM7Jed3HngaDMmXMmnf8G8f++5bLK+PBPIZzRhdGatdz2+fYVkO
	 L+A7fyHEFs0JiIDA92n51IYC9Fr6rFNz2VdHwLQW7nOx/9JuiqpU8ghbdz3oQgrmMS
	 8cX3KN4YL/KaT2Uorees6oZyPocGNPHUmwVrMnIkxufnDhdUDmZKpBSmKB8OC2XcfU
	 lr/h30izjlleJ2WGPClabRUy7tL4Ijv2EWUr9MwcYa2cH7ynF1C+VnS5f9LJ+bVTAa
	 MrZH4t34VQK2wwTHr79Q9l63oSsG/uycNwkDr9fZvrGmWkydHH37ta5exj194ERUIi
	 hi9rJIZOMQWbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951D8E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693363358.28823.3904169499771456846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d95b501e0d80f9e6142518441347858c283c6cabf1c4b5aba942add3b9edca0
Date: Sun, 28 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766933633
