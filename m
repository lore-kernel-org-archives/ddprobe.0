Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A772E36E2
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752713994; cv=none; b=BiAMg51i/KvcADxIlhiAAf7wGcknyy+CO+FwP11zG+EPotqIUiRCXLFxqDafYl86FJmuQGmqvv9hy4uSSs/EMI1Gy2/RzFwZrNyqV/W9fsWd9qZlbhJdSFWQqmN5G876IkuvHrWjzpn0Li3Mf8aipe2ODQTwsaIqeSMi6isth7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752713994; c=relaxed/simple;
	bh=AiSghKbHARhOEuLVnqiyPUzi+ySMIMpzbwa07umll3M=;
	h=To:Subject:From:Message-Id:Date; b=DxsTWJepeItPoQycsPSQxyDk9lr1OJg+0zdBuFOGm4pRqNv/ZoXE1GKFnaSDTlM+4yjI7yhBacGR1aIwkFYf/ZNMwvPIWpGndggHot8dAJE1o9fAC8xLJZe8rxNhYDIdAYv+YCAPW3D/BufEOw8W6IQTGJQUMMugZvQFRkI1kJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwQD0x8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwQD0x8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F967C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752713993;
	bh=AiSghKbHARhOEuLVnqiyPUzi+ySMIMpzbwa07umll3M=;
	h=To:Subject:From:Date:From;
	b=BwQD0x8arCqJ7Aij6I+8uTz4JhfkrElpgUPn1R+MC48XlNZhHzyehqkxxORofFcHe
	 Nn2efs2jr2+m6j+JTEWdLrYSPepkdtSRscXvt1Z7IQYByOHPC1olAy3D4O6m72h0NJ
	 /HdoF6ySwCMendvmgN6dvHwMbFjgx4UJI1UnOCs+c7kQTne3Z+aia8nYjT2t4V7XC8
	 bBbu9CTSOhqs4cmb331gHfifsi//aScAde/Wj5TCbLhQCdb5zyJQOJO8JAriTXE97s
	 Wch4lOaKIjO3m+4jsKSwewKBIH/XnXAWuwgWu8TbGtT5rDibgXBldi1kskxpk7EOf4
	 GSuKaH9z3S3tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE8C83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271399358.5891.5938609618478208508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6a66d3e337c75ac8fe0e85fa24d6139279becbf04bcaad6f629a56d82de9d6
Date: Thu, 17 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752713993
