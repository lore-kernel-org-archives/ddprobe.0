Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0682B381AA
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714960343; cv=none; b=nuTmMJHlqtnwr8gfVMvJqHlKQfr5C+Z+P//aIlFAXzhtWmrH9SMWHzr1/PugXaZSSJyXTocpLfJcDGdNJLZuFkTfwJSAajxo/ZS4a1agnOM6UJxtmSyjbrAtpQZJo3Alg1JDVLcCekWlq5bWtlWWi83DLxbiavIsx9uUAFxaLrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714960343; c=relaxed/simple;
	bh=50GtwPx6o7E6FmrQcOlIWqp1Myh1lpbKrE5J7u14VAA=;
	h=To:Subject:From:Message-Id:Date; b=XUf7Is0fWdfrKAcdfkaa6/9zcBzFjM/OGZxpDWWHJ108DL4UDPGLBsatwTIZwO1qQcLpLBIZxOV+gVIPskJ2qJdNvhsBEX6rKUNEpd7fXjmem0P2u8TXi7qpv9OizubwgYwE9fyDduvQPaF8speHplNQSHet1FRzdkmg7xQHHOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGp4YKIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGp4YKIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B21C113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714960342;
	bh=50GtwPx6o7E6FmrQcOlIWqp1Myh1lpbKrE5J7u14VAA=;
	h=To:Subject:From:Date:From;
	b=pGp4YKILW03Dh3WRFoaMizUeMs1O9e/b1Yxch4uqqKMct3hnz+cdEk85VJ7WcJcmQ
	 sJaqraqfL+250ZRnVqQmBPlJ44/BGMa9c2ZNVQ4ofg0WpOc6Hb2ZGuEfuYPF3g2uAb
	 kwXZIVSX8M8vILDTBRsC9TThffDTRYPbn1pc5xdZWOJoSjfN3SXzIkRDirMzXC8drp
	 TUgJRAAKpW9pswUfelQP5D9R1gOd+Tw5VFHRPI7q/btQg4D//s3bE7eaOQ13oZsARA
	 JcmNOfgric7a9AY4m1BJHBHZv6YwekMBoVpKzgYTfzNF56V9+NjmrUPXSTPWjOXXcB
	 R1DW5V60SuJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA4AC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496034276.25320.15172097076205487484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6b260b872d8eea593f98742d698864f557db301c55d06245efee46de2f214a
Date: Mon, 06 May 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714960342
