Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260A67E107
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756958394; cv=none; b=tVGHzWxC/gcXdoDa6kPD3mM68AHw6/uimow52tZOrXTZiYE/lcktV4U3vv/BHE3szmMlAuORpishM3ukY30RSxRcXgMKNkBk+U8zIHQDfhDBNbfKHhdFKzibt6knorWa8k3vLSxVMeuIf1Wj3sxnRVH2wPgBJPtTK5Qf6jSfh34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756958394; c=relaxed/simple;
	bh=E1Enf9wsTnxB/o5/O0Rgp2HAixKeZ2nGEm3A46LYJtk=;
	h=To:Subject:From:Message-Id:Date; b=NygjwOEzY3WRCGsQi5hoisZFWXowEAEa4Y8I9eu6FygmmvPcZHXoF06gfrLBRKEHADxLuFyXnmtcrwLmwdUNra/7Z+8/YdASNJP6O4oWbiOaTE1rK+0unTeMGQ0RItaXEEgNnJgBDJ1C0Gl+WL+wGhVnJtZzLh62iEDeXbZpigQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZd5nieq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZd5nieq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3977C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756958393;
	bh=E1Enf9wsTnxB/o5/O0Rgp2HAixKeZ2nGEm3A46LYJtk=;
	h=To:Subject:From:Date:From;
	b=OZd5nieqYSIwVgWLTwNX6E4S0X2mnqvpuA6yN0EMo3LJZz9aITmBenZRkuoioMERS
	 cPpVXYSCjx/wUnIpbSkN/XJsq8TNciiK10uZ0xgwKw1wZ4aaPlEIMbg14nGpIjZuPr
	 7g0MMrTrQd922wtk3PLwyaMfUJNMljkVHyyQ6fy0ReAYK1a567ciQ8Y8n0EalKxqpL
	 FxqW8A3RBhkUPWuOWeQGuJqn6RAw+xaDF9+r6wjgchSfXMM6EbpI6K40STeLjMcvqt
	 N+CfygZQRUgHveSzKH/RpSbGdWPnbOhqCX6lAraosN7ZZu2qGFFVcia03ABqGleQU/
	 /f8mIPd5pUtZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA7CA1014
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695839358.11109.7234514065706049954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bbc94dd919492077515e20c97e21c250a186e3cfb2fccd489de130463e57c6d
Date: Thu, 04 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756958393
