Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4878B2C026C
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792363834; cv=none; b=k9r8q1h5i/1Ry4inYBvouRcjxFcLlh8Fvj4y0otCLBHI1jD6E7USVWq5WG/SbwlMz5HEI1l1wXqxnq3ipyQZsOXvlFZ4lhNIWluTtWtlaWHeKhvb9Z+cYfelDZNBPdBbUJqGONNmjY52FzjTgs93V2xxQg/I1IzyhtKRczpoixM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792363834; c=relaxed/simple;
	bh=GK1Dd/fkmClwwJMCc0ZWmqaUsAr9uCtuGM2DSWnq4AE=;
	h=To:Subject:From:Message-Id:Date; b=P/ONH8Vn4xbpuIHF10XDNAzs7Nrrj89bRrWTYi7QGMHvgb+iM0S7mZyotlWZceRoN3cLeBFfjv1HB2fsqHQMLjwW9cmpFbljr/HnpGjmfW7XYVD0ER7DKJNgaa8zU0IGlzvAWUMWc6z61rDu/ETC/B50bScLY3P7AanOVLjFH1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/NIbGvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/NIbGvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF878C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792363833;
	bh=GK1Dd/fkmClwwJMCc0ZWmqaUsAr9uCtuGM2DSWnq4AE=;
	h=To:Subject:From:Date:From;
	b=V/NIbGvnDUHhLbuNTqKB/i3RoBkNuxhin89XVhp9PGMFB1SM4LBoXSD03LTQREPbX
	 oCsOrGKmzpLv8WWvAlHlSAwtoesbfoIwBO9avbiJRDJ+E22KtXP1bYhiAFTL8ft5wX
	 4cClzep1VMYPlmtNgpAJccgPwQ40ZPJ4qRHdwHwZ3o2U/x73LBcbcEN7mPxrzaXh4P
	 k5wzoK+PGFXjPPZqoM8WY3sZCiyu3RVE79Ka49Hw85Ziey4n6H706vYwCXBV/RIEF6
	 8SPHiJMU0Zcq+FUF+5Gl39sckKaSQ91oVWgtiYlQX9L4PRKACT8+peAPYbZhzk5DjO
	 u7phaQe6MVJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB2CCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236383369.8048.15279013165693211659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b88349cb8a763a5aafcf8d7ead8deb32cfa7fba0caa33ab2c7892c1d2fb4e8
Date: Sun, 18 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792363833
