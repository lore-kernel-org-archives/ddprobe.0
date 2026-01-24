Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A53B8F5B
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769247234; cv=none; b=ONB4a21gOoM5Msow/mSyp7VgffZ7a4GengIt6WhsIEEh7Tx5OYFj3hozQQrHX8Wt/Ba3f0WNvN7AFRIZhTxg6ZWoaP5//ky548vcmibojjlZ31JDcKd055XuEPkXmvDELzO3Ou6M2OkgjNsJMZ6blonFWd5AQAf1TrhXHER7Lj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769247234; c=relaxed/simple;
	bh=gZNITG7pC0Ex3bnVGedXsDHd86hUwirDf88ZFHGCN8Y=;
	h=To:Subject:From:Message-Id:Date; b=JYqSJdJb9HNJHojq0jDqBVC5JztDbkCbolRJ2pg6SUlYpq3g/iKfRlUlOq803KQf7DuWskBfneYDGqwnU5G73hUZ/twT0a3G9r30maq9OuY/5nBu/LS5w/pX7SkZkPgVCga3Br0oy+a5n5y6BMP81u0JXLTWprJ995rk8sCCcEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgwQh4aD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgwQh4aD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B0C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769247233;
	bh=gZNITG7pC0Ex3bnVGedXsDHd86hUwirDf88ZFHGCN8Y=;
	h=To:Subject:From:Date:From;
	b=CgwQh4aDdSNFgBBVfWgQwGffld/cyE9G1gVoKZ+Ys7O0PRE8lkT36NIroPQBAh3e+
	 B1WVhPl187hKEcU9EqSpjuru/C8yY9EjyBIqv5GBMc5cdE/3a8VTPcn+uLcSUgyeSQ
	 9wwDfRR6/+Yit5bKZJfjyfl+sE3XeBADAstqYegsVGPXCbS/2nNAUbQ3mGvZWIfqnT
	 SIp1K07CsgwbGYG9PzAODKzHySiVRaUUvrQD/orCE8hZmdVJd8oyiUn+NB42fVnA3K
	 TNMPZqiTCTBXVlmbR2Gi2DhW3++C5xV5y1sqxpvVnSli/PoOVzQaH+5Y0I2rHkBcA6
	 CD/MUcaFZKXWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9611DD715D9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924723358.4039.4865336699960440311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa226e8e01c9f11c537d722e6e357ab419963aadd9115d32e447074cce6c204c
Date: Sat, 24 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769247233
