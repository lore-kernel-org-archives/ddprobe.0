Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B747443F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707469097; cv=none; b=FmPmrXQ5zV6a0YhJJOWc4xUWKrHlH8YqL1/A6zvM4SlR7XmY7eGYSL0uuhe3uo1gpfc0CT7p/JTP2PIHjfnN3dzgxBhNT+rM9ZdLtt6k2LDk/xJBC5kInFCGNp6z22cfggeO8n68m6wNLHwmqQij9XRcQO2OqvQQIn9H1PEt35c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707469097; c=relaxed/simple;
	bh=0X2WgJ5NyUkMaUz7ZMtfYKhRXhSOKg7ofxsZvFQaumE=;
	h=To:Subject:From:Message-Id:Date; b=RSHhoG1OWqu6hFqvm7AgG3IY3VtnHOM8b27C8pQw0UwkCwR1saD2W0/DkqFJ6V5rMtbLrdYF16Fc5KYE0z9N+9Y0pGitsz8PDvNRwsxzd6YYQIENTFV91I9hBDBd8Mzaz6/ATfcT/j0OWG3mNX15Bqhv2hF6G+lvG+bG8y/k7ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsGJ/iHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsGJ/iHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B34C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707469096;
	bh=0X2WgJ5NyUkMaUz7ZMtfYKhRXhSOKg7ofxsZvFQaumE=;
	h=To:Subject:From:Date:From;
	b=UsGJ/iHnaOdlv87hqbX/VJTwOKiWMENh9ZQ3sf4EVN/TwP7aLqHbEnpqwcY8bYNQi
	 xmlL2IG4LOH+RAlzlNiQlmcJfKdD2ZmATgmk8YLP/wZtTSAJWvPf/qhJmvYZTv4NRu
	 R9j6RFCoceu0rUNMvtBHXwfskyGSt1KmtX+q0BzUF6An77ohww0m9s21pNMFjFGmWt
	 8glvXlzAbEi0pw5brTPYj3MMiOPG0ihFw4HKFs/6oRl1IEqUcyf3M7HSIP3erk5LEg
	 cEHwy61fx78/qVzGQezPmXlKapCZz2uZmCI58CSd7za9xh4YRamHgD7FdgD6p+JlqJ
	 utjA4ms+aIeTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A00C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170746909640.21104.1355466741365793436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4c3936f6efe9ff6b35a1b0e39a5bfde3e4475641a8ec616cca76b1a6cef2af
Date: Fri, 09 Feb 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707469096
