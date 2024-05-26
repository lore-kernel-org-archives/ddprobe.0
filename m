Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71273522F
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716726863; cv=none; b=tSdpH0fUyWATrDYBZFnlwymuQwDhl8ZgnSCXo8zTPIMTWVP1v8DaucGG17iEUp0v3z/EEGxM7lXKaMtLMIZHqxsF5HTIGQyOKSuF7BZTpaIQyawAPIGy3frAylZ59fXezDQoCS/jPcV5aLctBpJ8uR0N80tIEjoF1yDOmBpq3LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716726863; c=relaxed/simple;
	bh=mREio7pSvHceHoikc+eA0+Q89xfUQOZ0O7ChufXBHTg=;
	h=To:Subject:From:Message-Id:Date; b=icVFgK9tdULDxQikanEzWhzH/APpmoizpxlp8yFLYP4708ETEJZKGXaz1yJCDu4PTLD2usDkkjI0pwd/5mT5x7VHe0GnH1ElLTAfRwmreydNM1Eb2tCqxCI+xeSUxZe5Av0VyD0i+aNBlJKvRJ46ds28EqJX53LVnQN79zBagmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV4DbIGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV4DbIGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA6F0C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716726863;
	bh=mREio7pSvHceHoikc+eA0+Q89xfUQOZ0O7ChufXBHTg=;
	h=To:Subject:From:Date:From;
	b=QV4DbIGuEteplTwXKg+aya0ytGWUCFjgI0zQ5j2690CkAaluQTeo7k0FcJDUK7d1j
	 s7TiXrcRtYD8X0VGuPdwoXhAhyOBbqF93oCFTHCq/V1aLRcHTh53In2rAtiE1lC9q6
	 UyT1M6FEDdWGD3VBr+OQAQCTpZZEUtz+PugeLC2XJs0nHAaTU75rkBtgvScU0LSoBH
	 KJZUya7kB6MBNKASV5e6LkQmd8GvLGD9BVzTkwOQXffHdQ3vOQ6l+YGbDuZ4bBCGRu
	 vOmGU2l55v91g6hjaTy2k/P9bsIAx3iDSZ/w+M+1k5VYTqDr2qPWyMfjh+Fo2vGnGK
	 vFrPJTsCHFnvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE9A6C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672686279.11302.16425652803083162860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e871a79c757beb51a2c71e74471b8693c575d33509dff410f8b450c5ec4d569
Date: Sun, 26 May 2024 12:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716726862
