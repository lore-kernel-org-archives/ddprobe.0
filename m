Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4885126B08F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783196914; cv=none; b=BfkIp4hi2YQBIZi2D4On8vjmNoFsSHh7q8oCfHYhfwyTtqkhvbb1fLwycM1zqcbaik8uRFcTYGcc1y0PDfBwZQmSt6XPNAdSGFEmB6i7mPfwpvL2O4u5+ujfFDa6Py2an4fUQ9eEQc89r5jGNsPdkihQrWx1U7N+VEtd/hmMLLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783196914; c=relaxed/simple;
	bh=z8lUibCfpZJ4jDUHJ7mBluyttiVm85pW5DnnsWse9Og=;
	h=To:Subject:From:Message-Id:Date; b=Nd1xfGRA/IWIr9V+2q13rieGkdn1EMFtvKTFVNJIIQYkviNiCoi/Hrv5erUDosPkEJL9XyRhKRp9319dlluTaNTEM+nN9LjZByXEuZeB7HyQ1URHv9BV1VHpYqMj+X7CZswsyO0l5Pb5gTU9qxmmrCcT99gwMWeK35cAILjxa9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ip076/gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ip076/gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF793C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783196913;
	bh=z8lUibCfpZJ4jDUHJ7mBluyttiVm85pW5DnnsWse9Og=;
	h=To:Subject:From:Date:From;
	b=Ip076/gt2uiHP8pvHpPX5i/eDU05kAIGb/YLP01HS18jGyLbCymjkG+NZoB4QBR2Z
	 sLmWHQChg+2L/NyQpauE4S8VLc4QKjVFyyIU7XhR2he5pK2qCAR7ZWmaBVMtHSo+3O
	 +tjZlmUO6QHF3VzFtvPbIdeOeu8Krhd0QfMf3a/sDLrZfFYPG+0xL/6Lo3eqALMOQ1
	 iaSaEcvSy72JidgSkN1JyVoutBq0lueQINS2Zs9QAzOhMySj+ll258bZnIrgVghOi+
	 Oy6owA5btqWsz+VHmI1JzBLx29tPwn3aUfQY9DkXSuwwFLo+gbIJb6DA7PTsQmlfMX
	 T0Yoyj13QuL7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6DFC43602
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319691368.28420.12635326706407236351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838db90e5f58b8be7fb58eadc507ea4daf87e46bb11e10993119b35eebcb2024
Date: Sat, 04 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783196913
