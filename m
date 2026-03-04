Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11517352F87
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772592894; cv=none; b=Azmry0/l5CGeV7PKrX6BYSZX+BSyF2PyoM+id5w+Y2RM3D6dl0XuvyTQI9Ksn3j54XKOOEHOn2dDMG6Z4TsYugAtq0RQD8oiMHHxWmyyvgZFeMG08l3su748ZQv0GZW3O4nOiDwiI5o9MrSMW33yCn6N6TJjRtP59oUhKlPDHnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772592894; c=relaxed/simple;
	bh=LY4bTK1QPkQhRKodfl2pj067lptQ3O+Q4284J1YjCNY=;
	h=To:Subject:From:Message-Id:Date; b=NrEKysSKpdJd2bMsew5GIvwc45bZZ/Lv2x8hdqEUikbbeLC3oORFS6PehofQ4jA9B9ROI8BitxSgBLeA4IpY4AREznRsm2j9GTP/pY5aatXu0dErCcUqWihT6y9KGh12ugeWWNBpWBx9Vu1gFSFh3V96+HZMB+AAIzd1atBvlOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwOrkdFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwOrkdFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F24C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772592893;
	bh=LY4bTK1QPkQhRKodfl2pj067lptQ3O+Q4284J1YjCNY=;
	h=To:Subject:From:Date:From;
	b=HwOrkdFC45nD0Ow1yxqsjE3H3YqI6u5ggkosLA0O8ZgTyHptVnGhOBix8PocN07KF
	 Wc5skX9LKFgm0a2McCcieG5PGMcTtXzWVmoPVYMBjic9GyDWfWEc6umwjO2/stJIl/
	 Yui2Y4mfJeW0k+N/q0OgDKIiT1N2I25HUrooK0VEV8yMVdyuiScAmD4lrJYG1H+Dgn
	 fUXDMclx9v8oSNsJEhQfsPOB3NpMyPJMhPqQWHYf2UwgOa4fJInGjX2wWEzxejZUhf
	 cDMeh/+bLyoE9phALE2OgyOhtAcOyUbOo39Oa1wfj/WSbhcXIIUhHvMVscATs1CvxP
	 RIMB2oYUEv2LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9291DEDEBFF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259289359.16663.1880796790666194082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cda1a2a7f0f53d4c5e455177fcd2aaba81310f2e5774f8f6a9b37d8912df27
Date: Wed, 04 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772592893
