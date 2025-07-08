Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CB9286410
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751978993; cv=none; b=R3hDbScBhij6gf+IkcnxYvAxlvDLuJTFyM4xyR9s1RxY4XfW7kI/mSTch3Wx+o8gBzcp943lOvrJ61vetn/cph46NrJT5c2Bg/Dk54s1/mKsF8KIrAsUDHySQk7+VR2E9Y21ZPglxXITNcwundLgWQk2d/hsdl5L3AzUoPiAlEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751978993; c=relaxed/simple;
	bh=NjRDbU71T63FEarx5XQ/hd6Syg39e0gC71WSWOux/f0=;
	h=To:Subject:From:Message-Id:Date; b=GUBOg0r7YYZ+cCz13zUcddqkUe6Z6lc8BsE6H5Fxy/zH+v8qdFuOZRmqOKuWpNHiini99JND8Zk7z69hi8YwZmtmdAdTR2CaX9UmXvhQSNb/903j8/EUuI6FpF9W8jW6tln5Rr5pPpf0RyLvilCEMckHkT/xtkmZte0ug2c5ewg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVJ+RYhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVJ+RYhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BBDC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751978993;
	bh=NjRDbU71T63FEarx5XQ/hd6Syg39e0gC71WSWOux/f0=;
	h=To:Subject:From:Date:From;
	b=VVJ+RYhmMmyB+dKkVSzs6KnHL2kPSb1hvMfqLi0p9o4kOoj3oUbadpd9JM2lY2jsk
	 FOHnjjErGK2XOpeDdvuM8XsW5BnQ0wvy6ztEnw+s1UjRUGZZ46knVkMqphiq5iYBiV
	 6yME1zdUfFdQBogm7Lj13wGzH//tFyWZYqvV70zwtCZgIVP1qsZKra2WxvpUGcZKkD
	 jK/GQedZUkFohOC37we3c2NVQvwD/besXw2/a0i9SAF9b7uiI9r0Zt9Vydn8Sz/+YM
	 pZKB2xoa4kJgVe7PxSpJNZNkNUFloExtbiDb9FjQgWJvxUtqhq9PPMVxWH3NH8SU/1
	 CGtIAwc6deMXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93824C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197899359.2658.9743545236343913151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11448115e8f09012ce4608b75424a3814b25e4f1afab11d4bcec32a11ec8ec6a
Date: Tue, 08 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751978993
