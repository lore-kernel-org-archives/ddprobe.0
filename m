Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BEE14D283
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748932194; cv=none; b=LR1GlpSXx80bZPStxVJ59r7C8BOuXWYtld7DlP2kXYiXcigGBJAlyN34EKOdEzYEl2ity/1nTX80jmPZSS2xUWJZeeO1ecPHwjHzq35xyQo2lAhCJxEQmjdB0QNXdiWb3ib8kMYqkQRcLzymMZ4sD/HEaVqRijgqGUavh30hH0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748932194; c=relaxed/simple;
	bh=J1f4l4kBjlqrSNnkwNnBoZgoBpEEsi0DZtHEjzO4r8w=;
	h=To:Subject:From:Message-Id:Date; b=V7MdwyJt8FmodRHmB93vZefHoAPv/0cZPprGFrYFVzbfZRGiaz+M3mP42O6hy/D26MJ7FLKNkrTIsrWD82+mSsbCJiWu2MGrTPzF5Pyf5n7a1+DhNrphOVfK6dZq5qM2YTQYc40QMURopZrW5Vy64QIuyG2RIUCGzYYLAUI/ZK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5iSvQ0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5iSvQ0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A280CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748932193;
	bh=J1f4l4kBjlqrSNnkwNnBoZgoBpEEsi0DZtHEjzO4r8w=;
	h=To:Subject:From:Date:From;
	b=k5iSvQ0D+UTnr6ZucDKKQEz2k9gNqK/CYYM1Aal5f2++X/o9eTiuEX80WR3FOSmzD
	 f8KCBeCb8+Jdy0bmuY5xcGqjLC9gO+AEGPEw+fxdzjSFN4OtpFg4I1wPllU1WK/Q7a
	 jxNmzUNO4IjCSUC0alJ8Cf2+SzXL8RqBp43lTOt+J5reab+gHLCk2gJxgIfZBLRVQQ
	 vYPz5mzMcSLQ+az7GRJBc5loC0iRosgknK5pJhpjUqo7zeDyfxQyxtnQOQjs7CjPZg
	 8EpQDFIY28ft+2itvAIYstjD3/cP9tx+/FU3voU8c9q67UXAQpTpJFFJmP7REVDPTO
	 NrLsEwsrWfzrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD9C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893219357.5728.4799606979336342875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b281df32a4ef4d371b192bfa449ea35418812449a5130edd335c34b5c4ac13
Date: Tue, 03 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748932193
