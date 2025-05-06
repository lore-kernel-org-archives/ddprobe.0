Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3E135F7DD
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746501594; cv=none; b=uNdoZS5mtmTRZp78gxlDYUXbkCGEi+zQ9nS0xmhDsvrFE9Zgc1xZtMIVyftNbXInRxPPyITeAoj4B3IrgViebG2W5Qhas5cJZ8vozZEUwOcrctETcYVAZV1mxeo+pXNUwNjXL5l7aldwrlhoqzxJ7sIO6afxnBgsg/QwdKOz/iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746501594; c=relaxed/simple;
	bh=lFQHJtCjtmGdd2EAFRkG9sDFDAtD7EqMcC9gddUSE1o=;
	h=To:Subject:From:Message-Id:Date; b=u43xhQjGe3lxVvw8BRSImbClkTwWoqHrzJvWlT5rDnParKvCoAuYqWpIhGD9FmpPfi8z06adMb52lgDBMfHTTYp3EcMQSAg4vUVXmDYIkwOu1AZsROkTxOGhLTVhNZALxnL+BFAlVYRlE+C51mapC/pdx9C9e6vivW4ip8AZKbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsgNWPfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsgNWPfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B5BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746501593;
	bh=lFQHJtCjtmGdd2EAFRkG9sDFDAtD7EqMcC9gddUSE1o=;
	h=To:Subject:From:Date:From;
	b=QsgNWPfEZpJ3C/Pkze2Prw5/DY1h9y9Av9r1qtMdtc8lkC2CbZckEQIv7etKOzoz8
	 prpkRhjH84YB5ul0/NnfyIFDF+b/ZOeo9xmPz2ZTAxQEPLGsPsaqlwc7ZzvDGFWNDs
	 lGd9sLjAxTyKTpmWYz485q88doDlAhiXOTXYlDV2o5aXnoJyKbvUUxFMlluxS6hIqm
	 h8oZPcG0nGevO6/KonnKNdUwExh2TVbNvyxXlACDYh8Wi4L6rKQHh5k6NXBANzUzSr
	 dmW1mapR3JFBwjaUJCq4+1i7i5SIzoTs04xpINambjSNVMmxIEMBmcLy2AWZk3EW4m
	 oBMnYQKqooTfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC27C3ABB6
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650159357.1938.543072012429509388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5304e3307c1dee6b346efc0569a3e563d973261cbff45a933a16503a6832ec3
Date: Tue, 06 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746501593
