Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C179F1DE89A
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753917593; cv=none; b=Fx2IM2WrfN4X0IpGEp5uXFm4hWfz4eMdqkYOmgchd8RpDYlZbqyUPc9lAnauQBOkUpxFpagoGuRtC0andWWlDg8M1FDbgEDNZv7fouVFK77FaaAHqUVG8l6YSPck/mLID471vMHjFoLvkjNHH38cEZIIEO5P8ovpmNsicCKPL/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753917593; c=relaxed/simple;
	bh=6vnx15KgGmpoGIyI6R3i7uZUkAk5Mp9tyw+UwklfpzQ=;
	h=To:Subject:From:Message-Id:Date; b=AAzKuAw1z8bBypmPqmmiATAu6EneVBhmVNa9X0pcpFAUK9uEGCLB7liCRT81TjVi43dfw1NyPawh28LuLefz3aVbhVRaOizgDU1ScvKv4+CFnbvI5xUmNc8FZBqwkprqetO7iw5dJ8YGDX7zffXd/36lc2RFztJqqCNgaeQ+NAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlJ/XobK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlJ/XobK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E81EC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753917593;
	bh=6vnx15KgGmpoGIyI6R3i7uZUkAk5Mp9tyw+UwklfpzQ=;
	h=To:Subject:From:Date:From;
	b=dlJ/XobKeNzpdDBCLX1fevwSXlmJUAhYell685oejJgwh6M7GMTmey5109t4IuEwX
	 pF1NrICnEhxrzrXnCA2WhueYrmkz1Ar/mFixifB8Nt0P4RJkEdT4IVPT3+eKZ3uDof
	 aqhHUG5fzjoefRHg9Fa19Fa8/2LYfXbYbXMxxXuDlcJhiTfpFB+I9iPdmgkceULMxB
	 fEuZMJr+1tvB/pzRgidBp3373qx4gyCy/lEC+j4KnCq+HL6XVmlSn7Di05y33TOYYl
	 T+qfsL74b4qXkxtxJ0g9OTS9OiN4R5TuTqki+5g+UDacwyiWXELE6Pvg9YApI0voql
	 DpIGmMHetXrqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A1C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391759358.20767.13848030757301430241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7692d115d84c0403eaa4ce2c8017a4d79251d2a95a12975c348054c4cdb0e64
Date: Wed, 30 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753917593
