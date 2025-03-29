Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9262AF10
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743227994; cv=none; b=moxD0K97a88eUiecBCa1oU3DbwzXgUw9vTcslQBuLMWfJFGRrN9ocZCPo3gEgJIGdd5msZibpGbMJOHSJ+mZuhYvbjnp3bGRn4HOBS/lIX0bT1TRNJnv3PYeckKgqHyzfw4536ooqEVsloYsAZo19C8ixj1/ckLBJhatyh70pFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743227994; c=relaxed/simple;
	bh=94m4pA4BzIi/8echnSddkvI8iRWFNXCIiQaM6S45qvs=;
	h=To:Subject:From:Message-Id:Date; b=llGlgULLwn5Qv7+r798XhLwb5yqZXjsP7Fi1P/qvwlqP65Tf/xYgH+Ozh0fTtGLg464PuSj65QUHjMkNOVtDyqWLs5R16PWyie0/qdxdt/2434C362p4b3PNXj1MfulMkTemQpqrYzXE2hI1eZeh0uOTyZpyrPWu8wiIFMi1tGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp4A7lu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp4A7lu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C32C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743227993;
	bh=94m4pA4BzIi/8echnSddkvI8iRWFNXCIiQaM6S45qvs=;
	h=To:Subject:From:Date:From;
	b=Rp4A7lu7Ya6XfBa7/iO0c5TwkPP5I8wdpli9OOzQkT4ikv4rdgKuighyYvk0dcse3
	 v9SDgbruHU0hgWOE7Mhfyn4iiXD2rRy/3SZUlVOynraViz7Tc45CV2b4TD2rTNeci7
	 14wg1n2WFmAlYufrS3VlfquC25mb3Pk8dRshoU5g4SSq8D748gOshQj9TmJIPEC5/q
	 vRsdyIh9ySydg4UgbOaBNKzJsomT3lNHBZwcsgxXSs1TZOVLjGzNAlrWuxxNg7vx1T
	 37RAeAjN29w+teBDBvZvFAH8OCpyBoAzk7N3w9wbUbbmyRN2RIFlHWwwnmCSt5NNY6
	 QBZ5VKOspz9JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91410C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322799358.28137.14460658189396647679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7e9ffe7ee39f79b0ab43c3957cbc11e8ba99c392f5042f267ad12629fbcf56
Date: Sat, 29 Mar 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743227993
