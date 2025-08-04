Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8DC1CCEE9
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754267393; cv=none; b=J/IA7muwdqhO78XqULNz4CO+7MAhXDdKrEN4B46p1ux1JMtHPFx7nGzs4tTWtWko3q+FaeF3MQ6P1nVLbc/02vZZj9LxwqSJWS73OW2oQChguduC2Z+qvp93GV/kbbU3j5FYgH1Jn4gThkujMu4a3SWwT0p5hisZ44UEwdiiqak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754267393; c=relaxed/simple;
	bh=9Ff1s9WiIJRSQA6quW1yCwwdWbMlrQu2YyYtU0re1/U=;
	h=To:Subject:From:Message-Id:Date; b=q7ti//4A8F2Zp8srbT4poSI/ab6vigsGsRvb8P5KluCZH5gJgIewplSm1gWLounE8jt+CPOSM2RPGq1kLGrrW851V2vgbnBqzFg7D0r6p8HgmSW2AFncFsQ4Sr/tsF5KmUhZCrLIIrbjc8fCLU+x5S/4Z2kQ0llJS4wsnyMCph4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgE6Wsum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgE6Wsum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9475C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754267393;
	bh=9Ff1s9WiIJRSQA6quW1yCwwdWbMlrQu2YyYtU0re1/U=;
	h=To:Subject:From:Date:From;
	b=NgE6WsumJ/S4h34k4jd6xiwXcga050HQsGgSSUTnxGS4RJIe9ZkjOQQ2EQIkjtOq3
	 PNXmrTVnr9IdhWk2R8xLUV4ZOGlJJMrm6QIgoYtt0Ru+F3XIvOHxN8Kth6WoIwYXIN
	 37V1EJVvy/joj+nYXoCFTwA6QBfswSRdSRZe412P2FULTwoScE72TxrqSbf5rm8iAs
	 8H22fhY0x9/kufGUg8FpqFMq8AMfiwNmm46Zam09AGgOEtwKii6FkFMMY6Xyy5oJgi
	 FJfE9pfxiONpcCnfZG80pGz/P9CrQH3WCodwAMtZUGTlKGTYlFgfUrGBuQwc9iJQVi
	 oQ69ilN6OQgMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93050C87FCA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426739358.10105.15185329777515218108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b34f9306e246ba447e4bdb01b96a73f65c41c43882c6f30b6be92a54b4fffe
Date: Mon, 04 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754267393
