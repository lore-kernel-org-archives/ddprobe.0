Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5A723CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751092794; cv=none; b=KORQjfEaOHWRh4k0hdCMSkI68MvL+CmukzQKiXZt02UGaZ4vy+iZgEFbbbsQ2Sq7n2LRZiNQPfHrjPKoXgBhodrF2DTkniN77yTSIXxyHkNXKjQX6UhGGSaT0axpwoHjdo3sG1eW8C9+H57ZWShNqMf241xTqpIiCtLKGHlyOis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751092794; c=relaxed/simple;
	bh=v6DPTLZTG0YLCvzfiFneiafC7DtC4QdtvMMSiays8MQ=;
	h=To:Subject:From:Message-Id:Date; b=gq+gLZqX/4GqmjOsfl3J9wCfpvKMPuEHl+25aC1n2xsv4jAU3NvtcN4t/9GCUYNb7RlieIYumuZ4zjIrdrXvyQPeaFALTulETle+mAVIP4OfRWeYBypfrDUS2mQjCtCpPvJ+CCovVjjXxtxRSd2lCr117+0SEm2hW35N03P7zgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNs+wHnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNs+wHnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21B7C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751092793;
	bh=v6DPTLZTG0YLCvzfiFneiafC7DtC4QdtvMMSiays8MQ=;
	h=To:Subject:From:Date:From;
	b=sNs+wHnh2c25Pokd52oE2LfXZLISXfD7M0m+lEC2EQ3DBfy3GW4XBkgsuLz8DtzJd
	 z+vGDYBvwEP/4/38YGRxyh188prEAIHnLZtCSuiTzaISqRS24TVUhvlq0bEuqEUwoS
	 9S1zT3UC+irJ4BSO8R2uqSJ3ijM+VhBRdjfl5JXPc6uaG15Hz3gxS8z8BWpiBS+ohw
	 zKN+WEX5XtSe0XUTVPPSAv0vE9kupCi8SQfBUA9vaIdYZQ7osUdoZRe2ibw8a/AQgH
	 UpPOwuWian3QOblNtcEWmdwPa2I0szR/DG6Tere/pZPovKsUtmByPN+DvJHMqECfKc
	 jpy9827JIWkkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D8DC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109279363.30177.14051677150756717497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347155b264f1ae9e9453324dcc15d0481c40c7c1bd76673260f954cc0dc43e47
Date: Sat, 28 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751092793
