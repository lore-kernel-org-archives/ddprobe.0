Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF0E32570D
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782325054; cv=none; b=cSiP+0By+9VIm2T0DP/8Rdxn86i2Q44u4IdyIEXmiiCFs5IR3VppeSH0fUXID3iBjd3n+48UNIKl1+25G7S3f0kuYBBA7hB7TL283RrRqdGWgirldDQP6uUiJg6kPWjTQgXUdfjLBJ98w7WTMLn6hWWkZNmjnAasu6ozSGo53A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782325054; c=relaxed/simple;
	bh=rs4cMpV4chL1BBgXojQOjxO4EObqttJtiqSeI/HHnR4=;
	h=To:Subject:From:Message-Id:Date; b=fT0Z08uGUdf8FV2mD4JIYUeP5WtdzKMrm37mSkH6Z9V2+Xuh5NA8LrbYm7njPwNsaEzcU3aTN0bmc1RjZ/+z8yXLZuuinM2x4U3+ZwZ+fMsoiXFx3EbC/KUUUn3LBncOS1UGhNQVfuVXYDRWNZoIcwr7vKJuVMs41UlYsgWJMco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2JW9wsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2JW9wsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED48C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782325053;
	bh=rs4cMpV4chL1BBgXojQOjxO4EObqttJtiqSeI/HHnR4=;
	h=To:Subject:From:Date:From;
	b=p2JW9wsSkd/0nZciqzLFr9bJ+pM00dOTEebkUje2b5jRPlmcFkJRU/u5jMDCN4v43
	 onlX1hAL8QUd3IuT0K+oy6lNwYiC1ZwV5mRR/H3kWb5qAnwMFcmyDONZlvSM1x4INv
	 YxImX5tdGE0mlxhWPqs8opXxA14BhPDh/nUt31GbO5l2Ngub3O2jMWajAhKNagsi7/
	 cw1F5+42Xo6F0kEtt0w6VttvBcf6cBMxC61AmUDK1ep2JKIlafA1rhKowJI8if8hwP
	 TjnURqQyCRymMESkjEhPBZNjuXWMaMWzMImLwV7BZeNGzVFrirqCslCzwAQhIeYUjh
	 RYxkF7e0xmQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12E5CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232505371.20324.1108941097900254200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b14ddcc2cc36ad5b16e0538186087e5fb1cac6d1ad742df697929e9e1e9ad32
Date: Wed, 24 Jun 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782325053
