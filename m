Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD57B3043C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789909235; cv=none; b=HxDWB7HZS7bLqs7Np4hV9LjjBBvcwanB68jPdoldac5uuJfUCZQ7Ztsin8/RK4r/1x1w4t4basd/YdG+ycj7UaFMm0zN8kpzuVGw692Q1RKjIwi4KD3U1ylUnkVhVq5hrsFN75UXtIohU+qYYexhli7May7q6Ww7N4Mbx75ZUQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789909235; c=relaxed/simple;
	bh=5k5Gz7TWCKtlllrzfBA6YlodUm6XqpPbOuy5uQScJoI=;
	h=To:Subject:From:Message-Id:Date; b=imQ/UeZblZm554VjR/ahnS4BJhSX1q0hNkzbHiEL2w6cD8cqzBmgCnP+NRuAFRI5H31yAKV1tZcMS7az5y2rNGVG6YG5MF4qJXgGffsPyES9uEs40cmCeMDtyae3K/7AZplI+OyJcqM2EelO/UzNkaUt+Hl59dDYksHZjqzHOWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz0qC3GP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz0qC3GP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFF2C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789909233;
	bh=5k5Gz7TWCKtlllrzfBA6YlodUm6XqpPbOuy5uQScJoI=;
	h=To:Subject:From:Date:From;
	b=gz0qC3GPVk+JnD6yI2GdRvuBtsmDvJznVoEpdsJFUc0mwOMsn5cekKNSWofP8/5eV
	 WK2Za/DXokVsRJPVqQprhscjXObUZbRsEHa8WDar13+SEuysqGaFgBJQ11Wwnmsoqr
	 mT7CkAgUT2Qbt/kbrkyqTTwUx7bNJFCbarQQRvzgvWJBVMtfY0wYmwiIDKXXzRZk/w
	 UW+43DUa9S881q90Ct1aQxaiu3bdWrve8ahbhnVzyyeRTs+yGPaimM5Ov0aYMUrIwx
	 6H9ifpNbb0PB/aF6OdS2ihZasub50eDhw4ZcXwv5+kuDHFxMSidMeuRbE69FZrNapn
	 iUaj2w24oLv/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C23C982E1
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990923368.31947.6388905047389468050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4a4987187181b034a0aa2d1b6a569b2ab91d21e9dac1dbe9b744a369255930
Date: Sun, 20 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789909233
