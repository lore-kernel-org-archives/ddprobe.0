Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3CA4A29
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744530594; cv=none; b=U4FY9iKXE99e4Az/mM+lP9vAojvIXclm2UynB2Z4SMrkRpemisJnWKeDztk0Bhl+lQEOXF/mXtMY+H31xObrvRO8Zu7YD1Ka2TcTY3+97EDfyizuyqk4ps5E5FuTDQ8E6lvOTxsa0jB2DXXwUg2gO73FsDVFeK+okh3bJ+d09hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744530594; c=relaxed/simple;
	bh=tKK37eQ1WkfreCVdmZynIN/7e7g0Q0iehMxgs1C+pNo=;
	h=To:Subject:From:Message-Id:Date; b=PqKvEkDTPA0shUuFdH6ETLWGlWIeGZDw3NbLxDlndT5KM9xmhxsqnY6Zw00ZS/Hh0FHbDS5VckecK1oO/73H23GS8m4/zGBjSt9ddsyYlSCuDYYXHFEf4U1JIfRvui94q8AMBn/rDcoha2zc4eP2k9AV1rhZzgWASelCnOS8haw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQe7leZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQe7leZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A610EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744530593;
	bh=tKK37eQ1WkfreCVdmZynIN/7e7g0Q0iehMxgs1C+pNo=;
	h=To:Subject:From:Date:From;
	b=SQe7leZER4kdBHX4ORtVPdmzAh+XAjsJGTuB5xy2HRSc2fUYcDmdVMVDKbiPouMgn
	 AYpujCRvLacfLtQwaxx78mo0uJFilP2cWJKrx20EfCMsVn/ezSq895RCsibXgDqy61
	 1Dr9G18EK+kKfcIySkvxA0AJzgPJTw0eWsXBkkra+MikhLOF6GJN+CWtkrFIxdh5eR
	 JcDw209gNNcH74xRABs7AUDsb4o/uHt6augjn8cL+oQRIGgvjB9G/RS3/tGZIRAfx8
	 nWLtTAVmLQ0EkLGPhYpqUHj0JG92m3dGs62k4JzcJQ3dozA7ce7nsFM4IoyVcZVwXT
	 8ofZ+iEiyhEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DDAC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453059358.30175.11323988135856997326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424cbf44a06b21460ea8fd4fb07c523f43be87c5c1a17fe4934d16d3f004c531
Date: Sun, 13 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744530593
