Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BF8257844
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763367714; cv=none; b=B/EUp7qO/XUguY3qW20zsYYvEfsdjRNeGJHJvB+Zks8PCC2vjCF9XQN3mJOwQLpqRoHjtlIOaz92boKmROwke0deCpYoV4MhYN8yesyiyh1uDHaKYfUeelYsKo4uOQSB8f117gv6CZ8VRyDCtzUM7te/5ANOde0wCxQ+s9rUmzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763367714; c=relaxed/simple;
	bh=EV9Hde1cNW31//mK3PZDKd0EAOyWzwO6BBLId0Sj87M=;
	h=To:Subject:From:Message-Id:Date; b=n8ySzIby2dYc0mgQUSj8c98FLyreECC86KUJRDR++K+jLZ5EYCud+jcDU6E4iegg5ZoA3lRJFyLXfKNqVfPd6OjUKhFYqPfDlZG4LDWQSC68c3nDF751+6cqAIsiFgwciBBOClNPk2j0wSW0+5EU6MkByPhvrvvxcrNc63adPBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxW9eXuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxW9eXuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F8BC116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763367713;
	bh=EV9Hde1cNW31//mK3PZDKd0EAOyWzwO6BBLId0Sj87M=;
	h=To:Subject:From:Date:From;
	b=XxW9eXuHv/hqWo8gfkkrSIL5cOXnU20TDaGisJtedrkNQfP4Na3/bEUAxwXdCYAeR
	 v7lJo8x8b46BGNPmFkLhc5Gm4vFMmoVX86YN8wWdZh7CAJ4A45A8Ot2U+QFsYSDNzi
	 AiYrb0FHdJnU3BNqMNY7KgJp4jh+cDFgdZKchyGkevARQZ7U2TDDX77/ztUFaaxTQ3
	 +tZhC3UXa4MFot5wt3isp9yrV2bnk/S5z5gztGGykzh9mV930L2JcKesWHtL/4BiX/
	 jttv1InWAUMgymBLZEerENqXFS18jgeuVVgacUM2HrZ9LX8stQVIWbPPXRsst2FRk0
	 ibweR43KnaSNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9317DCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336771359.25281.12185870934973696910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10be0d0dbde1efabe29326fdf2db5514c1e9c16bcd8a5c40d103f6983f185f7a
Date: Mon, 17 Nov 2025 08:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763367713
