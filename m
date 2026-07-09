Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451D32F0C79
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783570714; cv=none; b=p1So8dbTqUCrlIPbdfUNrn1rAYslGde7jJzU1Ia9Hkk/GdV9sC9w2t8eB9zA3lQ5/JoBykoCQ792rms4lkwc9oxXywsb6SCIdq3valLlFVnsvigc7Ul6cHvI2gMG1N42rSTaQQkHOqZfLphQzNjs4CVeestVIIFpUV3twQt0nBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783570714; c=relaxed/simple;
	bh=uZlBrU3vl3oIX8PgOclbi6z4ispOmMdmIXFJU1bUmDE=;
	h=To:Subject:From:Message-Id:Date; b=WwmDsxWX+6cpo6ahoI1rlypUTrVRJ5XICJIeP5KBBaLAzLUSJTIJGzfSzoBZx9G6gXECb6WwtSMbHOUqJ8V5qkX6A95IB0HEBe87hG5wVZil+AQ6b5C0yFp4E8q7eEv8CTIMznEQ/3IWICMaJHFV5TFXN6Rn76vH+8aRpCrmt9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpe3o38+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpe3o38+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADB7C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783570713;
	bh=uZlBrU3vl3oIX8PgOclbi6z4ispOmMdmIXFJU1bUmDE=;
	h=To:Subject:From:Date:From;
	b=lpe3o38+cUByTT7Aqs9gs6r8HKXZQml1WPl6FApBmZyUh9iDBmqlYG4YdZuX+S0f6
	 5z2T+Slpvwy4tBKwjvqtUgpFj/OLqIjEUqDefb0RPlVMmZkZOSwO/rMoEow6sVgHi4
	 /uT/p1c1xw1L9szT/ThCRsvNcA49crNKD85PAYYaQVsrCPtGxZlrkXU72As44gJT4f
	 RUWxBNh+RVoiKAY2CnKWKJO1wvgOLlfRU37MEW6NxuAfC4yYu0AZb+UHGJULRSILBy
	 v79IN9ajK+6jYax8Iq5Y16XhleCajmKUz/eO6//uCJIP7aqZNfHcMm1sA4cumMwhi0
	 Yc4raIVdkFZeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8112C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357071368.30349.3601818407974059847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c1c1b122d66ab335e3f55089b643eb7faa57d861e22b5303db95efe5c29098
Date: Thu, 09 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783570713
