Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3311433086
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747643394; cv=none; b=Wy66EQUbA0flqJTMXjCG7wOWuRJkupquYykpNvFkTBgvxWtRRyd9pzOeuw6/If6U21MT6PhEDG1jp32apBBg4cXC8EXsiMMBz2JPCjpQGurmV/yLKlWciupqa/YYhzGtsmiqjc9aNBAYo30dhLOsH4pkqChutGjg3NKvRtxrNWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747643394; c=relaxed/simple;
	bh=Y2G1XIVr6bRCT63SuodtM85cKeVbOYAhuxtmOxhFZAQ=;
	h=To:Subject:From:Message-Id:Date; b=a9wPMByFrsYrwPeVmxLyJdBzhUEOL0L1jpnukwKUUvbCY4TwItjkUImKPEyy0kmqTwpw2C5PZlg8l0U7EElx7ITps+uZSDAPIr0IRsfNVqSTukEvDEYFpaUUc1h4BcEgqvpGb/FuFi9j3v7GpSorkd1vfhyWY5TSdXd5Mn5tGDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxfiJ3Ie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxfiJ3Ie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47C0C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747643393;
	bh=Y2G1XIVr6bRCT63SuodtM85cKeVbOYAhuxtmOxhFZAQ=;
	h=To:Subject:From:Date:From;
	b=YxfiJ3Ie+AsVW33JqkPxkJPuQNs/Fec3hppw4EV4oWN0XSvl3e0kyYIDBz68d1dPT
	 2cFPDCuGiLmdNzs+xQ6uep2eNY/sSQVnEZdPNyWoS8qc1tfNTDob06tQhCJx5m4Z6D
	 MVUhRpOrmSM+nYubRquGbWBoRHyY7GdqqBFv0pv9eDyvNh0uKt0oHSU+WVSJf8ILBK
	 db4aOo3vsOP5L5oaMprNOFBKp5n8oSHm/Xip+8aWzE/2iphkGBwbxQ6X7ke9aW+Q7k
	 gPuuQePMJWodY4Su5fSGrZOjn2C3GBLaE1asZWguoNYDxXg27WEbS6Nm0LBvhWY0LL
	 7/xuPUVtkDf3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB26C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764339357.27643.12184805465099868968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff46fb65c93bc8996a722fb0e1381a24f9ee157ac2dcc8fb332cc3faa054cc59
Date: Mon, 19 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747643393
