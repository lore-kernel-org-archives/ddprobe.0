Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6868F36A36C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787426434; cv=none; b=qMH9dWhoTHoiiodvZOutQps+yGxKvpqYssGDGCixbgjhSoL1YWuEuUPKd8DBulLjXQ4jkdpo4xEPBWFZlHOKkncrVYgsZx/LuTkVw7lYMuyFOcwi9BD9c1Pj70mCfRYyiYQgViT28YKq7ozYfZJgn52scCu9G9JRKKFcirtCtDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787426434; c=relaxed/simple;
	bh=APzAQYyW5cZsSCGDG0OEmCuZBvtC3yjJuRP1jprOU9Q=;
	h=To:Subject:From:Message-Id:Date; b=KCpFdNk2/gp+RrSI0l4qAElVdOVIuX0hGdZ4lo3BVzI6PXsNggFOpHimm3LlM8rbw/hl0nyiqqou+WL0VEj8wBbAFkKfWF7Tw2YJRRZuZEa5isUgQ5vtgIlgVqjbi478IK/NEAIxazxh7cumOkpWjDj6hrLSY122vkIwC2JBlro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHHtT6rX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHHtT6rX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7875C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787426433;
	bh=APzAQYyW5cZsSCGDG0OEmCuZBvtC3yjJuRP1jprOU9Q=;
	h=To:Subject:From:Date:From;
	b=PHHtT6rXEJvAc2ibZW5Wsej+IWfmsMi1nseumIo70cvREi54yDAYAABp0lDvdzXXF
	 LKrU46+5wLCzyIwFelHU65zDsVshm1yGD1fHsb0nhSG5sM0d/8Mq+nRK1jUjgB8k9n
	 +7kNJQ4ba7nw5tSb4UpKF4Pnt7mNINDwV+xKYmK10WwXyBsnRomQxo5IupGz1TpTM9
	 epqlsIKzSSTQnsn1LTt0YM7m59TXX9zAl5sPsHavdeRF+BAnR0PdYqTPkJLaMNaHPX
	 vilFb/bvUSrw3TIJ129U7yZm2ZEf2z2U1Ztmt44xcTLA+MqgPM1ac7bw6wIhznOTTQ
	 /obmJvJ++Y+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE81C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742643373.21756.13961530352574427744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ceb2aa8bd90106d48e22ab0e9c2b3d276aa7e0c134d9e6af36c6283b978e5cd
Date: Sat, 22 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787426433
