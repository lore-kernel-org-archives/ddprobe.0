Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A6349363B
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787507434; cv=none; b=udCY3J77+NMTXiXwymW/GLNEJCdPrWF1DyOveMEuYn3MPUNGFjFaSglWsx7uSTtpRS83bSHkPYiFoR+C2ZueZPIOJ0E032FVmTgPTUb6OXZRNF4qSLskEubHAfqKvJQ5HSw8sXFzwhTn+SITUyL+yYCu8p21yfer272ZCUqh8RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787507434; c=relaxed/simple;
	bh=6jt2xq0LKjisxN0nAezCafWmxP02EKR5V09kAYCByYs=;
	h=To:Subject:From:Message-Id:Date; b=BmI/GNQly1G6Cl+T/NZd6HRk7/lS3wJbHNUPkn7rq48ME0yb0vU5jgAMqB5T8lxfhcIPt8WCUC5d9KFsBfWJjJGH9qJfjzVbpKD4ANlbJERHRcOqhyZ+a18k3L9DswUtV30QagGYAoeGDbEWxtWpIfiiAvv+VX0WDukr33YDUxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2EctsFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2EctsFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6104C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787507433;
	bh=6jt2xq0LKjisxN0nAezCafWmxP02EKR5V09kAYCByYs=;
	h=To:Subject:From:Date:From;
	b=B2EctsFP7ZAlWvhRNYAF5mt0PMwFPjj9M1yDHHi1P4R95eAA3nyl+Sy+5qDQlObU0
	 sQvBsT77cl6M8vcJDrv3+fY4/HCk6reBmpk5JuxweFv+rwZHrM7kKlI8nwnzaOnuhu
	 HhSCO1D2RkZjM1/yOdzdrRo9gqASuJX11EIRuWjZVj/fsj06Hlh0oe07mqBjJReZZD
	 uuJQY9fSRv0R63cWeLkkvD9ExtcuTDqkI9A8aTnilc4ilJaebx5DvhIhUyIDb7TxpI
	 uI3gD63wyjirA18tVitTwRVl64C12NGfoRHfWAigdHI2E8NU+R+h3UBMecATWM3Emc
	 0FsKqOtT8DntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20A1C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750743369.10471.12496690662399915937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a0120c4adb25fd86d7245d06d0ca5ee7f9559e1f93edbf71ec0c48e29dfdcd
Date: Sun, 23 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787507433
