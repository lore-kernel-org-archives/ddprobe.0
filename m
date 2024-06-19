Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA334654D
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718773763; cv=none; b=KYbqu5EV/slEscnDkcHgoFuqvK5TrdoWjD4aYYtSnvtmbnwSsXe6wkWWd0Zdxq6seyb0ZP7vOQGSQETI/8Hp8lDlV45VYWhFw3vJh4Uar/EZ9pEJ5B3xhlOzKZjlRDhEHmlzZPYw61FOkaJilulXG88Vi+BnN7jj0mh3MEqs6jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718773763; c=relaxed/simple;
	bh=ksS3C4bNo8ScfR8KWX82EzwqZSdC2HHmMk4fcQ2qHH0=;
	h=To:Subject:From:Message-Id:Date; b=ouO6Dy2opqde/wCLcC0i5IQqr7VMwvWCL6fTQTjlpetaA1E+RkETVnAgSj1fYr/kgArBTluYUlBTCCva9bRefSeW0Yjt5shfsNjmtD8N2X5JuWwKuB6T8FqJCOztyh2jEpd6gnpuymg5mSLWzM76cP8im6/aWDAuBUlxcMZE6jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaBd96LE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaBd96LE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBB0C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718773762;
	bh=ksS3C4bNo8ScfR8KWX82EzwqZSdC2HHmMk4fcQ2qHH0=;
	h=To:Subject:From:Date:From;
	b=aaBd96LE0ffl08qbErGsfcaT5d0JcWMT9+oiLqPHdrwkDYud6zhgMNUKov5fXFG0B
	 SbxKWQ1UBVGPTbAq1KovGvF0Pdm6pImXJQcVxH4rcPD/9L3QF894NezEZ+r3I3xIw4
	 YXbjwEwTdm4n3F3IVrrKrRQu0siGXDu5nNJ7yuZnEvtcliL1SXq77wsFlAV/FNzer4
	 e4ZrOwua78Xno+2grIJXlHalIDZCusK9T61uTGH758+1L4giqMYrqUUj41yrqZO13x
	 bqemtF5vd0SnwxPaxkp5EkNntyamsMoolACbwAjudvVWp9eHQo408H+7jRsGm6UF/d
	 02Sx/jw0XtPiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C16C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877376277.18346.1127184908958607374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e9ef3c4902ea62884130269eeb2cdfa46bb2ec64956cc0900f6135f68d72f9
Date: Wed, 19 Jun 2024 05:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718773762
