Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BB41862A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771480494; cv=none; b=CPIu7+qUh3oKV7neEH3eOGTOGlj0iTYul851K3RQs00r34Csa0DwAzr1l5Q/xqGTec3bF0mPZbXa1OwzNRZemI+PcdaCTpxK3v/GLxaKz/E3loi26BS476sNtBEQhKw2xG28XEycnf6pgjsU6EBM/IOBR1P5zgTqGvkZhKReaZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771480494; c=relaxed/simple;
	bh=RjGCflHB2h/w/cYsgvUqrkrvzxvwCwIvyOTaomF+pzI=;
	h=To:Subject:From:Message-Id:Date; b=UYavnk/FCmfPgqLIlBPfDGXrFlzpGRQ5/VULoPi0qwv5XMZzURjg6mcZxzkEqREXgpO0W/V0G5wiDLNjtwXIBySZer5qge/ShzzrLIVeJE+NKSkHy3SWvXc6NTWzjkl+oKC2mhHVoqC9Nk9SmDwzo4+1KiGuqQBU7bd7argKWg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQCqun1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQCqun1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B8BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771480493;
	bh=RjGCflHB2h/w/cYsgvUqrkrvzxvwCwIvyOTaomF+pzI=;
	h=To:Subject:From:Date:From;
	b=WQCqun1ieprIFo3po/jOAY1Hhi55IUQFzwMPCsHF6r4P35fbC7PT8x1Cn8Xa58Q6s
	 HLvKDg9580jOBAXe0ui4DpZmasTs8H67r7raQ3lNRNPgtujdXFP6T5wGvr4UruJO4E
	 CNTmEK12jiWRZQRFeS5Lx6M/GWUkUFx0gA39TPmXTCkaKLAgGa/ntPjrn6YCu+/teo
	 RaiN9PKIGYvxqQXOMzoKQO8IBUPEVm/Nk17ubAhF2UVlNhjY2tVxoz62rdSVnTTc2Q
	 9tzWPHaYgtmdapRCZwJGPgUKCAFmxjYeBKdCbF+XeBMgILDxsY72l+FSM+eQpOK0/I
	 UYStNFq8K9Faw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A426E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148049359.30948.100617167834064925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f5e18e5efef8100b19c14b65410375ea46638db3fbab956350baec11037320
Date: Thu, 19 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771480493
