Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0F11E511
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780184674; cv=none; b=jhO72hasR97SsaxZqr2qqDTYCxFvPMwajnrPiSS+OEF+e7xtFNDOwtCe1Ky9AkY2QC3XrDiP51CnxIifLwtyFuk/3VmRx+6dj+KcvjRDG5LDgF9hecI7kddovobDh+hPJi8d3fB0VRLgGtUlKCTt/8I2UhAeH4riqMBdbU/TX14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780184674; c=relaxed/simple;
	bh=snFt3FR90NnBUJEHd/aoN1Vqt5WGaPyy4jUnxG5mxaQ=;
	h=To:Subject:From:Message-Id:Date; b=P873+7+NG1tn5y+8/A/nW31Qqndo8eOuaub089irgtyCpORHYILWW2W6AsKUpCyoGaqvuD8XejJVKGn9PVSsG+IO0dC2fdKbI0IoceIkY+xn8cSxqfnCZMtqSCPij9gN9t/OET518eLcfmUPjgzpr1E/EnPdr3FXNN7AYSpQpmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWTBBvzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWTBBvzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5002C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780184673;
	bh=snFt3FR90NnBUJEHd/aoN1Vqt5WGaPyy4jUnxG5mxaQ=;
	h=To:Subject:From:Date:From;
	b=hWTBBvzQ/QGMmgQjRsWTw2d9xiyfdwtfUwJsy9/HFkgN4iAByuGsWZMePbRtoawjJ
	 mKMa8X4LRKl+6Ztu+oxgCv95kU3Lyn68+SdtyAdn14S7YMB9xPaAOlNsj6t3iaeNad
	 YltQ1SIO5H/hEbWRTimWYVXsWpzR/tsaXqNweZjtCPFG2DoID0fk7WiB9Tx1voh1xL
	 Gm9VlMlAKJ0O4stnkCd8KEIfrBZzP2TmWZ/33a+0shWIDupWBGnuA9aVCksmfSoyaC
	 jLeSDo48MAxM5cGVxxsZzGCNkBW0ueH4yt7WtlZxQIwVXqQqU5Sdq3mAPaXE9ec3qf
	 5ZXUTGjFd+kxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD61BCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018467368.19334.6395891791253865563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30707ed5cc52f44de95146594accb110710afb11bea17a733db94113324ee7fb
Date: Sat, 30 May 2026 23:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780184673
