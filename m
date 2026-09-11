Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BFA64
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789085434; cv=none; b=pOm4RkDX2lYmoSkDPvpFNAAeW7eNl7hJTPBsLbjHL7lR5JOXTkb/nwmSRq1OCvezN7ZviSgpghztfT7afasIM5RDXHe6xYhaFx+1WxDI7wBDBpO35vX4rLuQEqif+0meoVjeo09xNkreb/eVXTUAnzG0f+DYsZ7r0ZZao7GXEzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789085434; c=relaxed/simple;
	bh=prYU8oosNPDqxT/q2L40jRqsbI30erB8Ral7hErPtII=;
	h=To:Subject:From:Message-Id:Date; b=mQTBFMOGTQwFziFC172TiF6H11KuOV073+E/UXuZyBovLp7vLWTOYfiTHkYMLWy97lZfaOjp0u1gr0jovJZ1OpEWVfH9DH4Yi87CSBNJI1Ml3v7ru9vugiJo4WkHN/fieHzGPYpWvyBQZn5224kqnzZ7ZS3u6/HmPUFcy4n+eGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFUZv/AP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFUZv/AP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61A1C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789085433;
	bh=prYU8oosNPDqxT/q2L40jRqsbI30erB8Ral7hErPtII=;
	h=To:Subject:From:Date:From;
	b=iFUZv/APuXYGDALy+Fs4KOHL4xjEhx5c9k4JhhRWe6ZOZzL3chxELlXqZQHb1XuKX
	 Yw59zIzuLJ14ODfmo7O0nV31ptziw3hDxHJawxnr+wVmvvesHiTFrlhDJFUo3rfho/
	 HmYhP5ZdTVG2DBagctv11ytnHE7oBFis2A3YTBtbkpE6g+l2r2a9s7+wrqbgxGJzbX
	 56cgwC1EXBtuxlmgCXpA2h5L8yAV0G3tzTHpLU96N/rQ0ZpQHTEWrmYyUEHjtbAndB
	 K6PTRrX1KHn18WeQjnaHX2QqdDkf9U3xtymX0VzSW5tammJj28R86ZhcuveAbj433S
	 qsoisox90k5BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC701C88E4A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908543369.25540.10526038129225972604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2fa5d7224eb6922f55b344a0dca70e9e655e97ba2cc235318e774542c6896ac
Date: Fri, 11 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789085433
