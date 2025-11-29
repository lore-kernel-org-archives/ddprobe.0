Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1396F4CB5B
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764435774; cv=none; b=E4MFB5Pld1UgAeYYLJ5QhKmBYGIyvwg0gGJ4PbzsSw4c+aaCmzN+qyOZxXtecrurFB6VWKvf+z++Mgkhyb34turD2VH1MJrcSybfXI3Fnn5CbO6DJEpZ6TQ7EuBySPqamTdfrwTy4+ARpXBA2plV8Q1g/fMQNALV0gKtGkpwqls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764435774; c=relaxed/simple;
	bh=s0ZEQOXSS22BqTHaawJ3RCszHlMFia8GFZ20Ct45XO4=;
	h=To:Subject:From:Message-Id:Date; b=C5E19vM/nOokVcS3cNuxVgMnfQKHTEeHDcpSWm/WNzSX5+PQXtyeWXh3U9cCk/4TOOhxy1c1cSy/r9yXEpFhXAflsP7s8QY79Ggu8lDo+7ARh/9Yi2qpIsIfQkOy0egflUckGhMYz7INgAphHGEVH4NRSu26fcw45kQ4KZdwTeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVRk8gHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVRk8gHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA639C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764435773;
	bh=s0ZEQOXSS22BqTHaawJ3RCszHlMFia8GFZ20Ct45XO4=;
	h=To:Subject:From:Date:From;
	b=EVRk8gHPziVVzFnsUX9HskExuoLWqOe0OLoHSOA9VeNzehU0VaCSruuHKxfooCR8J
	 6lYRz2+wQ2Wc/oJG5hc8LmzkYfCcRYfvfm6owg+j6tCOGRZMt3dhfakFdcwR6FWXHT
	 tv0hsHMAiLIkXrlqBFwmGq1VIoWL12ZR3iqdqBKqy0vvcnjKXzX+ia9g2JsVzjUQkP
	 gxVzyG6aDFc2RGmunbT+Nzl/matQ2zj8m7JZi1wYN/jtls1KKXFmaED+njRI4yh2EJ
	 lbtNYmht9ndQMOyreucmj+0fdJDCb4Ii/HdH6s7nnrAh+S9iP2YcghWFZjSQ72tvzu
	 9N0+u+viMEvgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D93D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443577358.14229.8271386230419818546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fedf51bdf68bf01f72bf29d51511fc543e2fd049c1b1e93eccbbcfe7d08861c
Date: Sat, 29 Nov 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764435773
