Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3379C211C
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745818194; cv=none; b=iIMB1oQ36Vthgob/Bdy51kFAfktD18tMtu7wviXcjOP1ZPqLBNn+6bG/46RKjutsJJf+U11LCnTV3SxenFTLpJ0ENfLIqdYX1y8Tkf7pUbfkh1V1q4NHN496Nmlsz76EhE10e71dbp6Mi1Ak+twm/jXSnFTCU0GL/8vr7aYqhsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745818194; c=relaxed/simple;
	bh=OoF03rSA4AOHbin1al3LlvS7SMTdNm8q41KJcooRwWo=;
	h=To:Subject:From:Message-Id:Date; b=IlTo+Q0FvAdxrwPJdkQF+Sbu2YOAZ9IADFU8ATZI0KpaccXwQRRkhWyFyBHMa//V9SBrKOIH5mg/PoQ5dAHHLyLv/bsgACzTb9gd8IZcZXufTkz62vuE+prh68Acag0RRmfeM+HG7TakYrrIHWlxkAQuXAyCoIqJlNbEziwHLbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ling0EkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ling0EkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4761C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745818193;
	bh=OoF03rSA4AOHbin1al3LlvS7SMTdNm8q41KJcooRwWo=;
	h=To:Subject:From:Date:From;
	b=Ling0EkPaG14iNpENGK3gasa+6XPbMda8ECZ0v85K/kB0/nb63ZQVwC+aOE/XVhMq
	 qCcG4x0XOePjmOSaxnvjFheEWmuzc8u1QC4MptlC97zPBXIWjbF4r+g4WStqdPaA65
	 h4fV7B3QFtCdY1oyY6J44ozadH5O8BWuBWMiLLIpAC5ZbIFOa/ttMg33KdHJS6huLW
	 x6p+6PW7dT2EO+DIrCNQISj7XGqMfFm2Z3kKyRugS5rsxU3FhP+X3gqTduTJvMOZUx
	 GRytLrA3ccDPxYW4D+9FUE2QAbLoaqf0CUYnjG50tICscyeOnfdsyWNfcmncbAPmHf
	 hYK3MAaVnwxvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9AEC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581819358.20420.33125521736547320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78fc816d76d3617e39411ce27ec74d0cda2bded6f824b20c7d533430b594dec
Date: Mon, 28 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745818193
