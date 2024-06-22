Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714FD2913
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719038543; cv=none; b=bLVvkqujPKjcOJ9a0fgry9ovpH7MtEhczYeZOZXTS73mlgS6oSj3YhLeEzG6ECK5yU/0HwquLApIRlYC25SLq2ybxrXraKh/oEbSHWwPMkIQUSzG8oZyeyD287+aD4jUD0KhCR1Y40qCr2MC0X+Q0c7A0lWRT/6KZ/SlsGiXqvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719038543; c=relaxed/simple;
	bh=KQxUafIrMxNw5cQ9P8c+2NtW6wtiMmdPHSYKF2iqj4M=;
	h=To:Subject:From:Message-Id:Date; b=brGLmgxW+CN4GUCDxHRkKqMfqf2FHwuk4T5EPyOQcHqYfZSv6sE5irhq0f4UehMRcps1SYbJowjtAbqluXd55+vbcKAK5gjow1GTP9kQjFMJGA64tu+fxv9VB9RxRk3nVmukD4+OuTC6ilkJghdY7tS8UR95/drmRn0NMg58Mnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOZvl711; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOZvl711"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD89CC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719038542;
	bh=KQxUafIrMxNw5cQ9P8c+2NtW6wtiMmdPHSYKF2iqj4M=;
	h=To:Subject:From:Date:From;
	b=sOZvl711p8MwqHP5EdF1jv2b2Y6qLtblwGnniaXWshwr/uwNaYHxvjWbZwWzXt3pc
	 JPj1JeAZOdk2PSUbRdcD7z/gZnCLNv6LaVTm1BpqAHmwsMEXrdYQ8W9Czd+ignNEJo
	 Ft0p0PMRGvnHPmaR5C3AXSO6NLDPJw4IV0JjvvH1E6IsVElP/oBlMwKrnsjA6MSoN+
	 C3XSm3oAYxOvO6okq3eu+o2ZWaY7yZROEmQRhBWLOxSwYHBWguAOLJgv1tqhy6syIl
	 4/E3Kc32nfnYyx9CRwhji/yi58HYrh1yyeE+3jPTlurXVPZ5Jfij7Y37vvDw82BevH
	 ONgovq+T0iSAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D9FC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903854278.23186.14971910912043430831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b845c7118b22ded8498e1afb391efaeb478b04a525fdfdafb5f4ae52d41c46b4
Date: Sat, 22 Jun 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719038542
