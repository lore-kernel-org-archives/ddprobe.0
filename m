Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8172FE596
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760120995; cv=none; b=Zs9FtMq6gGR2TTudo/vHv2aw9giaCYVB9R3jxHAPmpx3o90ryBfqUAg7XedjREDyHqaZJsc81KwU+gcNHPeLpsj7nKOuPc9RdLMSt16sOj2LKG1aVK+ZSBys9X1yHMytdgWrxceeq9P79LBuk9H2jwv7OkXM9U9vkT3Litn7+rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760120995; c=relaxed/simple;
	bh=ff8yVX3NCrpyhYscUExpP1540ANu6xNGY7E0KmixywU=;
	h=To:Subject:From:Message-Id:Date; b=hJtbvPd0OQ9ht/inJLMRLTb/3h5q1S6/VLg6VfroTkZcGTDHsahdNY//8pdCMA1EgaufKzxEGOKO7KrGXUH6tREncRGzaBC9/sXlHPkDwuVYUALlYBOBzZwTHr7ZwBjZZU5ahFdbLsPC5p75mUtRwAYDdywfAsLqOW4UrHhYvcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkhFMbyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkhFMbyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C01C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760120993;
	bh=ff8yVX3NCrpyhYscUExpP1540ANu6xNGY7E0KmixywU=;
	h=To:Subject:From:Date:From;
	b=BkhFMbyn2Zyp5l1qMxBfU2oJsHGrnvgcffFeFlbly/O9Pwlpm5hk/wuOGacl1mC7F
	 WuhBDi8CRcMO3J2fEuUg/yvkXkS5jKUh3OV2esQoc8GmylJ7C+i1Pj/mtIiRQzchEw
	 syLQp1Iwm5R8L8pZxB658MSiuD2icK/1bAYc3gm7TXL+6Cz2ZWe3zfCTJZHpOl7IKX
	 tMWLgV8ozxrIB6rUYyJV4a+tqu6Yql78xaCazYGj7TU293sH6ujVpC6++coeY0saf8
	 106SBOvjRw6S4WhroulLjBt+m5qpKIbchlxBkGO2KNgNApRi2eXi3N62BmB/YunpOz
	 pwm6TgBt4fcBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90814CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012099358.32140.2028558286680171701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e5fb883613569f43fb7bb92c635277b7ac403cb1aa123c1dfc1ad0061055ba
Date: Fri, 10 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760120993
