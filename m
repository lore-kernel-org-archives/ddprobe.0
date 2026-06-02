Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC183E2747
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780405474; cv=none; b=a5D9Jt0W8goaqrdNjQyVUUcCit+KK1FCsmpd21MFbf2FVEv3YC3ZHfLGNXcMti73o5+AHI5XIUfSwHKmQdZhPdjMORwNSOza6KTIczkAhyPJWLb9lcBi7M7mTP+UMU9F+sAeeyaA73YHOVSLkjIZ8IiLnNYkxk3Dkf1/UJgeZVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780405474; c=relaxed/simple;
	bh=HrHG7hGKmh5kRTEcP6ZHhA2sltRME274tICttlGQlVY=;
	h=To:Subject:From:Message-Id:Date; b=MyF72JMTUp7VYWP9tn+0gk7ytKpYO9dQ/FwdPwXgGte6sfICiEnn0aNkRYbspE3MMf+BuLcVqX4hR0KIco7tSsXRDJRovE8+pkKCW08WiNXdiRumiqHFOqUNHA8Kitlbyixl6RIm9PiMEXZZ+XvN4g08u4Zxe4ATujk4K4XZB1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPNsW65l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPNsW65l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C07C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780405473;
	bh=HrHG7hGKmh5kRTEcP6ZHhA2sltRME274tICttlGQlVY=;
	h=To:Subject:From:Date:From;
	b=lPNsW65lrJcboXFraSJj8xlTvZldQaxIf9vbE9gTnt7ToHSC+1rQ86y/Pmd2Ku8Nx
	 bPXqLISmZwtHhE3sROe66BgDfpR9Vuk2KOB9hWMK+gz+N5lfr8pWRT+SjxJMPY0Q7I
	 WF/MniJDYX2JCBryJFDFQlILBsaOgYb36jh2J/gXa/H0VG1xYJdp3ZkynPivYuZotW
	 /mOEdedtqHYGsVldSAHlrCxRj5U5BnqN3vINf2M/nYVAHtLQDPY4K/+PkgEb2V2eEj
	 DUL+dnF9J3MZfXa/iLEtwokS1/7tj4DDbsZfTK6FFb7UyiFBgv+WITsT94E2zvABwK
	 /OaCREJG8f8Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF0CCD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040547369.8294.15597579753533145549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b263018cff15077d18707f9f41655a8f8024aab9ca5fa43b2e7b3def8fb247c6
Date: Tue, 02 Jun 2026 13:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780405473
