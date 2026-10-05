Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87BB4DF4DC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791232235; cv=none; b=fnyMcM04oK/xThNplPXkAMh8LRfwSQ+IDmsYJJFQigzcfBHMOyrvTvon1g1ZOVxvmT4lZ9oclxjpfmjLqY+D9kUQg2PhCnp0p+u5gg0TScnD718134NlxNXOdWtuuhN1D5AWyvkJYxwdvQqr2wiXnxd3EsMci+8q17sKgzWOREw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791232235; c=relaxed/simple;
	bh=/xhz36uhd6qjxPS3FfFIZsxiLSObNnmgx0BnVHB4IUI=;
	h=To:Subject:From:Message-Id:Date; b=Z1EmjzL5QhNe87+s3Zx1v1uSFOnrgNVlIHN/c2/3KF/Vu44IxrtSocAIBhzacaqFSzlrlDnE1cGlBnoZVa68bxbCfbBeeD+SI7JY/6L9Ijf7PNfK0NrA4iDc5lqTRZ6yxnIObK9ZGlR7BBrBsKSrI4BMd0Raajy6G3/a3gocUFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5QMOwuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5QMOwuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C17C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791232233;
	bh=/xhz36uhd6qjxPS3FfFIZsxiLSObNnmgx0BnVHB4IUI=;
	h=To:Subject:From:Date:From;
	b=b5QMOwuOIpohkHLgbiOFyHSGHM9f1dv0aDO1Llsg36Xmo3BSHBmyRw590NDbT9iNf
	 xciKROGNSQIKRXdcek1PW4OkcmXpaep+p8jAIAZFCPt0gJSCcj5b5I4LgP2z5qBcO6
	 iE3EmbMq0iGHsjUbJYltJgb0867yCjm23A1rruFHB4aqSPrGMaOqmb+kCns+UJ2HfT
	 +4fcfdr70CqxGsWhap0YNEmtF5dJykTH/yMs6rUQfnv8AroJmbHj6p5bKdCLO+mjJ1
	 JFiQ97pGBIZzC1nNimZzkPQ8i6MNca5evTOaKG+B/1UXn8hyvOP5mnQ43stdsgyAZb
	 342zLN7mpgDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB160CA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123223368.8754.455432084724545769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ed1f7c3f524ea2cbf8430863724b5130478dc9c97227684c526b91b87a363b
Date: Mon, 05 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791232233
