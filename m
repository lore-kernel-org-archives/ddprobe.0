Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EB435979
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748231994; cv=none; b=A3llqBA9aCh4puGbK59rBteIXIlmp/TfEQ/cMlqBkb6FdY5Gg7Xs1iZ751oVRpu0uvuMquKLO0CAKh2WNnWixhPYKkRGQIbWkRUUBAZL8MMI2uz139HKIyFcolA0AJEvqjJyUI0qIy3BDjK6NkTznMjIVt7HbTse6J/LokUVvec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748231994; c=relaxed/simple;
	bh=EkJVb8T2Ass/T3sW/YZJEdK7NvnTB9qfcewqZmv9mBA=;
	h=To:Subject:From:Message-Id:Date; b=DKtja+F3i9LaatZMknAUlopScPKiypnkYKDCeR5pqIuixOh4tdXKFBv1WmNLIKJsfSF7GcZLxdj00TnB5DGzHmj8lzpex2EGbbh9LwYLXiHXzHoJtpYwza+LQ/+9isnVn9UyTEcAfhBSpqtiWv6hmXYiHel/E4YkREarWhuryyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmHP1O6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmHP1O6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7CDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748231993;
	bh=EkJVb8T2Ass/T3sW/YZJEdK7NvnTB9qfcewqZmv9mBA=;
	h=To:Subject:From:Date:From;
	b=pmHP1O6nLJUfe9rMc8AL6PywyGbFATt28wWK+s0Fp2G2jBXcWK/7cFb5tfbSsXi7G
	 Fw9mA9o9uK4rYElo9lu/8Yy5BLYsHDK1oiPGMwFT/HC0KomiGg92ySNx4ygnw5Th4+
	 Y4cOYZSzQxVJ353KzwR5BvylpyxP+/ptYz5lhf1Pgt7oU4JttRFt+d0ti3pXb4OE31
	 Laxn7J2cDucI23S/5pjBctHhD6ag1SiRlKFC3qaWL7qxeoCSg9x4533Ai7jENu12ia
	 8nZZ2NDQ7/JURMcmcT37MLkGvU5KZUHeSCIgAfFrUiEZpDOAtnS9OQETct8q7iVgSY
	 r16QXQ08qheWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0AEC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823199357.14393.13632050830352381527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1bef7a71db061cc6bc11833ade5a05353e140c6a80c88c640086a417ae87594
Date: Mon, 26 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748231993
