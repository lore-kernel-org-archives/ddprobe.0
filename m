Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E5E4C6C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767401634; cv=none; b=AmU3emODWr4qPbLK4IO8K+GSH0hg1OyWeWRpPw6LFbwYQwkdRsKHrI9pLQecgrMgXZBr9uXHnau6jGDJxvVeq4ErEzbz/+pQUHIU/kUiOz3XxXzeXmj/cAvJKzZktlSzbpPnrK8OMiLvTgu0DDZWIBmPuL7XSsxWm7DOPmclaCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767401634; c=relaxed/simple;
	bh=wg+uV/+fKsYk93Ho+or/wcUDgCBiq3PfaNb7NkQHuzE=;
	h=To:Subject:From:Message-Id:Date; b=Wfsj1GciTmhfm7esdluxpEJPpFamoHaO8u63FBVgMrU9L/lMOMdsKVndahZzHjNgnSGrmBprhQltnZkSFWSWScUA8GWKo5NZoyZfPRn6zfjGTNT46YgaZuSndU08uRh+wD9OAn6UCHOpElaz+qs3yHVyqZGzYwbGn6VbNw99pBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvNqqfZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvNqqfZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D46C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767401633;
	bh=wg+uV/+fKsYk93Ho+or/wcUDgCBiq3PfaNb7NkQHuzE=;
	h=To:Subject:From:Date:From;
	b=YvNqqfZ5Pj3bolKCZsVJluTcpzGNVRFQJDhNxH50N6GzrHXigiSrmSL1SyKpaNukk
	 WDwcd03IVvj6HXX2szknc4VHCngntkioGaeAPw3VNKOo43vgB9mvEMaN5h7Gil2+Ug
	 hOBlc7i6VkhNoRXCCEAxoz257T7jIP4FscQWPdN1lfCQXdvSIMDGT7HQZTz7TE23q3
	 6TuCP+5ZxfdxphFFZ0vVXFlKkTa9RQsi3uVgaCI8ULBJhi3ARH+DG7p2qBgzF3FRvA
	 VKmx25iYne7afkERT6Nn+pP87YDeqc2T6Udj4GLEqfBbdYwLCNeWGRb/pt3Rl8pVKl
	 t8mHijJTFZvbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED27FC6165
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740163357.17022.14272108465354757365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566646df007c9648fc08b6cba39db9c38ab404d22a23f71d72cb28c41cee246f
Date: Sat, 03 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767401633
