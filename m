Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEA53A8F7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764203574; cv=none; b=hP1iMJx2gN9RgUyEFwpR3fPx+6n5cexEOnfntaUKxvS93wlxMpJ/MHEZn1WLeSlrp0KeEY+nzvmO8r9IUvTNjcRs4tOoLvYltqaWWXPOHGJ3yCPay98KAt4+3XGTE/jTAckwT3hhN3HIEWyvdQyhTj3TOX6lI148lyJ47PcOlEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764203574; c=relaxed/simple;
	bh=oqXU6BuAmvm7E61mfuD0r/mwQh71CsEfpgBXKBeBeNQ=;
	h=To:Subject:From:Message-Id:Date; b=h5c3kaLHg8KmQsYjORE4/CDJpKLJSsNviyFUmhuIwkCysIZf5GSTvmNCHoRipuHwFSi76uv80HX5A7Hw+vYk9ZMw0h0qzLHIjtJJ50MnXT6Ufs5Ycpbtvit3p68JwyB+oz4mSKAfWFmIx3NN0BJ0oN1TWYuWR0eG+U1D/2XC3UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIwqTdO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIwqTdO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D19C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764203573;
	bh=oqXU6BuAmvm7E61mfuD0r/mwQh71CsEfpgBXKBeBeNQ=;
	h=To:Subject:From:Date:From;
	b=dIwqTdO1evGydYKaTxUYekfNEVEd/FekGgz8i/Z29Acio8qhLDVrGMsRe55AS2KWJ
	 gLrKzy+Eyvww+u7sgcGPR/cD90G+GB0+oU3ENmtrPVkVGXQ2RgbVR90PQa3ZVXMHUu
	 4A4hfge1tSt9llFetuomUksk3qg/yJGumSMZ/cTWogq64KQxylaHkIjRJFdhTnihM/
	 J9SFMJcmEX+Us0yHFYpJDQPJVUQYHoMsshDP3+Q4U/dvIyJ8Z/rPN7o+oTeV5hWd7F
	 2htvSc64832I6OlGMNXhQmJcJ7PMpmfla5evVyOUCjVF8epGcVz/nWoQ86Hsfaalt8
	 iYYJtSMWp6QLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C55D116E0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420357359.7881.7784863164493643567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788c00232ff717a00fba7e534c0bbd67dc63cb3042bed1d4d796a7b19f91b546
Date: Thu, 27 Nov 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764203573
