Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6493A543A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785444634; cv=none; b=cBsFG0+Wg59f2koPjm7rLawkeuOuxHlkrUB/LsPLO+b6ciEd+FaiPSe5BM/KMJZyXY9T86M2VbSscafjzYeDU3gTwetT8EfB0BL7gp0TaK1Y0Bnh6ukAAfTKJK9ASPSCgw1misE7/lR1Yq25GHOMSwRhDNlkRN5iYhxnPxez5uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785444634; c=relaxed/simple;
	bh=Pq2TKdITv0WFC014oTYAs778ojNFPpSNFtdjJgQixG0=;
	h=To:Subject:From:Message-Id:Date; b=iLJQe4spVRsf4ISS4+YHnbtFE4pVAk0nOacWfnlRtiBkS34H+jTWbkhP8mtCZPuMtggblQIYZvxpUqjId+XMlXwFMsmVWK7MAXNzSCiM4WcluIwDToIPkjHva7/5Pm8nxogcCpdnAVRt4Om++mP9NXavS9i8l1TzA0ZZ98eMS44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKthOe2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKthOe2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C812AC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785444633;
	bh=Pq2TKdITv0WFC014oTYAs778ojNFPpSNFtdjJgQixG0=;
	h=To:Subject:From:Date:From;
	b=IKthOe2ykxCXdNBSTKq1Nt6HZq49OzRY4pqByzO6Hc+MCdZNNsTTpMa2jvQHjqPGo
	 luCBHIsTyUrrvR7JVFwXfuwF0/M79Pa1lViqmiJ+AItPtmGfYbW2ljfz7R73NxC/4P
	 LrF8Ad5Tql80BffWBW3SIK7bmdO4Yk4iCpwxgTZqKdXoJWhPcJk8k7LJCzdhY7sw9b
	 UlXlrU4CJtRjDeOVoBRAPSF6quC6twbJgz2Kbf+QreikQ3P9EAgzewMbC7RT3YTP6Y
	 pLpgkieRTFcAHKpV7cpRx28IXl+2rxfXGwPa+/zWC0G3IYRSCbMvVNhhKgA6s4hwHM
	 py6t+zNK25skg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A826EC5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544463368.2321.3231654461676184495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021f269420a7a363ecbf9f5fd92dc8c175b6f24d16b30dbe8a66d0a911cf2ac5
Date: Thu, 30 Jul 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785444633
