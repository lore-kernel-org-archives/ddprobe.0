Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193D62765ED
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766465634; cv=none; b=Tgct8XB1Fg/D8Rk2+q+/j5qqhC8/noCd9LmS8pvoxxjeN2YbIAbJ1gg8e0159OS/68TcxGJCpTMusTb6KyvzYn0OJ3UxutMTq1emZvTo0qDAzzkl8GDD46tJU7QQZZkEyHt5qTDJB6ygeDg00/+h9BoZ/VwaeM24NPOVC0z5ZOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766465634; c=relaxed/simple;
	bh=L2rZnYxAZ+7uitqHwDdNWkq40wYClEWxYzIe27it35c=;
	h=To:Subject:From:Message-Id:Date; b=XA/VCtcu64qAqZVS6hiuqPiBCJEZuG9fkglIl/aBcQbCBkd+VGcwZ2e1oWfHiSpnQt3c/1EzlEVXBv0r4/7edwsRDnJ25jzYOZDBUmSdg5DeKCSfJ1YSBWcCff/tQZMRwrY/7mkMeIaPb3qGj2jH6kzkZ8NYtCfoXQZDEYNx9V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmKLoZp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmKLoZp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE9C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766465633;
	bh=L2rZnYxAZ+7uitqHwDdNWkq40wYClEWxYzIe27it35c=;
	h=To:Subject:From:Date:From;
	b=dmKLoZp6lg089Td+NifQiCZsUNXJ5lKk4/uFQP5Il0fbm63A5vCc+082mWN7g18qK
	 7Xs/8Vm3Z9uGdNmAhE5nuEwyiimfSADixhUPutkgqZeL7ucU9QTuFdNvxKPGKMlDYm
	 cq3vqxsDh/7qtnoouJFzmq9diGscSWN9wSRjmZWMZJHVCBoHEKhGyyjUZr7ziK4az+
	 f0S92dksmtQDN15e2lx4qfi0ovNaa0mGO3Z/LwroRNzyiYxlYv3huiytTbdWPeQQYf
	 6uq0Ng8VrVGTL11xgEcS2sVQ+4g8CNuvIwaSX7AvQsC/BmDWHNWFc4P0+CbyC6UbHN
	 Al0tN9zjV8TPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91828E6B271
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646563357.2514.13757747045719408846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ad0e8c842c935fdd8adf7822d0dd506a1b01486a714b1fd19b19969e1297d7
Date: Tue, 23 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766465633
