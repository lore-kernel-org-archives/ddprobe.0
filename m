Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327F8EEA8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759495794; cv=none; b=TOM545EM1jwXGy/SQ2OmXzsTd8vTgC+lmO/e8JYCyrFMcSoTfGhs3FqYrHd4+r0/DOmE/ap07WYDVLgZB/aTlYON3fVdJTZyvOSGD3W0W7cL9BEYKhSjI2QnhpwRXcH59e/SwrHyhP1chHC0WKxgkTKJh9DpwBeQGJ136EUNUiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759495794; c=relaxed/simple;
	bh=quFmEQTzQhbgFLbMBF9JQwL5d0MCMXeQFBjgjhYD2kI=;
	h=To:Subject:From:Message-Id:Date; b=uYcSvZECLUDEBqXHijVhsCOYGCdGjXh3FgNS3A9Cl1VhwZii+nbyRgDcxEQS2+CWFNlpwxGnH9E1KgVq09DShU48SrNVn07SdOckch95RZjecHKS1pLIs7dY43aNE+PfOqUOEAHNLRaWBB8Y3dzlYP6yHkk4BC+i1TCyp98WMoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jv/NpfRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv/NpfRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7B9C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759495793;
	bh=quFmEQTzQhbgFLbMBF9JQwL5d0MCMXeQFBjgjhYD2kI=;
	h=To:Subject:From:Date:From;
	b=Jv/NpfRZKwI34yqKwebepUue31D2RCzFndtItNkV8RVnyLliIfM8R264uk3ahuu6r
	 OwSBtRaxweMEYTY9Bzasr3AcpZTKUDX9XQYZDlLLr9PiU6vQ7vfbY7UYdkvI/r2kJv
	 9Nto3+mM2mvAG13mol3KkS4o4PZs5dgO0EA4lkOaH0258390wCUla+H6KRHuQpRO+k
	 4hA4jnVYN9y4Pv13jrifk2Ymt/QvuDAQ910KHdyAEMJHJkbpO1Z1cOiQfb0bETaJpq
	 Cs6g/3KmYP0uHBYsrrH1BdLQQxFxy4FUsMNsYwzgasaJd40sTS+R/w3GHkLCvJdjAj
	 UExCWjLr4CKrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F24FCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949579357.2262.6836637371660909803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30cead1ca51f5604cd5a0622bcb297dbe5197621a8bf3e10d9521423ce5c1d95
Date: Fri, 03 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759495793
