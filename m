Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC563074A6
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756910994; cv=none; b=f25LHiRRAyBubuOkNc5mGEEnJd1B01pC+Q/vzqxyn4mDDXmdjbFgwCiiB7ZeXNmJGfksaXqBiBMYVQK9sRCz2omU4py5I5wyz6EA7cZC+aztyFQjEhzJCLv6Fs/VolnA6W3vXpSUiyCPgGMauSSL/kHEM6HStuWU1BuE4crK1rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756910994; c=relaxed/simple;
	bh=PrLjZE3ZCdrUC3AbdIgOicsxHqe5WwXg5JXUX9a6tRc=;
	h=To:Subject:From:Message-Id:Date; b=E1Atj4bwjU0YpEqCzZPt0scG3ue/jOiUTBYtX3Na9ZaS2bvTrTTQB9LrDzIizHtXSJSFVhLOMVevJ6DhSsY5jqa1rIoyepRrkTedMYBjpO6Gq1VbWh0lDHe2Qk1v7eDgLrXf0S+DXjsN3dun7FyGHsfAxVxILWWSJ3u6wQX4EiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGW1cRWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGW1cRWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3417C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756910993;
	bh=PrLjZE3ZCdrUC3AbdIgOicsxHqe5WwXg5JXUX9a6tRc=;
	h=To:Subject:From:Date:From;
	b=HGW1cRWCLyStRIA/iy7/J/10z/78np+MUU5BSFsmWPtj0upk1xpV6qjwNnQPLFgnS
	 EQYjAgXacQMlMqDVT0GwQQT62BKmaSRF4yM9mTgOrj7gPNZpz7+x3ZeyofEJO/drce
	 Hmo80JLQ5zdIQh5Zfv8YmVDKrqEpB1dl9fmJDaGUYD6Ln2ubBtynACJXfNkHTwpqHf
	 qphy7EbehLlRbLOhUspiFrzGQwUnpMTLNfGqa2AiC6I89tUKp9iMqyTc4nUIQQljV+
	 pAnxpMpkzkiPZ2+Hf3z84QwNEzViJd1AXJtrmdONTFLSeD1hvlQBYr8GP1F44H+WRA
	 eG/7j/riiSjrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD06CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691099358.18978.9072188134482324392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff89ddb3eeb7acb974ff157834eb9d7041ae7b148d555a1de3daba300435a6ed
Date: Wed, 03 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756910993
