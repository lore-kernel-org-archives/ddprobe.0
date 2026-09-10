Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375BE3A383A
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789013434; cv=none; b=eNDhz5c9wNH5gWBpXE3WIyjebLKHZSNktYPYmiRBPHY5nD/+WcEbG1d3GtRqyeeaUYheXpDM35h7hvCC4QcAzklfk0qF0vYAOtln1RumiyZOFYPrl48AXctg4qxAVaplvAqsN45+KQIbsRBRRk+Uj2kExWrmUV8fuwVkZ3Ugajg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789013434; c=relaxed/simple;
	bh=G/gNwBD25EOnhiNu56dyPkeC1SaN3/jaOt/YJ2KcmtU=;
	h=To:Subject:From:Message-Id:Date; b=ZBtW0vDkTW4FQf6oc9CCGRl+D7GQDg7nCA3ROvLXyylxuM7eRHjGpcnJKI0TDcMOqymShwy1JWqGPkOjLlQ9/U3vepIy7jsCBWkgdkwBWabssReojgNlxpoDjwvuVdyH/JZ10pk2ITuklO5Nt+QuPRZ14/Zks4ru9tFrUtnZ8X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zwm7syG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zwm7syG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8D7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789013433;
	bh=G/gNwBD25EOnhiNu56dyPkeC1SaN3/jaOt/YJ2KcmtU=;
	h=To:Subject:From:Date:From;
	b=Zwm7syG8pFduGWsPQe3xfOvAbCJLARwLSikF50Ha7QTdQVdrGBs2LLZc5VvRo/pLE
	 uXSCIJIKlqySTnhrCfE8zYSuyFzOabSnwpjUbnzk1vDxD/1qpk0PuB0KTJKNGkdnMt
	 ydEI4h8p5hxwGyXSZqBf4qpjKSGBIs1d23a29kc6hMYj8ILCz1ariRW2vHHA/jAy66
	 /xMulCnCBWR5dH8ECILkHxro3dMw/3TJOF1KtjBYGy1jKAyuEt8RfSLzRBGZmqDkws
	 DqomV3ccWfWejSmbW01KhvpXIkZPQNeQJwDD2PvMdfbBE+1SGPcNGKLJBOY8OXRvoE
	 J8sUgNEYd3Cyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE28C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901343368.25737.10756976016688014309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258dfe9efe540ccff83b33da959eba54bd05ff3eecca8d3007943755989f3315
Date: Thu, 10 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789013433
