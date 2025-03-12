Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509A71D7E26
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741768134; cv=none; b=lLEpZ8ylYVLqthPqHCo2h5UUoe94mgNXvrsA2zahPwmBEgmQjbLvoqjsiT4Dph9gBgUEf1eDWpIzWSuKtfR2nYYPM5sPTP4uFG2aAYmrGpBgTVIsC3Syj4d21wOFplzTFSfjqZzKOMYYFGmBzX62lgy5S2NHGzgn7AjciahGYIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741768134; c=relaxed/simple;
	bh=NWEdOPUbHAT8j2AN7DrqzQQ5wIWRVOhxcI7Jkmw5SfA=;
	h=To:Subject:From:Message-Id:Date; b=D1P265ri9XnV+qXmk+t/zamLErPes86rIIQOjugSd0PG+2oyAErJruRUg6CJ2e+EsU5Op9wuCyyjMBZZ5UCZTNDS0UDvUoVzCFXX8zcoEIQGukc5AwGnnthDeZx96KAoiL4qEkRkKoBF1i7M8Uyg18ILxxP/WMsfpo8eahrmQQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjPmYUdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjPmYUdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F73C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741768133;
	bh=NWEdOPUbHAT8j2AN7DrqzQQ5wIWRVOhxcI7Jkmw5SfA=;
	h=To:Subject:From:Date:From;
	b=TjPmYUdmdaC8YJWxeoUOdhIemQ5t6hiJoftEHuq5uJznu7c9mUPXwhV+K+uKsCwoe
	 JUGxssMkHbzju6LE7i6sVYcQSNDAjyr44lwXQaFJON0q/JBm3zy/lLDsu6tlEFeMMa
	 82xhauywMVlWgE3HUR6AeN2tPm1u4SrzK3BuTQKNg9UYcrJvl5PFdH2BZw2/8xMP7R
	 JwGHiVqVpCukQiJJ1SvOZ1dnD2Bd4wV3U6kxJyYTXvx1sxRWHufpQuqGikCbQlvTaa
	 SqMPTVFoN0vLM+dIb5dnFsarzZw9pKAoqH1h703OlvwHI2CTFhm3aV4cKDSHsPIFve
	 054caDXsVYyvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD9AC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176813363.18669.8655605991090194988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea3397176425e2b3afd57076958b350bb304c207b181e9dbfd02847dc14036e
Date: Wed, 12 Mar 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741768133
