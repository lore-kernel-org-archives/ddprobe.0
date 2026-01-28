Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149B228D82F
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769570034; cv=none; b=d4UD1f506TVMAFRn3HHlGklUAoXJo2Dfm3S4vRQVrxJEtMZSinUD+gi8xNVkimUebgX+gaLLOmEncCK7OVckDXYmxIoI9YJ8BwAsy7NIRcbh3q0QzI5DH4nV8fPwePyCN9Gj74+Nnxi1+vtGq9Swnuqx7WttK5EliK9vCEhdZa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769570034; c=relaxed/simple;
	bh=QmBa6GgfzrXAEub96MkofTztU8U8OYeLhgARK4rzYBc=;
	h=To:Subject:From:Message-Id:Date; b=uQCZpPQq3oySZ4yBUrPySG2+3CUSDk8RcccovdYnUmbRnreAl4Q36gwZrvnIBRGnw/Md7rvzNyM81foWXaJgKctdmU9eRop2c5LTkXTGFvIEQ7hHssnTQV7KmigUkKwfUW0P+/qx7YkzWF8AygM2tQaxqcEkBmK3nyXLdE+pDo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kv0rpLWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kv0rpLWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F8C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769570033;
	bh=QmBa6GgfzrXAEub96MkofTztU8U8OYeLhgARK4rzYBc=;
	h=To:Subject:From:Date:From;
	b=Kv0rpLWAMNnjGUwqbKOPxqROzHBHUh7B61nrk+fX3Lp6M9hDFk7HuN7DaUQAxrWXY
	 MVRWq5/zPFrb0zqeOWir4XpYWY9x2soli+JS1e9p5dHsORLZ3IP94IGxsR9e5EWe4P
	 NtElw/y/QbrYk9f7U5IOb3R+Tsx+jelmYtPgyeAuG9zszlj0zYKjfGYRTFhhMXXutj
	 +OrAmZHwRSnJylwS+YIA+WNHoQOCnPFfZCPFzoDRoNBF6Kb7tisqNfPXryT2Bp6UPz
	 1PsC8mYABlfsAyzAUCdm+LC0eCD5E7jT1sxfxHJEexAjaNK4Uy5VZ5Ahsyu+Re5LuN
	 KccmQVsLald0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042AD35668
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957003358.23062.16740168419832359907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac412b272ba17d2359c2685c6e374bae7f148e5139d969025f3c619ebdd9e61
Date: Wed, 28 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769570033
