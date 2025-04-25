Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3478123C39A
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745580594; cv=none; b=YQSil9bC/CylZLpd26nVWywiSXl4gfKI42E/rWLS/PFO+Av/807RW6Pq0+/3bn5qJYtXoNXlEKrii5Iub26XVKfTCgwxJex+9zWuktCXkmdc52wPJaqGVPZjtSCYO9zMlnQEmyGj6jXT4Fyoxr1gTxusMWUsrRTuHsnmYm4Dje0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745580594; c=relaxed/simple;
	bh=vC2/pavNHrDqHQ4Q+3FkyG/lmImIvv6u3iUR5b1KQLY=;
	h=To:Subject:From:Message-Id:Date; b=tWw+7b2JgRCtXXXZ7r6xzKMkjxhbccljCM6bim8olZWOxfSOjjkGueKHKI7ZAndJEEGbq9jsDkjyHqnKbfh4ixVZJuJZrSJArJ96BRxjdtS9um+MDfYrF/xS8uSOTWS8+DYRmldPhILGfMs4mZJ0lFkz5aix5fZPsD0M0gzjaNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNRNwT41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNRNwT41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED05C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745580593;
	bh=vC2/pavNHrDqHQ4Q+3FkyG/lmImIvv6u3iUR5b1KQLY=;
	h=To:Subject:From:Date:From;
	b=bNRNwT41SRPjRQTgYQJYfUxg3mP1HWx+nYMRL9mtpEFqbo/ER0tl5AKP2VxqDLXIf
	 vJhV06reL3dGDOtnMzJNNa1PWc018t5BEwk4cYb1vm1hr7NOMJs2f0Uvb3vOuCVZpE
	 aVdSgG6kcOuNbQQUqj+kUL++1GDyaWYkljs7/byELzPgwLnv9fFhEoBf15ZClkdv7y
	 4H1NiAz6tVG86Q0JHkgwIJcLaeVRm7o7N0wFGpuR9W0kP/D8kZ8crB4MpcXMLv0Jvr
	 +MG9BFCILQM6QflDAd8qNs9iEO93cq0SxssMtJMrkoAfmPbyy77Rvc5+d2Q0snShjU
	 X9cq+//8F34sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD1C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558059357.17982.6926001926725187688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71117aa0d77578287602c7579a3d82b42482032b6b9025ffe3cb6f67d69b548
Date: Fri, 25 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745580593
