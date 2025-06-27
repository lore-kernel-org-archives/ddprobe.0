Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260E729992E
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751021994; cv=none; b=RSkPhZ9Qng1InY46MYNCkMsLXLqegiyTj4OSkc+k9e6bqF813OarDv5f3Tu6wAWwFuihR21GhJFfIb+rCcC18RNp19VRPSt6HmJFupnbEpOxxljIP7fyWEMCV905kd9jzCoERvHltqDD2v/4pyEVEXH/s3blZMZHYmoEbHYvx7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751021994; c=relaxed/simple;
	bh=zopYwvWSeBCze3OHUQyQfAbu6wS19NicdQ3P940NCaQ=;
	h=To:Subject:From:Message-Id:Date; b=X8eGSd+ITWdjeJKyRQwem2CQcZC/QlxG/4+Sj0Qzaa2oJRorIZsa8IpjTzJLGBgtVitdjtdClijLIQHa9HFdXd4cisaXIc8DwzL9PbtMeuW4Tj0rzApAETIfYYmD/JfMKpgTK6LE//qT+qVyFxKHSFMm/VHRe3v7VtwN0xxOrA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCMOFbat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCMOFbat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751021993;
	bh=zopYwvWSeBCze3OHUQyQfAbu6wS19NicdQ3P940NCaQ=;
	h=To:Subject:From:Date:From;
	b=FCMOFbatW3vLi8l5GyQhBUbg9egM5StOWtB8gchYoCRa8ZvLtuf469ak9ZdpBPojq
	 1zxqMRlWgqD0enCT6nTvHGtRrku2tO3tZ0gSmeJnalFXX+AMbP8Ur9pJn7q0xdXj8M
	 TThUfN/DXqhF91Oq4NYzbSiBWh5ALHM7C4cNaxDNkBtIbyHRBGE1O0HQ1cgdLPpxHQ
	 8HC2aa2lYb6HZvNpO8faSaewpJ/EQ3up1kyPj8yzdtpo1P/iFNfsRY8h5EpU+t3NJw
	 rLAF1MT76dbpCuvKmDDQlbFmcxEkbXhQpScjy0PK7gGHCyzmS6+IIRs7vN4XgeJiDI
	 GcBfOegiF79yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB6FC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102199357.9216.15166949196933900531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd22764b742de3b45ea01da0a2c4958a83edd3b7003e90fc33664aaaf614799b
Date: Fri, 27 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751021993
