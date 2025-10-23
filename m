Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAEC1A3154
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761193194; cv=none; b=qb7sQw9IcUXETLGxSR215Q3cXP9vOFEIxoM5/ir92pSoSobmDCVwW8GbTb6JnHn+TIz++85TG5x89SeZ9OConQAwgMU9mcX4/I+ubKu5L+g0RS0pgHgqa1VNJpc79gDKPQM8mXKMFxe/tjexKBTnOEYeYqsPAvZXOAlTHKSBbhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761193194; c=relaxed/simple;
	bh=os2Gx2d+k3Z4y8XeYutWby5T4fy9mv3BEgU+3NUUG7I=;
	h=To:Subject:From:Message-Id:Date; b=bN1pz/oN8ZIhR1HK0TXq47O9DAK98sFmQXzLaEapkVyCeW9YO6nsw3n5LDznsy+GgylC6oMsamf+IPDNCD4z1GnioVYwbtpIrE2P1fKYD52adkJzHZLHYJtG6DV5YQe8jHPPyrFM3bbwGhfIxC35QMR7RUxRE1mGaI7Q+yMdIYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbqrnbDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbqrnbDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A56C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761193193;
	bh=os2Gx2d+k3Z4y8XeYutWby5T4fy9mv3BEgU+3NUUG7I=;
	h=To:Subject:From:Date:From;
	b=EbqrnbDsHIvcZeJw2lwK/GiRzxyH2M62cWbnaFw5J/we84PVZRfZ6IFWph1EhR3sW
	 K5m6HmHK9wFPyrkvRzSN8kPWePelz18qWGpld0WGs3QWn1e/gZrHg8IRJXuYQPpngC
	 Ha1H2TQUjVqrWth6bj7XVq11NqRJTFqA487p7G/q5gs0TAOIbMIOT5IbNx6vBz7LD7
	 fqYWHvjJGWsFyNySfCM1xsc2Qug5/FY5W4Dco+/Bap/u1mSbgqxdyu+c079yHt9Xcf
	 yjEllNQkkLsQfgHoo9DX92iFE73roJLJ+MBFs+2G/lqGaVocPUHmwtywNH4YY2u4uQ
	 NmJf+4ES0FQIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D6BCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119319360.30390.14331145402199660154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2df0128cefa1e96e8e9ff7f6595ffcf7565a6b0a07c9c0f029a4231c390a98
Date: Thu, 23 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761193193
