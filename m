Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC0A346AF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771857894; cv=none; b=Pa3HpvDhjH91gbmwaqtXwjqV4RizjFEF+3QGiHowwmMdgYBLvOTGyPwT03PS5lVsBo662kU4FFmMviByzjrNEAbidH5FOiCn6VqcD5nLhWRoLdGD/PMUp37OuizQvqCDEQkuJ901aoGEmwxmL7YYEaJJHVsbMWR6Y9ztpsOqPIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771857894; c=relaxed/simple;
	bh=0hMrvUZfK48XUu2JtIilUleJ2H1aHK2aE70K5jUDkh4=;
	h=To:Subject:From:Message-Id:Date; b=hcKJR4aOHRusXOsCV9ei7mUWBlWbaTDp3eu7nAk8fZdin1mi9xX8I0U56vMBOBDjjUTcQD9hcqg0r0Vvh+z5NWkFyLlOxXGCNNMqXQq7PyghuhoGXm4WM6TDBoJXjrLJmpOtmkqr1JG6wberKyE8yvWqqB68BAZktBzEn9BmM0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbEZZPpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbEZZPpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F0C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771857893;
	bh=0hMrvUZfK48XUu2JtIilUleJ2H1aHK2aE70K5jUDkh4=;
	h=To:Subject:From:Date:From;
	b=NbEZZPpLajDZhp/1zisCC8bMN2BPfwi20cCL5aIEs4m9K9O87XjPzGnROT6tY5vnN
	 t/briSuikqbvjbudF8iqK3IfGkSTT7LBxB58/n+++Nejgeer/CBgpZTHZ8gea4iZ38
	 GPGGmi4KSzS6pcNWHl4ISlh2YNB6qpM7gETXqRlsg9i2p0OJWpgmxw05mOm4J6hloK
	 npvs1iIj9qDuXIF4Pzwm+mofwwiqP8sIEqvcknr2z9+xevt7QZ+R856nIu+VjxhaoY
	 s17Xd3xrpmE9xxqwdBS1NCgBVFqW+X+OcrAww2+m3ueUtrCigVPPrqJw/RrOuxoknm
	 jfyxlFn4fLj2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BCCEA4FCB
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185789358.12292.2934496546768407740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38a4accaea96b04b87f4f2426f7dfe4d3363d870b319ccae788779c5bf0b949
Date: Mon, 23 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771857893
