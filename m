Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7D91A01C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719258803; cv=none; b=WE10XVVfoVmXPuWQOZYFDNxeV4IaAfoK5uRJ9TjcEiBiZQLZUqS+dsWjr1zMgzLFTXStk6deYVarV+erBy8QvowRrqUqFZc+1sI6Z1wzojEoIRm/xd4KmNgB5a17+i3IKIF4zFhbZdCWSS8QFcz04VDDXFanh0MS/wia7/mJYg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719258803; c=relaxed/simple;
	bh=9O39IvOJj0NjDDR6yPCYPIhbyrvvNJcA5RS0Uixi7/w=;
	h=To:Subject:From:Message-Id:Date; b=sRtOkpXebf0+K8qSDgHqZFnR0qEa8ir7NigFhW53hptQdf15j/ua1zV8A7D6Px8ucQJfTKwaH2BKpk7gKVVYlxq5kK+6txI5iQ5uyRkWwYRzNJV63FMVBhHa2cNhoBI1LBrw8fbQQSopS3229rCvK36GYnp/z9/fXthXcwIrl6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1zMJq59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1zMJq59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 037CFC32781
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719258803;
	bh=9O39IvOJj0NjDDR6yPCYPIhbyrvvNJcA5RS0Uixi7/w=;
	h=To:Subject:From:Date:From;
	b=t1zMJq59AE9CTNvECBZkF2Rco7kPERBc23oxiTg6hMtC0r53QJJx6i9DR28oCDOFW
	 GRAcZ7s/rahcRICewPC79GLjuDpm7SizbX89KbMeNlwZR0KfV4OB56e0kGLqJiTQoe
	 QqVuZ2zbXOXR2CDUsNQuz4cyjoYEfwyUzrvmrnj5gTIftKi6sLcF6VJDwJ3eCwuSoT
	 I9gpa3q91mpKKYWj46oNM9FkRIc16HfAjusiCItMxv3KJfQy9PtIqHATxzPAIf7AA4
	 28dzH/NVhanMS90Py8+zFvTgkZg19kkBs0Bry8Oe3pt2FdV6a0G8bKM6/zFse5CiQ8
	 7f16Y6AERO+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCB1FC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925880288.12074.2624912941450897735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c617b34e0fef5a9e592c63f3fd915f4b47bd8f2062513aec0c9e12d4bedb1d79
Date: Mon, 24 Jun 2024 19:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719258802
