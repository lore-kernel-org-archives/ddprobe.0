Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E148194A65
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753588795; cv=none; b=diyp7EDnFehfdvbCFL9cenCYCPfXNYl5SFPIk4ZjSteywwuBsRl0kr7C1z2+Sj1ypaTJhXqU9i8nmM5+p9qvoDxqiRYliBZrOMBxtkW062LDRROqeEFtrj0MEvSkDwMau+r971nZVBOwkPHBDhAg/tnUQytsqkfNcAWmdj/tj/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753588795; c=relaxed/simple;
	bh=iM90JVJ3g8/P87T7rYReTKz6jIcIHWXJbwZRWCf24Uc=;
	h=To:Subject:From:Message-Id:Date; b=CHgyDzHv1KbKuwkjnK0d4Or1AA3hHgOKqft2h2m62AWQSuWBh8TqjjmzmYV7eMLWyvMkRXRvfhaN9q0fuxptOJFk9/7xuGC7Sxhie0E3IqQuYBZQUhF+o4ANvwfd7djc0YcTp2C3/tsNAw6xD+ieHmqFI3BsdbRY6bo6eDLC+Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWPlr0hU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWPlr0hU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753588793;
	bh=iM90JVJ3g8/P87T7rYReTKz6jIcIHWXJbwZRWCf24Uc=;
	h=To:Subject:From:Date:From;
	b=DWPlr0hUKABLgqocej+xZr1WkxWpmRyeyfkRjzOrdErRniGEGsZI+K3UdFzYxyvhF
	 88S/J7qgX2yCIoK60kc+bGnSFRqmgbgokVk/iVVWGbJxCC1eQncLmAa3xWdZS9j/xt
	 4FPhX5ULVJtLX2IdKcEiTWD5kA4O+Z/2DLrm/eiv8xMPQXaNJrg4dl2WwnkoHi56aY
	 tl7mVJ/xizcXyNzu5Qkp7WzF8/JAORiewv10fBKiO8YQWvFhUtlkWz2ppaLHizbOWG
	 yD60700fetWg2qLhRHmrY3Ph/MttWLMZqee3RPsNCvA2wFCj7lBTTlJDjhF6EVRf/8
	 9/gFZll28An+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D11C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358879357.8096.15997489204487499941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7fab57c70980a2491eb8007db4ef171725e182add3ca3cbbdc44c3a9b9533a
Date: Sun, 27 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753588793
