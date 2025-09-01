Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025611A76BB
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756702794; cv=none; b=lCxllJeCXoacejCii8y//VhKbi9rp5H4ARhH/c4qRQkXV80SV0ZBW/9yXXXaUDdXUVWCtHWcLsJV6vewk1J0hNagDdT3MJiDbdFQK1mxcPBVxmSsfASdTh5DoHwcyfFXyhZu3uJnnm6SsyWFPTdH2YJwR1vU53c6+8ziQeby098=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756702794; c=relaxed/simple;
	bh=tVyrGefgU1ZY+Ab+CpdVgxIUOi6O0mk5LUtV2Kenids=;
	h=To:Subject:From:Message-Id:Date; b=UgqBAH1kf2MUDycjHj9XGj1K8I5ADQgeb4+j25uGKmIJbgVdYRcpe9flgjvVvydNg+yKupnzHgNeQeNJdUAvWC+8AQte1KiaTH5i4rUN0J1u8bxd3hoRRP0gVeL5BFH+/H1VXEr1gpxEWy8fZRNnVvLCUIiVfUnhqzZ9a0VIAgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYpN6d9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYpN6d9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D641C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756702793;
	bh=tVyrGefgU1ZY+Ab+CpdVgxIUOi6O0mk5LUtV2Kenids=;
	h=To:Subject:From:Date:From;
	b=XYpN6d9lh8y/IrSo1xbA2fP8jKshpaR03swoTznjXasN3NU8NVPo6tRSqYiunsDJT
	 igyV4e0K41ROfgIGyi3te0pJMi5B5T2QUp77Sy1oV5kVDf5NGcAmw7MqF7+hwWw5II
	 ATKiDT41vvnux2OHAaZLi4eSfJMbNd9kFQOkEKJVhomxzGIgEr3T/U5Mk38bQmA/lE
	 FpYc1I5266d9w539VHXIgGuSkKNwYggGjeqfHGVFroUi4t9xyeTl+JtJ7PQvmC0ydD
	 r2+KZLMnaEgBzogwM6uTdbp3/o7gcY4pTBtjn1003ey80rxyEJQWmkHFAJFIDyNVIy
	 NBDeFTdBGLUkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF8CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670279357.12535.2539300830337558080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d75001e1df991a4cdf070425d72ea9b0543d202aff62b4071db372e93393d9
Date: Mon, 01 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756702793
