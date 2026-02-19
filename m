Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294AB1C84C0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771470294; cv=none; b=Y/0vHTPqIilEawdZQQ1YFoahYGs6hbIbFPaLXLzeW6qMsvSxIwynsYayQDnd4stgpeCvmmObtNC3Dq9Ww7asze03CCeAFUwmHD+yiuilhZ/SclS5gCw5yvlrcy7wdjPYqUKHdXy5D0kkpLy3zdAeZSJ8kSylvvE0cvv7TPhvf6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771470294; c=relaxed/simple;
	bh=F4MmM8w9Rq9rhoMw/X29gpUBMmCJQlcreO8pCW6P1VA=;
	h=To:Subject:From:Message-Id:Date; b=SiruChfUqa774FA+R89EpJh3e0ZLn/FrGbomQIPyCM1iFD/jFIbaYdXenQdH19Cz+ZgJWLIJ952k8NJwiotiBalL1Jw6T9D7Pr+YXReb9Weh6RAZtD0a7h3ufaL0Yqzsshsz3YCUQpoTzojLRivTHXfwFKAMiouDuaP253A9Pno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bM2V/VJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bM2V/VJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B62C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771470293;
	bh=F4MmM8w9Rq9rhoMw/X29gpUBMmCJQlcreO8pCW6P1VA=;
	h=To:Subject:From:Date:From;
	b=bM2V/VJd7KURdMwgFjaug0hBnQbreTzrgd4Lxu5crNbuiK+Ovu36ROrhX026pqMy2
	 ysCw3JGeMnKXpJ8TEnTAl5WnlJwDWIAqvfEh5iuHnFQvQBj2WWpZdkULnoeBmJmdyD
	 wDqdLOpmqy6uqhRy5VcqDl/WEXM3jwL35BDXG35E0PnuOOHLv5gOKl9KTi3T65bUT4
	 hcY4YCtLW4QQpDttuZg3AIJby+qeNxjpt7G4vm8OvycG/+mp9zS7UXf7lrPasSbXbG
	 7uuL3/uIfIp1nZcZRD14xK8ioSA6pX0LB1Tvysm5Ac0ngrs7d06f4gPdSmVI9fnvwJ
	 aTARTZs/qkN8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC0FE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147029364.8048.8773736123265369062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2155125b58960fbcb790d02b434824bbb36bac9753c59346836ed08590b071dd
Date: Thu, 19 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771470293
