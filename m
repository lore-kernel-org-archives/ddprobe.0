Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9D51714B3
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744784394; cv=none; b=L6iEQ6m9budXIEHXyv2NO70B9BlBDPLG8Gy4IArg+B5iRx04avxOjk7bw4Bw30Wz6+wsEAaa6qM/TKxJYDSK4Wp3Pb/Zx7n48Xx8SSUe8UeOdb4M8OotdcN0PodqAC+tHEEdaKiCMGYwkwR5rsWiLlWpas7vpVDzxPFlNx1bX48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744784394; c=relaxed/simple;
	bh=JF+rXEHoZ3frBEYVrxdcn/mFsIrCmVhx44p74XvMr98=;
	h=To:Subject:From:Message-Id:Date; b=pextZwqD4WRXYehja5smbfE64W5LYbddd8wBdJD984/EcumBLzNAY2XRDmhLfyj+j5hZevhVH8KeGbJ3juNlg+JE6tWU14p00bZ+sQpgslxnkViwraOg5fhpll0ZRnLyt6HgCRoDgFg/T1d2ahMaxVrevUMu+uo+OAEbZyDsKEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2ztK8Cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2ztK8Cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA988C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744784393;
	bh=JF+rXEHoZ3frBEYVrxdcn/mFsIrCmVhx44p74XvMr98=;
	h=To:Subject:From:Date:From;
	b=s2ztK8CqPxaGXPX4q2Vvq2LNquEvYLUtz35DMXfVOUZjI4sQ/t/SF4qD/u7QEwJzB
	 kSDA19/poXc0b2nn92PHcjkDEgFI5NLz7FfzfxTKwinQ95IoZ1+CcZ1XOMzqTmYqhr
	 Vcco/GK34uquLA7sE9GAraRi2f+X0DnMxJ1aR3lkLpnQaVEaQ/4C4yaITlUUmYL6B8
	 CTlGSoyWczYzryye2PNKTP036ercGan3km8LN/SuGo5zlTUuc5eaAPDzdJaTHODZ0j
	 2+NnL+wrf5BSBQ/crTN7i2dSO18DcUU8earEkuSxCl/9DT3zl80UsmNcJMQ6XnKtP3
	 1d32Nnxon9vww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988F2C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478439361.2331.4701362215448775577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1aecd4358569d1a030e583085c2697f6ef417468be32586ecbda8d744a1e73f
Date: Wed, 16 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744784393
