Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4162E40847
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721467554; cv=none; b=ZTQmrsiJ96/vQVDf0+xQgTcsUfGLP+PECOjzeAKKcSOJsF12V/MWnHtWmKcCe2CcxyjjeZq9PlKAWwUXJ8rzFW04SBln4yxYWDTqakoAt1iwZW/r7qYkFYO2aFflBKyeHwLylgV+br+uh3y978OP863yVFthBuFu4T0H+Ym7Tsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721467554; c=relaxed/simple;
	bh=iUQ1xhZKfcL14keHLt9Nx2kBicAchFj/lRgoU/FCSX4=;
	h=To:Subject:From:Message-Id:Date; b=DjmA8hZTW1/lwud2zn9LcO20szJmX36TXPC1PxPwtQU82KDJ04/1RjrmSGQrW/xZf7YBYlyRulYfEzpM5pTY6xI7Y6jkdX8dFijmxB4SSXYkSHKd7qc6PPmVgNvoAo6s3H2Qg1etLD5zamoAUS4OP9swVf8dbzjT0t9+zZrZKUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsORaj/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsORaj/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5301C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721467553;
	bh=iUQ1xhZKfcL14keHLt9Nx2kBicAchFj/lRgoU/FCSX4=;
	h=To:Subject:From:Date:From;
	b=NsORaj/0EAMuIALyLLFVFh9MJGgVi63nSYoPdnHD2mYAr4iGTRt92EBr9f05J7Wqr
	 J1UDU++gXszWlyFGxXftL0vlLKKELO851VFQH9QgNzktwnMQqdKEd4CVT10quQTXRS
	 sFyH1hsXOBN0dSqOZFUBi/D2kpZTkdMi9+eZoRcRpgMg51nr8q9aFZLNpZAnLn+lOy
	 nQXv3P3z4woewgxx0DAFYocEXzL6cawfHMr1BoH6RcnXdcF73XiF+c+7pK/bub0vG+
	 0poHn0MDm35aj3sk3XRO17D0r/QF2NPxf/U636HcsmeysWfQdZ/wanZA0raaW5h6zK
	 B8XCzL9PeGSog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FCCC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172146755361.22765.14011860341879194043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a9589d600f980e699372cfad7b57f3ec8465b88f38b882443abef1de6637eb
Date: Sat, 20 Jul 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721467553
