Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCD92F0C65
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755248994; cv=none; b=VgOH8gGGC1plyhZBCMu9FOL0z7H2K27pk7gtDwjQAKA4G1IR7HuLKffK2bqFSZdReyIOx1jT6Mq7C9xhKqZik6/MmgyX8tz/RIVPIcpkG3iGW56GSf5DUo7uwK1x5tBfwPf8Jh8OHTxpIUbpwOsLGiLWzAdsvoEhz99YK3oKqIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755248994; c=relaxed/simple;
	bh=2cgWyTS1W/4MgUF2o0KVJ/XWR8xlomRmh8zWYTrSPoI=;
	h=To:Subject:From:Message-Id:Date; b=COi02T3sINWTzlIkX5RuOfwQazsX0efJN5oc8qMdZfpFm5PtUO9HGosajqEkxhFvAfXNvZWJIa2GqUi3QY6UYu4qyWEgkmajohPG48Mdbc6MKsN1WBWmiNmFHNI0KOZJyj1n/nCBGMlrtMw1F9V9WkLqvwVBveqMgMFBgx5mkKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMxb7Ja6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMxb7Ja6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B492FC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755248993;
	bh=2cgWyTS1W/4MgUF2o0KVJ/XWR8xlomRmh8zWYTrSPoI=;
	h=To:Subject:From:Date:From;
	b=jMxb7Ja6Ob3v+Acqvz10zQfb+asxLh6lX/OwMjkYnFStUfkAbrMoYMGqYHkGVSv9P
	 Jo8r5L3mVdEQFX+GJCzG577KBCxXZhMmaBKDoAQHn7LC9++7NZgyAIGyV8A06Ykwjk
	 3Om8prYqkU7yIEVpSrBc8EKdBDYueEyAUaXbQXZe4fsJaOaPGqwiEoNROIaHMmZkU7
	 5TbT51MXy7Vms+8jpvcF96kEMWjH+3NJgxrSAg7toC67gD4FeCJkRZA/2vAjjXn1T1
	 xXZOPg5LdSlsKKm/uRrQi89EG19XUxJL28OLP1IKEUnf4oXrRVRQ8fkxqU1/DClfsH
	 eBALCJY4RfJog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9077BCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524899358.3710.8488916450947352330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9f9145422e55a52cbb89e2ae5ffdc4bb907c7e25e2ec22c4662039f7baaaa8
Date: Fri, 15 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755248993
