Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E84A1B86E6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727762754; cv=none; b=SF8o12rseg80LHT8kUR6KJa1CatQYb1Oz5bGQ/Gq9D1L1q+xGek3bno2weu2o5AYW9vZfnuAoYQ8MK9j9jmvCSGo8T7WYRgxiK3t/4vjjY+8hBL7euL1Sk76rY7VX/r4vKu/JgmIwfbUlPyWVGLsY9vvixPU46d38bOjHiYVPWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727762754; c=relaxed/simple;
	bh=1scAb/f0CxRDZobssTi+EXfG3lcINNeNB/J24cSGmHc=;
	h=To:Subject:From:Message-Id:Date; b=AO1Q/U0FF8kbnyhe0Z56eNkVictEp393CbXJVaIgRtO1igDLhQCTN2lkxV9pzjEjjeaByyEQi/bpgJkVadQf0ONbiw7bFLke+dNj+YceJsxMbcblwsV/IdSr7kJ+EWOpKsnBEu9CFEe6ERWJ+B/XooOObjZD+IsEZZGy9Dd/og4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqRWc4Zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqRWc4Zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5110C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727762753;
	bh=1scAb/f0CxRDZobssTi+EXfG3lcINNeNB/J24cSGmHc=;
	h=To:Subject:From:Date:From;
	b=RqRWc4ZkLAbVQ7PAt0rHEFOj7aSex86xMmA94BtHcOB7paYB4G+TX7bI5SUN9hgaU
	 qLLObab4kCAvs2+WYE3QImhG+aOJ1LZfv4hwCI24id93zw2aroEpMDw5eK51TLDG9v
	 jlIFJqa0PuhY4cNvA61bSoqufaf/iaW1qFdras0kK1UI/zShshMdYcPcnU3l4W4qKA
	 ZfgD1AHYrEPbEvaYhD0LEHtA/8tcVi39n+EJ6NdaBVkQskbFf6cahnha0F+mdvEQX/
	 d2uD1wXqffaqfvZvqzoUFUCOvgD78jlhaOq+fdInrMkf9XXkFWZgjNWDcNZd+UBtYe
	 i9bEkTe4HY0Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D17CEB2D1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776275362.5667.6331546238156977265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0753798dd7dafbb1218ba19f3a287be5188c5a57bacb3049d4a3470a95db1215
Date: Tue, 01 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727762753
