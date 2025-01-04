Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304161C01
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735994154; cv=none; b=uGnuzft6pfQ8x1CeKugbt8UKQxOiq/zf2yCDJbUuy+bFj/aiIVLVxPAehXMXnTEnHPUOy8c0yzhZZ+u8MBU5FCxp2xpgoAKA+PR77g/FZxFPxAs7i/VjJBqDPrhWQIZi3BQ+NA9AUmqNShjzXFf/HrJKM+XCzn7+u9hVWK19IGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735994154; c=relaxed/simple;
	bh=FtjC9NPYYs/EZWGpmse/d4dqFS2DArLmLy9QW0Vew+s=;
	h=To:Subject:From:Message-Id:Date; b=l8D60bguP21Stdl2A1R7U9al2TboyJJW6rXVK+4DFmbOVmj2utL8AunrsDXzqwg6rDhBcFh5rJmWQkKqHXRCxn9JsewW6QWohaCo7pTpbwUj4r7SazMxFxcWksDU7r20/+gRGQsUr+bVmAduq2jIzpkh2GeMADywfiTvTuNAAHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwBZNKsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwBZNKsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE78C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735994153;
	bh=FtjC9NPYYs/EZWGpmse/d4dqFS2DArLmLy9QW0Vew+s=;
	h=To:Subject:From:Date:From;
	b=QwBZNKszmdzIasMusgx57Dv47QMzWiinT6SrEC0YufTzTz0ivV0qUSplClauqWnjm
	 Ji0sVORZPRHGS6FS4sGl6Lb90Kw/xBNW7bTTTxHrjXGH6ePCVmC6XybfvxKwVE3fAu
	 +yDAYYqYUKMOvPFRhYVMZrEuzwhDuuhp3f/6FV649Zyb/TNjeCIIL1OIAQyLLLBsp4
	 OqOLJciQkP28//aCJL6abbAg5q2RW/t16CxP3TqwEMYg2QNzfLDSNEk8PcgNpMLw7U
	 bHSzX9/J3Q30e3VbQ0qLZxpVAq4ri+dZEAK0apgKJyHyRZp6Z62hnCasX5IMXpQ7G2
	 /3cE0YL6VDExg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99462E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173599415361.29796.12321874046121831644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e618a56f903b35f6bae5d309af1bd4256608e16f222aee3ae7556bd839f05855
Date: Sat, 04 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735994153
