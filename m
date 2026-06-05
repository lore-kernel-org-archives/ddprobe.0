Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8653B1B3
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780664074; cv=none; b=dyKcaNdnByqBSjSBAgyR98UjQvoA5IqKYjfGkljn45nY/SQhKUZEu6vt+N0F+Bs7HlESNpQsAsoNIOvA9v+cWL7mm6lIFA0Fbq5Lc5PkVetYN6p2rRSPh5F2XuUViiXne+wuWF1YvV7mzG/ksHFS4OGkcP9e3xOM+y+4Ntytk/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780664074; c=relaxed/simple;
	bh=EB8F+wzwIsWF0DhJ9k2m0gynE90rCI2usytxkb85YBM=;
	h=To:Subject:From:Message-Id:Date; b=shodq/4lojyLnM9Yqxlan/xSI3syD2cuqcAUriQmyB1Yd71FbpgDSPYMsGORKyUlZEVCa8WG4H4xGdkelp8+/amWNpkN1CZuIb8cSv3BjhxP6Rht9HpwcFUVMNYqH/WvSpLYsHnCHau17gqo42AhzZq/GcSc2biuyFgtIOx7qVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szARZDlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szARZDlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3955C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780664073;
	bh=EB8F+wzwIsWF0DhJ9k2m0gynE90rCI2usytxkb85YBM=;
	h=To:Subject:From:Date:From;
	b=szARZDlD332PxvllVknsGg5Z7uBmQexqjArGaRVNDOkH2jIimN2wZE//ZGV0bGLSO
	 SsAtheC2yfrXMmQEr99hNt2SIQc1GnDEyFpcEFwJkdQi9M3wlWrpD+hgROBvnkT7qG
	 IeFeL21ChxxOCZAiez3+UymJVZKTCdf9xzjFmGUy72EMy8qQy6pKHPKhH32di/gP/Q
	 qOcwnauYCDWZGhMURz7iPQDR43KyLQ3P1tMMQH3Tji1W7D8yoWLvDWytt3aW0zwXkz
	 6V6qGnYWJLB38nPXtEkMx1REur5m2nXnODe1dTLA9VR+8dUYhstb0nvQmpe3RArhGq
	 F4vsN3J3F4GxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA01ECD6E79
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066407368.11661.11023317600756894814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c6e27c10b40f11ef7f6648ca42562b5013777c5ea5234ec9562ba11c35c24d
Date: Fri, 05 Jun 2026 12:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780664073
