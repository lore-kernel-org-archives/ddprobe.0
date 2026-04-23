Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C903C0608
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776979654; cv=none; b=ugYVNa5nSbe+0fxsG8yR91xvJesKdLkeSx0EjKl7aktAT5dTVQ8ONBhYJyUaXRHvfLUjwA8n5ETk9fKC9k3LVAl7jCb+H2072jmI1NkfCIkjhO9Rh5uuggfLX+rqwBIhl2D9U+5XOaEz21VTWoLrpXs9pli15TVUfzlVoh2kAUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776979654; c=relaxed/simple;
	bh=9HW83u7tSb06zM9WRWS82u+BSl/oVSpDfb5urTMAzLc=;
	h=To:Subject:From:Message-Id:Date; b=rD9Fa05XC0gV/SOp2xYo6VnwAHS94vhz7pZwl14RLSvk8obYOlcxrOydVYH5b4H1MSpb/X6RUdzhbhySY4lgu2vi83Oro0Eyyb6Ps+LTvCdooRXnVoHcJleECMkRnpTMkZq5YLIkSj2czwujcJ+2WA6bBJntEJMn6AkDrz89lig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqGDbJU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqGDbJU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93DEC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776979653;
	bh=9HW83u7tSb06zM9WRWS82u+BSl/oVSpDfb5urTMAzLc=;
	h=To:Subject:From:Date:From;
	b=eqGDbJU0m0e37YoNFdZEMEa5J+yANahJNtJ7lfZuiBdGN0kjZIL/kWHW8hyNHuI5J
	 Jq2fSg3o4l0KxYcJ/ia1D3oDPugd2P5dZdA0bnEYtJ+ad8qMwKZbLEtIoyWdYkjVf7
	 5jMWsJpuekLZCrNZ8/hRPtDEck3yAZrrUmWoALPlI/mAHSX5L+SQnxeHXBgX+eYcTF
	 TWXPR9DZJfNOKSdX67S8MCVp1jWWE47vPQlMuKAEFlq/jgFloan6kTfbdQUOFYb+MJ
	 TokpBpHX5xl0COSZUeme38ptVNfQfJxaaNnkCuDFzriq675hCvpncsyhLhn2Kxd//P
	 r4tgaUWhPvnsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA110FDEE4E
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697965368.25353.116451533497486411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862d4bfe752fd0eaa2d46aa213dbd8e15d5984338e4431fa11c4c1766764652b
Date: Thu, 23 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776979653
