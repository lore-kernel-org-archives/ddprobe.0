Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C73442F
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728966954; cv=none; b=uW6viRKKnWOt14MSvtOc6Ii+FALyxCFCbQzsOxpJ3p9HGSe0RNErHxQg6D1Xm2oggKL4KftnAVDXV5PNY2amWJ2y7ro2hzFvM3TooZL0/wZbCZGQUqmCVQQkjQgNA5qlYxJi+ESEytKzA8Ib/RF55I9ShXs64qYgnZ8155pII3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728966954; c=relaxed/simple;
	bh=ZPn5s1GL7Dod9YsvfZppefaX5gfwOG6+q3j/cOWHGYk=;
	h=To:Subject:From:Message-Id:Date; b=BicW2ds8touXHHboak0tPMXFVqtJDJl8B6BWJUl+oc+0FeVhrz3ZFAUxCdb5CaNUdSIiXlgNmDpIpvgMx99+EaHFEq9W1ApJdu80HqSOYu31AlmVrLV1AHQAbVUBIA9k0sMvAKqkt9USLrIxS+tOV+gwvvK35c5ry6s6UWzrFVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMdZHVBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMdZHVBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9D3C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728966953;
	bh=ZPn5s1GL7Dod9YsvfZppefaX5gfwOG6+q3j/cOWHGYk=;
	h=To:Subject:From:Date:From;
	b=EMdZHVBIz4Z1aGfn9/EJ5Ep7zUapXpBlqofQEosPa8djBNSU0j9pfgVKTuiIhg7kL
	 L6BsKRSNnh454XA/8OqeSxuEykdhq0yCjoI/lI/hP3dHZ6kAga2GGdlWDYy3C0HamT
	 Ky0BDTNuoYFSrS8RCmcvjJqDDioTpfUS90k+Es+6Z4JdEYMHMcWjVxJWhXvtA26evm
	 WlD1/9It9okanxXWpQQrGMosdOx1L5co4fbLWHCSDqRRiQMPvsuX7FhIG4Cv1bFaXn
	 29P6k5wO4SkVSZqVBEz0ZK8e8XoDuqcdYaVqgsLmpKalN8aHcawFlYwKW97If4KA7O
	 Zr/vCZM7bVhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B796CFC264
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896695359.29798.2344748578317459689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e997bbe43d55d80f0e20b382ac5b620a84b43a9feebb79e4a65803d49a7365a6
Date: Tue, 15 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728966953
