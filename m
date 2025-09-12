Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE9E2848B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757658594; cv=none; b=oz22dSrY/sjzeIbJFj9wR5BF7aQDWNiUsyjH/Y9DBIwG6KNw7S7djIhpw9XIFj3azsrNxHFDBiN/U54F34BMmh6lwJgT2iPpnOF88XeD4MPFMCNwho9Yss2TpLR52UjEX0B2kwP3Y/5veMhHNLYwfUwy2CavmKOlelHDj7Ul9C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757658594; c=relaxed/simple;
	bh=Yoiuy13DH/0bq51a1Dg1MJV5oL/hCHnvzRNrSCBQcOI=;
	h=To:Subject:From:Message-Id:Date; b=SmFRuhd4Dt+mmMhOD6m1op/+4KCQkKLStn8iVQ0GFW7Wx3j71rJU58YMjBvmJxaHTGEnVX7NF8C4mSkMNK1rlW3G2mbH7zhQBOsSqL/DVqNn7XBkP9UuaWkyHLjMGOOcmTQGwZoNNego/sQ6pPuPMEy6l/gsdqgXwzzXUfesbRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR+wAaGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR+wAaGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FA2C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757658593;
	bh=Yoiuy13DH/0bq51a1Dg1MJV5oL/hCHnvzRNrSCBQcOI=;
	h=To:Subject:From:Date:From;
	b=FR+wAaGCHVI7y71LjqdvgYZK1LQ3vooGUPL2sUIf2abjYnqWQ/b0/m51VpNDZ2V+m
	 otFVZShouQbwGogtLQ/7Uzg7VCbqdQ5eiW8rndNI7Yhc3PnghKs8ln1EXY2TItdgct
	 8J1s/Tw2qCqAQpft0HYvc6OMrsL7KwOiWf+kAbpg6YsXP9pRUlsRCUSS3rq8wcOD0j
	 6NAqP1u2xpTaI1mAC00Iu+RpqVKaap/OlC9YpDNU+w9qq0QAmAQRo4KEsffuABhBcw
	 RybdgzBtvTlzAxUs2G/s58dbJvwFWD5S3vwe5+PMe692Uv4iXkesDdyEKy43yHH4pq
	 K5A/Dk8kZTBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92891CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765859357.18272.14022900401105040601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb012113a7dde2edee1ad9e41a18b12c3cc0d5f2adee64b8ee4a7355320cbf90
Date: Fri, 12 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757658593
