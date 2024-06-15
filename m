Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BEA537F2
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718491703; cv=none; b=urwJZ1htqsEVVE97NdAhA86L2zjS4aXavi0THnkkf31xZwA6fBXSLwxF3Jzsgr4jNPxPmvJT9/sWxGIcFuV63rDTUjRbdvqgfAvT0RHS/cBB5m8v3cYf7/gZlgxGiirncUfDAtHcz5ZIVVP4LyywnZ0nrOMzIGb9YH5liuZge0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718491703; c=relaxed/simple;
	bh=FjITQntBHrtyLUG4Ze9wEUmOYrXv7ygmEQ6eyYTuH9A=;
	h=To:Subject:From:Message-Id:Date; b=bGn8+uCcxOSYr1norMmQmxfIarUajuBtCg8ywp6oWbNB5ktQcrfivN6QwLZIWH/CraWg23jFesZQ5xmpVaD55nw+vntV6byEVc9YCkMmk4qzBx+ZfdE7Hknjt1V248JZY0UUNLuJCVR849Q5hW8fw24gDkxOAtSt6C6PZxNB8oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvctwHPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvctwHPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04DF6C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 22:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718491703;
	bh=FjITQntBHrtyLUG4Ze9wEUmOYrXv7ygmEQ6eyYTuH9A=;
	h=To:Subject:From:Date:From;
	b=gvctwHPFPyU5tJv/29/jbxG94hk4rb5TkL/Cisagrh+rNUC/GeQjckHwj4ceqXpZO
	 1mMt87+8DMQRo8V96JvaL+2TY4QNRmpYnr4x1jTVtm9iAw/AWG0ULRcicEnMLHN+gH
	 s3ZlxI3p76HRiKoGXY8k00u+9m0zFRbRGeHyVezcx6EPHLxFFmLuL/GNG3a5TxaMk4
	 9XbwzeVDdjmoeBP4ppgFqL026jNFWH4nIED6d2AF/Skap6I44f1HHYxhEfWwgNM8TD
	 7zHfuQLCAzAJsNlfb7LgAyPSU9Gt1CVVjG2EmtzQsIFsQKNRFpU0E1j7IbVttXXPIl
	 Bp+0lyzcw3g6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D735FC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 22:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849170283.31919.6655142340931334558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c65cfc750fb33e34bfc14f6a9aca4f7c8c7c632a4c61338eb29ef248845b8668
Date: Sat, 15 Jun 2024 22:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718491702
