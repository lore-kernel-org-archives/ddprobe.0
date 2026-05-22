Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205752D7386
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779417754; cv=none; b=JRDyR6YGMs3kn9jkvCgr6egIwW7UgKUArYnatCDTxbIzpc0oRUdUfUJvvtbMrANIrW5xULqLeEYV9EZsKCGFVbmp1hVccKxF8jKci1rxCfe2ap5lcwQA7WqF4v5uwtJihzkmTtq/xE/Xnhns1hozX+N9lxYAGVD8t+LLBaebUWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779417754; c=relaxed/simple;
	bh=W3qIvghTf+PhRQgJbf+uLB0Tw0zBRjpUnbDpkOXm2LU=;
	h=To:Subject:From:Message-Id:Date; b=hHbYSNQcSPy0o4nXcBj7k75ACKG47hAxA3mRiQR6g3oG2M5z6GHt3Rf8Wj8gl+qQZxeFQ4SHZNwnWu4rVesrhyfI+CwcZ3JLr4m52/TpAp1fd48W1jrVEjEGhYJ5u0oOVKzirMgsrQDM4a6ElMnqZnMyqK2YHI398nk7hn+Pi5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpMh+m0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpMh+m0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B04C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779417753;
	bh=W3qIvghTf+PhRQgJbf+uLB0Tw0zBRjpUnbDpkOXm2LU=;
	h=To:Subject:From:Date:From;
	b=kpMh+m0uG5u/Un+4QZZaMujysSnikCWdby5Mg63UpsT98jXmqqh+XR7uJBR1cw9dh
	 5TOz0h3j+6yy73YeRsoMyLNTZJ8xnwBIwmCQ0tEkLNDQ0UoB63Avi10qYG3aWbNqjQ
	 8ysVY/J13P3zkhjM/5m+TyFC+1zRkIAq3D7LSGJrMFD5uLNt1YBGMSEicXD/GoMiYT
	 K2Pk1iBVdFNKkBTLqqZRjIFybFGt4WAg++61rhn23Ep6ZmEJVmVyPpkzHzsE4zJaJu
	 I6oFGEP9NzdcTQB5wpPl1I6n2BqI85LttzCZU+Y+g4psLlns5ejXWX6XKOSX0Ws3yY
	 +GGarEr5xlWmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8817CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941775368.14967.12584666437858529758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3e55736ccd12afc341c29339b5d22f6d05f9f95b1857ec5ef6130e63f89535
Date: Fri, 22 May 2026 02:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779417753
