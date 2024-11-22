Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240E741C6C
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732246554; cv=none; b=YVXJBUso6R0JtjOXPqd/tXNxQ9UGJ7wdGPYD6Rvr8qKNwZobUNdtmayHFyObDj3dNnMCgowBBnwB7vJ/OZWDBrchqtzzh3s/UAz9PnyejTBK4aJNUaJmG6EhKCbIsYu/e+qEP/OCOfsutTi8BbdX2wgft+vl02PQPHtOMqLe2wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732246554; c=relaxed/simple;
	bh=cczMBNT6mogfdRCw3ZsCznBjHpqaEfVmvB7kdw4Xrrs=;
	h=To:Subject:From:Message-Id:Date; b=o934iWzPLVijah5yv2FBJSbppZf/Bdanh/GrdHSquJ+6hCjDF26nVjNSeGHYOlIo+0moe6Sw92XQn6oVqCGlLBtZKMyi6QkgkRqlzMTeH/ARx4vuEoKr6HSvwKxUKDa2NQ94+hMiKoQk8esIr1aO2lWzU0Eol+zAWiE5pvgFiCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JriVa59I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JriVa59I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2AAC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732246553;
	bh=cczMBNT6mogfdRCw3ZsCznBjHpqaEfVmvB7kdw4Xrrs=;
	h=To:Subject:From:Date:From;
	b=JriVa59ID+R8eTIot5GbZE1vsG9yzwosCjVN8vjdj+bSXWlffPujV6Vu42OhA6OWJ
	 g3LzBHn3Osqg1wGB2vEbE64AObX0k5hFLdiBnhiy/1El/4OvP5Q+pqTGEHQImjmMYv
	 Dg5A9HPfNRoz86k0l5ZPHmMW+eqAGgsalzf7GFIbLIvGKk8xfjh+g1ZuQ69JzbKxac
	 YTdMKkEKxp4Vqvo4/AsoZmJBnL1mfK0PvuJZshp+IkxnN9CnCTZX6jr21Ghdmb2pVg
	 nIlXp7DlSDLVY8xFUiFlMSFmlCEH2e1KgcKynV9wL+myTmxR19De6xhI/bLj5F0UQg
	 g7Z9ym1sLDtMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FB7E65D1D
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173224655358.20432.5179230007949300478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933bc1402d57e8c5fc8810ed3e5e0cab5cfeba761795b4b875ed68b76d76a976
Date: Fri, 22 Nov 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732246553
