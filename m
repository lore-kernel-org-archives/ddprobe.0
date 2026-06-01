Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C55F27703
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780285474; cv=none; b=Q+a/JdweUr7ZPuJbE+BXlLO57peymrbN6zvMVzm611XniDI8Qj/NRUtuX0SdiZKq3uxKPJ5fHVqL8/XUKmfcwiE/deiCxWheTZDBapaDpGEAze3hUiFJwmosWM7l47WXp7b+9EJZTUsn4PxVJ8hV0w6jx4oe5VYxzprmxljsndg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780285474; c=relaxed/simple;
	bh=BSJPJMAQD2OdyGfsmBjnH50P4eQezH9acYpu4oGibRs=;
	h=To:Subject:From:Message-Id:Date; b=el+I6XrAm8pLTa+4jGVU6EpHVQB7nwP9RKI2Jsq4Ll582CPRRbDiceLsnxxar1lkOnqGUKgYXm7auNY8ur51Er1yZDmZj0/bbKHBO79dbhKRIvQASp2f52Zghi+ACsKYxH01ReUfJ6hWHlTaptpzJKsAHP01cfoac4Y1AhNkkiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8cwj+eX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8cwj+eX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE54BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780285473;
	bh=BSJPJMAQD2OdyGfsmBjnH50P4eQezH9acYpu4oGibRs=;
	h=To:Subject:From:Date:From;
	b=f8cwj+eXv0Hll9J1aTeU9Oa+QP9V9MvwQCuze1zKSRLD9sWsJIinN5vBkCSb/oL29
	 0oRrowGyT2tONLpurT9ACjtqWjBAXzPlrW9McAwkTt1e6Ee/a8PRdFp2k4iLCuas4d
	 jFso0wJufDy1fUAzOiKDLUFml89pK3hoYwfLHs6gvY5Wou8iRyCONW85/WKc+Eekb5
	 ENzw2/SsxRurjbc/ifC4RK9DcAyPTBhVHI9qSFMENAlYO0MYF4OjP74pylK4mcoEO1
	 FhKQSwmhyVDaclZWIlK9YJgcBS58R71tj16ROntohLsbcGkbPMGGhx7WIIA8CkkbI6
	 Hpy4uHZI6VMRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8CACD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028547370.9826.9657218347249217228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e959c63473d1f678652d210f50231de25db936aa31aab1c02faa3a8c852f635b
Date: Mon, 01 Jun 2026 03:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780285473
