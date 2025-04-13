Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5163D8F5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744504794; cv=none; b=eb1pFLCZzgZ18xSEBQd3UZjzvGKJm680qAAkwuW9o8FJUqcjpFUy//w8oUqMHIRDmxavMfQVqv+sPhuDKy5x6apjY/BGBvsOxYyd08igw2cXSXMe194KSa0hIolYf9crlOgVNr9smrAf/iSs/9GCHZIIC6IUFcS4N7mrSJ5lfnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744504794; c=relaxed/simple;
	bh=J4ZYoKOxHUWA4RiakgPZ5JTDpVa7dmLQUtjNZCYrtTc=;
	h=To:Subject:From:Message-Id:Date; b=T4UBKM9oazFcD6l3qygc43G0ONLI6kNNNRLo+jyFiI/N6UIPMMwxGkxm2JfIFEyyHBse5Yqtz8Kj53GFyHs8t1HuO7Mg3v2ZNsQSZvXLLPClnr0Pbsi63iRwq6jO03JCFdJxLUPFpAdGVowrgEM4jRfckC14vLfm7FeYXQH22RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJU5EB/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJU5EB/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA22BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744504793;
	bh=J4ZYoKOxHUWA4RiakgPZ5JTDpVa7dmLQUtjNZCYrtTc=;
	h=To:Subject:From:Date:From;
	b=uJU5EB/k1PDAHIzqUV4MUqDNz8c3quOa4bosutMF+uC9kfiEiPLsENOjE8Ra2xivS
	 akCj8Vd0NKfbIxLEPDBd7Kb8njpGyqPJD8xz01r8/u/X2CtIteVAFrPYDmOCBh6cuB
	 7kYxR1+tZ7YROXrPlQAVHEfoeag5ipe1Zp+ofBh7HNejFAb9/3UtCEmTHqIKdUa8Hx
	 f33xTT2NFDfxY067qlfjH3Sa5fsiSjd1wCZcksGdA4FFElTmco8H40gxVF1mCzr/kP
	 UWUHaBf5DW/0BrcOrjay44IjvX+o85hsuoIWRhOumGTI3cZW2f5wOh0nY6MwDGURkN
	 d6aXusyw4aWUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3086C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450479364.17471.615891879228349919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f815122c32bcc0a2152c37e6ce00a5666418ed3a5adbd5820b0c9bd46bc0073
Date: Sun, 13 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744504793
