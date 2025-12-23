Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B84130BBA3
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766495034; cv=none; b=NRrlesBRG0plgho/H9uRUJx2k/Hnu6SKkbFt7wFy3zkX6IIHdI6COv2qzyaW3aReQ55DaqumD6hcBw1bh72kyxGRgbU/Kp7w19i9Ono3rfLaYaJxc+sYwon/cSRYyu+uk3bjumnCf+qOKtvqkhzbjTeLIjEOvK8CjvEYHLN2DwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766495034; c=relaxed/simple;
	bh=VPe50ly/u5Y5lSWpbSTSGtLTKi9HWQISuybRpOK1tGs=;
	h=To:Subject:From:Message-Id:Date; b=mwhQ2sbdp1geTHNlp81gsS6kFS8/rhQC1rcSK49Hra7HgEz0ZP97k5BvptEKcRAfD0nQ4sshgPgUANpA50YigO9zJJAmHS4EYOQRwknbm6JXF39fwQ9c0ej5vjStp/TMocYtVjYPUmMzLEeU+5FgwTkfohwOPiSQEN6uS4hBE4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7am5ZIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7am5ZIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A207DC19423
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766495033;
	bh=VPe50ly/u5Y5lSWpbSTSGtLTKi9HWQISuybRpOK1tGs=;
	h=To:Subject:From:Date:From;
	b=l7am5ZIk+y314VaKNiM5qWyuOZLbpwZXMzC1tPYJbOi5EFNZRKAbY4IXAgYnDWxMq
	 2jXylO/KXvDJ4j1TS+V0E9EwhUT/8AKSp+aBCq+WL4MtAoKEDHJb5Dr27Qh/r7IlXV
	 rEoIPAmnbsaFOdJztZUAKiK039CwGz+MUqkA7C+YQg7qHYSIGypeCCEopFlTOYRiiM
	 7JKFQFr48GqU9pXhlS3a5O3kqh6WUKfC2PdAkRvO884XXqaTHSoFcg5yW+wQEq5nz6
	 KjErWhCxbSBvOw7frIivaDbs06vdNnfCYRhhQoZIARIXYZtmLBpvZ6+5bg39lMruwx
	 FaMu6KCdFr7zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB1E6F08C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649503358.5891.1531509731057624156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c193d3f151363595d2c7ae2eca7616f0d27c9e83d75fb84cafaeea39df3f49
Date: Tue, 23 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766495033
