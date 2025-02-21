Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492061EEA33
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740154734; cv=none; b=lk+H6Bz1i8r6cjCDQ58v44FkZ92v2+IXwF5yR0jEwn2ZsQp7L2zBgnDqioXoDYliwR8Mz3/10KRRTuE2G8uI68cF9YyxQ/CD0UILftARk5D/eUQtt3IQYbtYsfiG0AcOAhULDyl3x7+QJ7vTucqVfbIlOWL3OmX4ldUzFYhwCEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740154734; c=relaxed/simple;
	bh=YPmJF/eE0i1bOgnjF4SU7Wkp4aE9S6i57G7nsZGzObw=;
	h=To:Subject:From:Message-Id:Date; b=A5G22oGdQZ6s6EwD0mHd3MIE1rRQNzd5wPA58YhQjJkC5Es2ZEjH9mZkHnzxwK4HlsiLvx96evWKuz/9Wqajp0Jnu5Lih3cjFsmdwWNRwjdIRkgXIxK8TlIkq0UzI+mvpwx93BsWnWgK4CQZP//1A1e1HOYZRVMytoPGZyelUkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUHpfp1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUHpfp1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7BFC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740154733;
	bh=YPmJF/eE0i1bOgnjF4SU7Wkp4aE9S6i57G7nsZGzObw=;
	h=To:Subject:From:Date:From;
	b=GUHpfp1PD6lOwRMKl7OqrhevEfeZ3zOOFgna0715ygOPCam0R4+rIRNOlCjZTENiw
	 SslvopxcvBKd9syBA4jP5HqTCGw9foDgOx4W2EvUJN97tbmQECl2a6l+iDHGZHHqwp
	 Dv85FIUm1pjUh8hWE2rDKVHIc5ZDePrN2vDwDsLQ1pSuyov9bTdbMD5M/5MMHOuqoZ
	 lf3kUAMUny3gHS+hB8ii0UgJobgFbs7Ah83dGElPfFB6HSrxdYaXnvuRC4KgptgvGN
	 AituRPbTeRiirKkJlx44k6I8ISjBtTCMDzinK+tA0VszaXLQaN+rCit4LdL/DTijPR
	 nfysjFtfH5nvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EDDC021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174015473359.19908.4843108639798108714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0238592273912f9b4d05892e7d0842fcb14a70bdacb3f793504e4b121a5410
Date: Fri, 21 Feb 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740154733
