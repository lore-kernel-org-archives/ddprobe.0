Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A1D322DC5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757596194; cv=none; b=f9escFtZ9+HkGi2P+3FnpTmbsjdur21h7HN87C/s1uy2EZNxfgdPbgV7sMbbVCmWW18RqWZKww184VSH6VDpM/7Ipsg4UigzXyzNqP8jSGNfzQ8m8Sr1SREveawFmfg8EGAPg3K6J1l9hDfgvbo5PAxImtX8vZ2Dl7Id4TXqQJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757596194; c=relaxed/simple;
	bh=Cm/Rv8eREiKzH6lV3CeTXvC+Kinqu2o4zobTWIVyKps=;
	h=To:Subject:From:Message-Id:Date; b=d8Cf16C7ATiOHsbXCQUzhtAhRdNZEbTkgWkDbgcNlbb/pm+PIcL/esvr0avFirnyKs2pXp//+4JWdi1mK0Qh0S6VejOhd9Tr0ZdtkB1LcerfvWEYia9P+7qxmkoRgSlTcIgAuB6ZB+MnWjLajKSzu8TdCS9DP3KDd0cocrxRqKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvVPWpLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvVPWpLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D52C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757596193;
	bh=Cm/Rv8eREiKzH6lV3CeTXvC+Kinqu2o4zobTWIVyKps=;
	h=To:Subject:From:Date:From;
	b=ZvVPWpLIvbminu4lsZxBehjCN0CTq4aFtQkzpU7G5rj5l5kOArfKtPiSbeBlN91bc
	 kQsdutw+XDRY2wXiRa3bTKlYAu0uuHRjoWURgHxTkHpV+zFLWKh08jazsjCv2Ro+Nt
	 o5RWtEodFeLKCDyfAQEfLjfQz+AceRB4X56feasqBaGvV9IEkKy0+hO+RBSyT9nWAD
	 62TifXzbwpBO/Eg4dTrz+/100RpN5MQHI3WkDV2Lx3XS+8+XJTpKodA5GMAzRNlTtu
	 jybpCfBMBRKZHzKFVogmittjycUvl4NCd213sqJPVpbn8lw2nyc79mMRCxWAgDAM63
	 ji2PqLzW6KzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC8CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759619358.28034.12628482351359230850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0d8b838e28c324a00fc532fcfc7c0cac7f22f6deb7c339934c8e868410474c
Date: Thu, 11 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757596193
