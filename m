Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED0F1E5207
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776229654; cv=none; b=Y5gp+UJejhY0PmQcuSmRHy/72XU9GHOQbAPL2cIbzgwVzIu3HMxiASu8SRjRyRwhF57wAbHgfwuN45TOjzarrsw1uJfJNSfvVO/03dwxOHKBm09wtnfDeHeWRYe/3uuFbGzAVpB5KOxzCgU5J0qQiBmknM6ws5nc8n2zZgHQ7yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776229654; c=relaxed/simple;
	bh=CuWYYRc8Ns4BRAyU55ZMZkzHqc5dMGdhEPoY7ph0gls=;
	h=To:Subject:From:Message-Id:Date; b=oEskUypy7pJyj/FA/dnj+6inowaLWwtaBC9ZbppWQaSjTHHt9VOz+Apc7tPd18EPmpp7QN1s4JtC6KZgcrboRcQcBMUqwKdFlrRSu32eajonyRCP79aZXSwGuZjCydC9CVgYjfdwhWE7Y+DM2lk7+frj1Bo/FT4t9ZoG+O7EYmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hN2ZShOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hN2ZShOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B962CC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776229653;
	bh=CuWYYRc8Ns4BRAyU55ZMZkzHqc5dMGdhEPoY7ph0gls=;
	h=To:Subject:From:Date:From;
	b=hN2ZShOg4Ez6sDuuUjQ89PuOfZNOLSL2P+NwQWhIk4KE6JETpoMapllC9NR/mzmxY
	 5K07SJaAG89ZyyTftnuW6jippPJqjmGz/120XvM7jniAW1wkkCpVDzBT9KpSS8cynY
	 hVaR5dwaNbijG5fEHMmG490dBortAiQReX4jJc0vUvipE+iHVgdJmA1hko93DBUVSx
	 0s4Kg4KEJHhUvxFiqR97tuzKWiykj3Jj9JOcMRH7Xln9jD5RSh3HzVypJkewMAFQ96
	 VHOa4jiiQeEG5pP9102ja6SEuYaor38QggOM2cRJPjlqQkrSgrznyK2NUXdOhZHM61
	 VT6mBuGnrac4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3ACFA0C2B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622965368.16877.15012225838305732299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea32c98619b5b59a9e3ea8be6c12f25f0bc218d2d61561ea3c041a6dcba96c4
Date: Wed, 15 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776229653
