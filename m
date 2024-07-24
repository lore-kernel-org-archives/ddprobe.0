Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDB1132464
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721853954; cv=none; b=gQ3XsNLLa353lrfelhZB7dsdkDLNK8OxpPX7/SUfKdk7JeLGA/8x0rMxyUJkT+pAej2EEMpglY95lNC1dHP6pZpObE6CRUL4YVQ7Hu3gq83jVvVkcTXPByg3d/RlDYoz0hQfQAPeuv3hL8riaf14dOPjDhZZqnsIsaJhBiFdmcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721853954; c=relaxed/simple;
	bh=gO8iU/J7x6J0zHxXwSWtS3suDmHMc169vt037qRYv7o=;
	h=To:Subject:From:Message-Id:Date; b=gQOf7hRtqjmowUml4xiAON/xRHflmcXiqT9oy5h3EPPNa8UNinToyUNRLUegpqwsV/Ztk8zk77ahlimYSRwUV8yeVIKAz1dF0op7eS4rhhRZb+fFSZdP+pAODJ+f5qpOJqhOVOm1pvnfLJH8jB0jyPZFcIsxepFvg0orXPMokn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOFx1pTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOFx1pTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AEEC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721853953;
	bh=gO8iU/J7x6J0zHxXwSWtS3suDmHMc169vt037qRYv7o=;
	h=To:Subject:From:Date:From;
	b=LOFx1pTVKYEeHEjpFej182y9N/v4MlDzBd7gj+a5OjwrmeUS5hJMhum86ntrJmWDc
	 FmNZGw+XoczIEYo/a9h044p4S/StSAfisa7dDOolk3M32QrgFOAhQHZOjv1/P3HCtZ
	 ULIvHpoNcCQ1Wrje6ikUy5z1R6I1KE+vWTvlXi73fdewVW/Wr0XNzRIbwWlsXleKJa
	 15FNm5ghRADbWP4GYHY6lSiSC2eotojfhmUlGfTGMJdAksSKHsi/Cuk0wyn5xpVnS3
	 SU6uDG6mvLIVybcgJrRhl6k/ibKXe82c7VDkIxC2Gig64GB0SZQWYwdEFmVHIya3+v
	 dQKD23ymUASug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BE0C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185395364.8547.6795962363687907899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb0ac664c525b9eea6c7a603ff6b7c310b5cf3294484747a0df34304335f614
Date: Wed, 24 Jul 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721853953
