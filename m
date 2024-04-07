Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B351876
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712477296; cv=none; b=A7eR+nldU/cw1qJxaBQch2oq+iv4mHiPf73dr06C839f/2o6DoPaOL9NkQimnfYNon5v2Hm+s5pSK2KQRx0+dph3WjGWatmiXfbFbX6yjXhHNWmmlW4LXLr7Gi8WvCJ4gbNWSZFfs/QMoLZeDqhYzPJH/zQpDyz7v13nGaeyfRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712477296; c=relaxed/simple;
	bh=/KEMQiSpzNhYZx8jbKJKdNn4ZpJ0T7kvGtAC7gy6u6Y=;
	h=To:Subject:From:Message-Id:Date; b=RVerREqlZ4GHUfweEol2IYk2J2mjFcIxMP3Wi47r21uyUncMmV359k2cH8p296FD90Txv9MlKAWUHL32+64NHRRrpT/5uXQhN0g04TgJsZN8aSt4rQlKGQax1zzGHScId8ZWZ1JjFlzwk08xlF37Uode3k8ba7lzBDXlAAHrywQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g062n2ND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g062n2ND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7225CC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712477296;
	bh=/KEMQiSpzNhYZx8jbKJKdNn4ZpJ0T7kvGtAC7gy6u6Y=;
	h=To:Subject:From:Date:From;
	b=g062n2ND29LoLrTbpzRYHcHFvoWnjbtaE4g5RPYzkhbPYXz3C+C9a4NNTsJxeKS2i
	 rY8GxH5/X/2bXSyGqz7Q9uokHwPAJdUNIBalUzJ005Kl00u9V6JYWd1kzn1HygBydc
	 WRehilVffi07xzwuqE2004wNizb1elsV/XBL1mg4TDvklvybaqAWQuQSe5DgcCaaCD
	 6By1v/0782ALTE713AZxEV6gxHOU2XrHlpFnd/HkMDoRowqRpI6ziKH6L6kTpFftgP
	 pn8rck5hkl7dOEK7B9cdvuWWFQNepigMBrLuWiWtcxwol3AsRcqaGpR+HJ5wl/As+N
	 I5l3CWH2gq0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0E2CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171247729636.32253.4819072307073807818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f5f59f8508a8ff83026b5a926d6c05a8aa89945829f9f50d0b5cb030264056
Date: Sun, 07 Apr 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712477296
