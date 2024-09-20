Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F8417C9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726818954; cv=none; b=N9yEzh2m8IAvT/JhqychZMwIA9UzwNKd5j48gAky/b8TsYWXSIqVkWfggboeEZfO9329sO2Q+R1FAwb3EhCdT8ZHWCPncXndQpbqQe5fCJ4H/sJVs7dcKrpffKPUlyf0kAOihiTEeueUlhi8JxKEZGVAsSDR4ZMWbr81c6JvkWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726818954; c=relaxed/simple;
	bh=/HNt6QJdXgrBoFSiZ6c5Mm4W/4BEn3oABi2eOS16vsc=;
	h=To:Subject:From:Message-Id:Date; b=MqllAp43UDtgGMO0hngfK+pu3cFqqOYJz39TM1bE6HXZD2HjxRgdi92CIGCDesaZJo84YILBXaq01mrq/j9ebNE/3rBq/gFXsX2yaP9qlMl5BPfgk99iqzrNysM7s1HK9GYuuuUsdzrspUcZ8McQGbmwjtnhK3Qg0xMwbe45ZH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2lWeD5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2lWeD5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A574DC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726818953;
	bh=/HNt6QJdXgrBoFSiZ6c5Mm4W/4BEn3oABi2eOS16vsc=;
	h=To:Subject:From:Date:From;
	b=R2lWeD5R3lk90C0Cu37fn+RjC1lqBkEY8RVDNVuji6gzU3hI6Yd6tCeC/7g9rRH7h
	 lPUjtM9XfzaDD0+Nq0bxeQv5S1f435dHNSfY1tzHOGHkSzk0ilym9pxa8rzCnRA62a
	 efckc2tSl95lYN6Tpbfc7h3AzaZkH2pL0/e4QS39Yz8SqPUIfCbuLl2SIwxfEyH3ns
	 7V8FwJyhJApb7pgOhfLtHn8Vcyr2QLpQ6NpVlUZGpuAwqB70PauNFAUsAtW5fMwhEC
	 mXWe31sLarcj95T2izezWi7YgsxL1x025gleRWMFQFQeNQm38ETbmc99ulnJtGOsbK
	 cbowrpJlzsMuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96755CF58E5
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681895360.22878.11356391224224341709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955b23531fecd4f44eaef4ad9456028877526994e4b7adac5001b7957bb1540a
Date: Fri, 20 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726818953
