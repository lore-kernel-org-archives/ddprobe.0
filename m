Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5388121364
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719645263; cv=none; b=qPlaZlceZSCu+VxA7aM7zq+CQK4vTIB72xnJ+TcHitHV1rqmKeu2/FH7ElUFkkPdatVSmPCdO9QT7d+YA/OdWybALselAvBeSsxu/Kf6z6bQP+t8PS11eR/KgWc8kLzKRAWyjXbvvmvkcU5p/5Y+WwWlbeE8IXdCICejCRdjEgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719645263; c=relaxed/simple;
	bh=heFxXvXo/HCtmu4+6lFfpDFSm5oyBJS4g+gkaLatEq4=;
	h=To:Subject:From:Message-Id:Date; b=aAGGsqxtvFd023feDK8ZoKCDJD85Z/IOhzhVfjR77LaDebCkRPcFkrcZv6fwYgjkReZWvOB2Cq/0msjoEC0w4JTmB+ikyq0EMkCBpPHyqkwWSObnFpzL8pFNj/4pmGhtlteZIO8Sy3UkfoYkuF0HBwwbAhOg+bmO2CF4zXflf88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp83IMzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp83IMzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC352C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719645262;
	bh=heFxXvXo/HCtmu4+6lFfpDFSm5oyBJS4g+gkaLatEq4=;
	h=To:Subject:From:Date:From;
	b=Rp83IMzAT1O2mc2eHzmFhlBoXTcNPGOoSrIMxrQQFXjClJ/VGuNJpBY4VMZoHKtvX
	 4ZUA02m+eV9iE30s/Fa7sgPQyaOR0PhrYjEhELidUE1SYTv9JAIbpmFHzymyinrLIJ
	 fMfjjyvBLQMVhvzTypdnfZg+q/zF2plIijlfmDQFXHY/d07KEBWSRVyvxHM34f4twB
	 95gQ9xQY6ZznCOxzkichqOaOZMNDkuZsuGLkfHW91e7oAriTiCvN3erRknqxkkJQtU
	 +1RnUsL8oJtHL5ztz6IK2ezNpkDlTjDIZuMfR06/gDJjPG+hPdhz4fV62ZzxdAK9HR
	 ndmXyAGsjb25w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63F2C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964526278.26365.2898262900360543595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e453c0f8487842c50d156f2b198bf97b7a0fd3bc997bb6fc586bdddefdd9c39
Date: Sat, 29 Jun 2024 07:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719645262
