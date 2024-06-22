Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7878A14D2B3
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719055343; cv=none; b=CimttkjR9tfY4BIMBIWCkBWl5dq0V94erGzJqCTU8emUbDIuLsze0VHqpEsTAfWgaR9N4CzRy3X/Re48/fMPWYjTYWER9U8/b3k/m79aim9fHgpb3E0pQlXIb3GIqrZQGYe+lCEc+gxV9gBuhU8dc1eBLFkVmJjHtC9HKAYpEac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719055343; c=relaxed/simple;
	bh=SO+wuU0W7f6Dj8uAcF+EpJ0TKncU7uJWj7qN7lve5HM=;
	h=To:Subject:From:Message-Id:Date; b=H0swkjRpUqSqc/EW5cgrxK03N2u/ZCQSuEc7/3WkPuvaAp1A2do4jV+gs8la5eQcnGTnrbJizCWiZf85cML+TVqiWFSlAFPZ35/R5Iz8UlEuKUws9LnFNvVRmCdIFlGwgt/T5HkgWJLy+MVwJ3kkdhH+joCgZo62YtwxlcaCQic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXtK5aMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXtK5aMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEEEC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719055342;
	bh=SO+wuU0W7f6Dj8uAcF+EpJ0TKncU7uJWj7qN7lve5HM=;
	h=To:Subject:From:Date:From;
	b=lXtK5aMOmNyZ8lI8lwQv3sffD3ok5LiVtANgReA9VTY6yT7GX+WCGLIqjbbLk++gu
	 bgJ+dtqZ6R6g9IBDtK95cVxtSEzGnlv/fzm7nkumS23hfb9NaaFUIuZqc4ar0QF4Ml
	 RDwjD/q4IBo8J1pzf94g1vz9xEna58gm75LXy3fx7qID7tEzgey2A5TExdEVM3bbyE
	 7nKKEeIooK8VnAydqFj/j9xf0VSWU0E2y3dyyn1XlrZP7NZwC5LNOYD+0MHAT4J96H
	 TdhCuua7+PcrfaUT547qTOG/7gknp0cIGdV4Br5Httsu6QnKQrIZ+82slXM6AiRHdD
	 a0H7gGPTuvXlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC068C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905534279.19964.13371546485263661783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19176ad6009bcc9647cc2e089dee968f497ebc0d7346ede0f763a9853c73862
Date: Sat, 22 Jun 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719055342
