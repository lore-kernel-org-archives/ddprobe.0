Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC52256C7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753484395; cv=none; b=LMx7uJmBe5Y5Y80njaMIf/IFbyYgZ+bDOkCkI0bKU1fpe3MfI6imVJV0EnQR2VAfypfI2UjtGGfPbvb6OrRdU4UGpabJu7qOMdzVPnWekiNU+o5JLPqeOEs5Iz3XXuhsxlJQQIfkEmfxxyJx7Rs4R6g1gsU5e8yGrgVbYa10om0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753484395; c=relaxed/simple;
	bh=ms50KU9pAcUuZv5Sfx6jLCqnuZvDixdTwj5xuCs4rTU=;
	h=To:Subject:From:Message-Id:Date; b=grR0wfR7c0XGawkJ1xyVh+CWVg4wNN0JgVonezDEuX/2fpvMDHMsXkul9/Sgu/WhZR0huAoOi1beDKWAExFJdeXG1M5NzW4Sfkbk/IDt0O2fFOuN/6qNpUpKy0vFyq/cslIGGINrqGhWe+oQq+KVgao0aQxxXaL7ZkvKO4NxfMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJwMx7X3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJwMx7X3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3110C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753484393;
	bh=ms50KU9pAcUuZv5Sfx6jLCqnuZvDixdTwj5xuCs4rTU=;
	h=To:Subject:From:Date:From;
	b=PJwMx7X38mdkA9MrJh+ZIQUQh6rw2y452S7KEF8aHVmv8e28WcbWT426MMKMWR/Hh
	 WAcinbsXF314aDAXSBF/sX0pqpDhZp2MhlQWCbtM/+2Ssti+lDKm7sWzI/p5+NQNRz
	 xO7EeFKz3LPftuhfUrcl6jIkREOX2QSBX/HibuQr/xuEp2dMwrvvcoom/N3zBwuSJ3
	 HrveVN9BI/uRsSexBj5GPkRozOCfb3hVMrX99oKw2qOgYETceTI80sNt6o3QsjbQ67
	 6mR4f+J6yZE4YQgZ0j+Ds0tgWcjW7Va/GlkqvIicFsLIMvnkAUtGB+NTX66jf1xNsj
	 BdVn4X49O+8iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D31C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348439357.13972.12885694021691938999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb149f2b44e94c3c9135e80218c3d09dc8a2876c5a08b37933b776376986fa6
Date: Fri, 25 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753484393
