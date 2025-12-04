Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8221684B4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764841374; cv=none; b=NlEgoCIk4fOX9q20oXoc0gXo0+GVEr0dSLW6LNVP9Q/p9SnF69vPbF7TZcD9y2MoowiEgPei/IdU0EyiYDfGTMJsIYvl620VJYXVsaA15vtMNsOc47kDPVYEbnFWC5HgChbsLzWaBBWIt3UQPeDgK/p0pe0W+hoycrzMht9O2NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764841374; c=relaxed/simple;
	bh=FsHv+fZwPABB/LqpHjlHKf1114vQb6KwIB9v8Yb/+9Y=;
	h=To:Subject:From:Message-Id:Date; b=B9veUwxYBld/KREJQ+FD03l88Yp9d1TRaNiqZog+RDol1FTg+laoEzYb5OUD7jgP7MH0gH9YWrsS4Ror9hwfodxifjEQPzzy73Eg7yN56zMAobs1DIa823v2H63gaeMwKT0PBnsPpHKEbVBacP9plhkRHaF5Jzgj0XKuKPJoH6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRTQ262X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRTQ262X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A986DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764841373;
	bh=FsHv+fZwPABB/LqpHjlHKf1114vQb6KwIB9v8Yb/+9Y=;
	h=To:Subject:From:Date:From;
	b=KRTQ262XPsexopuD0LbkSWhqG85VlLExPfEszWgtvj8eqywA5VKGlMiuGODbAMbwE
	 2mbZlb8mJOaU6sMXrWN6aRooxozIZAuKvAQrt9I3yx+A+DKrP3CwOZxXCamQ1gocLb
	 Jt29DtrnA++byr0Pdoqn+1THpAEE5erDOWbU7R9az5GielomCJZ1nY6RfVWVTLxv40
	 vxGumqKN02g5NWqSp7sFq7lFlKettvTNZeA2R+biIFxM4XQJbZj2/X8WOclc1OJdJz
	 kYAY6QSJv7NXkRj63En5JHs8pTnCvY3DFX4q0sSc2Ma84ABDheFuFpbjRtsRLEHN02
	 5sgYS8ZaXd6SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F41D1F9A0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484137361.7396.17823911695962722250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659b7640178ef7d6a15c7ede766c8b0e3b6cc5c64e083ae56805d839e1ea8fc8
Date: Thu, 04 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764841373
