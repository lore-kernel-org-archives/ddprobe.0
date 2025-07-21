Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2693C1D799D
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753064395; cv=none; b=dyJosjzgNYz2kqxKPlFM14Y4DvDOYvqGdAUbnUtlkjcbk977RWUx+su1oJKaeGwGo5Bp7bl9CIlaqmyuQiPsVIV2N5wD9YFQE7gv9PiQtSjZwmtpf//pwk3LtXVrySr9HTRjQNuCagL8jFhMIxs+Aiz4IFJbM2eX7O5SUYoZTJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753064395; c=relaxed/simple;
	bh=eyeqQkGmn4ss/R5ap2z5m2yvIkkK3cNL5kwMw+EF7/Q=;
	h=To:Subject:From:Message-Id:Date; b=dOymHkQsaOdqfUvwANNNyCm6Jr/jsYJWAPw/L880QJxxHDa7LxUyA8w6X7p9UpA29VD77sol0l4QGy0wR69AiOvOGoPWR+ps8uGSM6+imKfGY5Hxhln0BGdDeUZOKBUPalASJiYWvVWZnWjr/gxn2b9TNj/A6sY5hUEMHjCYaRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjIbUgVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjIbUgVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2445C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064393;
	bh=eyeqQkGmn4ss/R5ap2z5m2yvIkkK3cNL5kwMw+EF7/Q=;
	h=To:Subject:From:Date:From;
	b=MjIbUgVbDGeMtSXXy3xu2Vw/bxs/y/pz2rkI4BnzwLQ/wifX41cy858h44d11WsgM
	 ya3OLy0up9jCRj9cZXq29ZN3OSHEMTTocyOzEOtaFW/eZgbYLuRpEE9a/Kz0RgHKa7
	 3Z4JSpIfrK39jRCR7PpIbEYAV1N6HRlk7zXVrln0CmomU0m8x/qqcVtKoJ7n9C6dOw
	 SAulLfICn4OJp89JDLhJbbBdLZnXAd1FbSzka2KXmLsmgzmQb7Q4F5mNrcXlAWjjvo
	 /HW64kIl4+uPKqfymDMveIs1H20+lga1Zp7i4GTzSU/q6DUhLw0K76KF3RsZsdstP+
	 aVulry14z6UvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BBCC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306439358.21671.13576151176167865406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e4289bdf4d4bb83afddf725f765f1c4de5ef055b3eb5b1c9c2dccad6ef5a94
Date: Mon, 21 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753064393
