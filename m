Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A59121B9F2
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746004194; cv=none; b=dPaHr6LKUg3TOyTNEym+a0YQRiKsEzDe3Ryg7NcxU7YqKofYdA3M/Q3tFYhCXeyhgfBBCANoMBnBhfWnwktQrs5aDLHpVBChSxEETEVHjxJ9k/6LRkaCQtRUHStfPg8I7eO0e3cbNvKNotrU+l2bOzLqmtGw+16dZHJ2kSBEs10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746004194; c=relaxed/simple;
	bh=1Nuqr51HEXyMhuY1xAoKBJL2EAHpoVPzFcu9GKB7HwM=;
	h=To:Subject:From:Message-Id:Date; b=qXDYD5amkcTDu8G8whwXm0Bt+NqeoiHOhxd3B3Z+K1PyTyrlF/bjIWJ9/xnzVUBL35/DEqb2CzKCV44FXAP7lTh1SyV3mhwqgPNN1kEDMKj/EDywwPtVpfoQ3IPcX56czNWx6BZA0JZV6AFk/P0P4209xgAmQt94WR7+wIfjwJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCNdBWQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCNdBWQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1ECC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746004193;
	bh=1Nuqr51HEXyMhuY1xAoKBJL2EAHpoVPzFcu9GKB7HwM=;
	h=To:Subject:From:Date:From;
	b=gCNdBWQMeUm7K7O46F7ggt9PR/McSsUANP7OKe7C3JIKlgpOI2kqtwhTKiYdq/k6u
	 xzFgyPpXMeUcLN0+fSt4YsbysXmtA4u8SVHMRalsKYjayzjH4fRRTRvBGmGuYG78wq
	 /ff05q+LNaD/YkvqJfPBiEjntrPmWzqJYn6ZKRTYchestnfHFEkXbgCzwkOHuCGvh8
	 FqYtBiiZMcBdEA69S6Vy5WTRk3KIO+ou8dT01SqJyF2kKV2HOYWXmZvw4ktZzLLjIf
	 +OpJyeU2H2+INQcwlK7MVTU8rKlPXR3yTSoaeD/1QgG/IXuZxczu4Wo0/uIKkAJ18Z
	 yyseEnMoInNAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B1C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600419357.32089.6492946214160110304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4844bdc86493b79d97f15a5e869e8fe3f4ccda0096728e6f2c5b4ec108365b60
Date: Wed, 30 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746004193
