Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FAB4A35
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766220834; cv=none; b=pmrhIK6FtguJS9YThw5BBnbiave+yIJCQ8nllrPgFzzDyrrwM1FO2fKsCwWQv7wdxjFV3mOtuzXdd5NlFBvzsW50/tGrO6wN0X6vwx8BY/wUiRGPP58rxPuFRibn3CP7goajlgz5jrUNwLdtWE+VBd3Ocv1hvex8L+StWhJBD4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766220834; c=relaxed/simple;
	bh=U7He+q5FOREkvreKODeAAkUssOUmsn0ZaI0I+bK/lcE=;
	h=To:Subject:From:Message-Id:Date; b=Z+4LqFDOjHY3hwvIeB7/yosRfo57S4jjWaBMagZiTj4mvFugAsSzuIY2mgDWyBlcXqpJA7dSCNt0rcnfDi1Y9V9jH3kvYIu5F3i1ngNXcv7rRJgmuwTHncsCxTjiAa5Z2FN3TOrWeNVh16+tnJEndBG1Ak6eOTkRPN/zgPc6dyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzkMjq49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzkMjq49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D11C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766220833;
	bh=U7He+q5FOREkvreKODeAAkUssOUmsn0ZaI0I+bK/lcE=;
	h=To:Subject:From:Date:From;
	b=OzkMjq49urFN0sxtEhs3C2ICslJ1fKYVVqaL6oIjLMbVppsLVxe1Ecb/M6ZfG4LEk
	 MB7EMmh4vd/3xMZXLsiiKUDRmP1bfk/0TvdTkAxcOTCHQfTLY8HxVPrq+olRCSYHfr
	 g+gZqc1pkKSV+kXazgfyOAs7m9CBf5hpNhg2i9r3UQj96ruKXX2lBMGIL9kq3+Pxnw
	 nP/+WiiG2/4lpKNTSQtof62hn4V6Fu6k3UqHSeZWkRUEeX6Q1+tnuu1fX/MCo/O2A9
	 HiRemYXzEvGo7W3J5RLhzEGVS37ss/I5TTbNgt13mcsH0EnTxc9veVnWCwEGzjFjMd
	 tY6rAe+G01MMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B66E668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622083358.31489.9015324563511893715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a361cdc1bf721d17cc92ba8b9a4dba2c46482ec798f9e6555eceac86df6497d
Date: Sat, 20 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766220833
