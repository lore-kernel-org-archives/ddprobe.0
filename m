Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2E930C375
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758909594; cv=none; b=s0JF+clbOxcMps3kSkFzYNG+Lt2vMmodBE5yGqhqEMo8i7ucMMu4yEyF+WxgZ9vuMlCGFB/LqMOo5NnHtvjm45ucGdMklemEgYaVmrmIL7Iyp0AL4dPWO6S9s11ojDCaNdCTYTonqwhxf/nzxJvZ1AOXTb9NN4lIXLH5gp4O3aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758909594; c=relaxed/simple;
	bh=3MACGk+E2UFJUPAbB2wc4y39tca5ZSL+waTuyuCqVmU=;
	h=To:Subject:From:Message-Id:Date; b=dKUzl9S3taL4potemrV3RMqDECcqAOhTiik3Rbc7IUPE38gmXDvGQkSSN/3ccK9onQDNfeFteJFsEvvoLM4wgwd5uI7KuWAq91jIeIcWAy7mwM/jLQdYhbrB8NhB7MSp9z6tporqFxi39a6ny6B1IYEpUAnztqZE8WQ9HOkJtF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXwRbACq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXwRbACq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7701C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758909593;
	bh=3MACGk+E2UFJUPAbB2wc4y39tca5ZSL+waTuyuCqVmU=;
	h=To:Subject:From:Date:From;
	b=kXwRbACqA/ckahv9v/ZZrlCrtFvAzCGcsyBfq0avOhIcTfqBzCWFU6lMIfnaLWOpx
	 dTQcQcrmsDlmXR8TOHtqSDCeu9MCoxc1kJHkN6dk9OKYVAKvFW4b/7g0IXiOrM//3O
	 vTiPDPbNohhzx78ooGWe4oIfIhu1xPwCbXl117e/bE6EGroOgj07fAZfYsCKGQQzzu
	 /4uL2kMrxuun/LkwooqypWS8AbA9QIpIm6FFAusSClI8Srq8cPI9JsMqeq6oiEzoyf
	 6KOqyCYOoieV0WdhkgeeO0b3JCKmPlqDGjmKgLwqD2TQpqHi4pgIxCYQ/7EwrgDxov
	 JPmiI4ogqNoRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95916CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890959360.19337.4471592242653553496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6414e4b433147b9aafadbce24f43ac4d9d885e5b9481a8ebc7bf4109a29b28ba
Date: Fri, 26 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758909593
