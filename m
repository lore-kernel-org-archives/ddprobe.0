Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198C32139C9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779777154; cv=none; b=D10H00bA3GTlUDiL4Ms25SFhEh2rVvFd+mdTmFHyM4W5bBWGrwAYxXSl4Sci47qp0HYLmjaU8DKfsVI9P2MX2f/4zPKb91rCmVwI8J5a0o414jq4J4xeQw5McAIintf5273jOMUv/RxZEe/AOBQ29Fpgj/3hfh+qVzwymyX+woM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779777154; c=relaxed/simple;
	bh=sGuMi5iZce1i5K8n8fdpb7LmRxhx3tc91TCGA5R8Ou8=;
	h=To:Subject:From:Message-Id:Date; b=bYr7ZB8oinEdt2UuaUl5q6viDsxC7qH47RGQYYLO6dzVtsOS61PQRBZUvg/32WTxJGSWm946rMLb8caPwJ7dd51TmS5EeHio+vMpVdAEXxyHvVWmnGXEQ2gTtVqDMFSm7Q4Jm3YaMgc+R9YQbz29wEFIT6VQ5SK5ADeF00nSb9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lL4uHleo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lL4uHleo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F7AC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779777153;
	bh=sGuMi5iZce1i5K8n8fdpb7LmRxhx3tc91TCGA5R8Ou8=;
	h=To:Subject:From:Date:From;
	b=lL4uHleo7cYu5lJbNL2piRD+Z6sDeBZPf3J7ZuF5AeVhljwA/B4ANnKmvvqTP/3Dn
	 5mK9JhS0otXgOgoYH76PeANHaYn04ggbegPPdFvkfme7N0rZvCdyAfTtaccOK4tmbC
	 UO56o4nfvla5I7se4Bqhm5W5U/s+ZQvsFMJ5rehkV7hCMldGwm3WVAKn6hBSkDypXP
	 Tmsj6FtZyg0nHcf69lR+QtecJShQ9MuBrqcmtgoLyznYonbmW+9K3XtDkKY2SX8doQ
	 JJYqrujfr17O0ToUc5JUTHTQ498WeH4Ng2EjYfdkJwa4cDuNhlEY40ssRWJF4+EcDJ
	 rGB0rtarE+vKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E37CD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977715368.27509.16392432585864566947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b437c49562002f2f4fa61d234766418bbc14d41425b5987205a7301c3998589c
Date: Tue, 26 May 2026 06:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779777153
