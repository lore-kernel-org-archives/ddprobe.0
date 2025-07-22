Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B3A157A67
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753166394; cv=none; b=NkDGVmdxaLZfamzAjID6FO5hJALmt9KMv4++oX6rZVrX+cCfvBp3+E/ESYfzN761zV9wccexPbGfhFjiJGWcEly1xISCEteoCQL9xftYq60soQZWXeBUaXuF3h8W8yS9O/q9bqZzm2Tr5F8EkbaZ9JQ2z/TcIoYyy+/7N0YsHPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753166394; c=relaxed/simple;
	bh=XuWJV5spxSUff1RPoeno3FWtzRaYmZvrk782BNe8a6k=;
	h=To:Subject:From:Message-Id:Date; b=WLAFevRk3l20q2z0W+qYPQxpViHJXNGXAzcxbW/EKpjvsa3zDY31OuevZjUAx5Ps/R1mUaC0CRbQGmZhLkLdu48hERPFmNHPjcF4kWdKx5cWLE9zONekMqDkPz2PRcFrlyWSOFIV7/8lyVDHrjv4JdE7ZMxOO889FH+MTclsBZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMwZT4vW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMwZT4vW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B28C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753166393;
	bh=XuWJV5spxSUff1RPoeno3FWtzRaYmZvrk782BNe8a6k=;
	h=To:Subject:From:Date:From;
	b=oMwZT4vWZMVoA1t9YNyH3vyKHmHxFyYATAlOmBkF9pSqL4AGRoCNqHwrJ9Cy8MA3B
	 cR+paXtyRR1S2+yyAhqf1OwNcxqYUJWfeR9HLmxHCkIO/ViWJFs+TccG8tLRNorZEx
	 +cq/lzuRY6b81tb8IgwFELdNZr4+Eki/tCq22J2J9yh+tcjrbwDUQ46QJyYdCzpZs6
	 PthXl9QPgqTmchLkskByL3g/BlDkURpW9i5fQ0O/iq6n+7T4ipnMhq5hNNo0OThxPw
	 W0hyDSeHvyBy/kAqLDbj5hfWNPRCNzoFtOlEnAn4pcEpUfjGch3nxrv9u0xFDvQk2+
	 PEikTBLKiUo1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9653BC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316639358.17234.6950907927236384527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb7dbdcefba978dc2b660cdb6d8113c6605874e9f346d412a1fe6735b0861c8
Date: Tue, 22 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753166393
