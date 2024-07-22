Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149418F70
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721664354; cv=none; b=KCvgfMM2cCMTMa8HuQHfi77ExGx5DSuFvddpb0C9L8Iqs+S17SX6eDtIpd1PoCCnMOcyUHjnpVT1M8hRlgmhOxBpNVQxKnlFmRUgkuoz/yJuIWRZ3cjy3Jky/7FN+4L5m0mVh2kyAdyaxk+aFLvlLx46cY4LfHmkEYZCnXub7Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721664354; c=relaxed/simple;
	bh=G3BdUbN6s+Gr+irQv53BHk3ZDqViG8AllElSBvKUiVk=;
	h=To:Subject:From:Message-Id:Date; b=YrJFYcTQEg1fhj5ROYy87ePwEiVcVs8HAj3lxZVd47Vx92/BZH3UEiyx+98HQvksYFU0GweknoMCcNjwGSE02bQ31SQldtn5tR2jpdNhUU30Juyz3S3jx4yfEKFra1wbmdBhseUxiVZnAZ5dGMvGWDuLrIiUTk2x+AjJJ9Txgy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuTCV4pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuTCV4pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF76FC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721664353;
	bh=G3BdUbN6s+Gr+irQv53BHk3ZDqViG8AllElSBvKUiVk=;
	h=To:Subject:From:Date:From;
	b=EuTCV4pvyuRLyor7L0Lg28XjpWhb2R1gYvZamkvS3aZEf/3fLD1JB5fjwfJnuuZI1
	 MhtEvyp0lv83LsD+aWpNkE+0qsYIW9Tcl26xePlJlKR6VvK+viXjNR6gZuODQpgdOH
	 xnxp5VkhLID2t7hzBbQBoxiaEqxddDDMwyr0lmkMqxrby9FdCHkTSBNg0ATHj0R1On
	 kdQZxof17r91+3s8sRaRbNsyed0N5jSX5/+qsx3b+33IbXyn7m9l1c1OwyYo464El5
	 3b+y/ZWYNTiT/wy/ThJY2TcuhrFzELmHXxotm1r4jrLvlHq7uz5rYQeReUVjyyyIeN
	 3skE7UI8BtKow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E37BC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172166435363.13401.13365893230735248541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cac999911d26a824a94380211994747d93b6f88c02f3826149249275d689cc9
Date: Mon, 22 Jul 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721664353
