Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358A230C164
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784758774; cv=none; b=KdEFqU6B/GlUtmeHr9Nx522DdypPcV/LyR3n/2Sm82/Hd1XThGr51MF02kT3vZ9QDjHm2DbgQfr2fKxXYE4Ug0aq04RwwaNyfy20LsjBw3izfsFUyEkxfueJx22oj8hStntPY5JqoGstLglK4havxouJiOAmpGWXXSI3zMXJYUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784758774; c=relaxed/simple;
	bh=4YcoUQ7TcAvTvKLztRgyh4I5Uwr1K9dSdMoQkbMgqY4=;
	h=To:Subject:From:Message-Id:Date; b=Vdz4vJVD5JEJ6UMsyUfc7tDLzgOD9+0FrVgf4os4nkNlDrZ2VklVFJ8OuQPa6gbgQ31Sh828X0CoT1nkPcqxfWDt7NS8VnAfSZgZh0BWsw3EZCn9VlfbN13gwvi1r6QfBapavjeu+5f7Ybc3bOG2QVbF/i+iaEQAX4g16APxXZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlWndFAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlWndFAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6546C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784758773;
	bh=4YcoUQ7TcAvTvKLztRgyh4I5Uwr1K9dSdMoQkbMgqY4=;
	h=To:Subject:From:Date:From;
	b=TlWndFALawCbRtWvfP7b2D/xJ9u8slwWOTNId1JHizpCaGtMFjMAYxVB67aKGyxEo
	 jBlxKP1Dr5YNoI2j3v128kLzV0y5qruGWnO3ksvs0HYBAjxl3Q7KMZ2MMRDEAt+85z
	 AIdAsuUolHyH0w8D58vkjYSWpffWEsMLbhovBYxLmTPldSvJz9tzkWlj2YozVddDAr
	 px6qVmGHFeZdugaj2VDY4xpuhCFZaxfSW4lsAbwsT+hVsxfKspEc17cqGop5TpYX8n
	 KeC2xPbAfzs11Q+W+UbqYyoJDYGPoY/jbC1QkKCnaPc04WTk5ZB+NANsycOhjjPSsq
	 Skop5h+C6pwRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F2FC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475877370.13906.11074192495261248743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad22f8ad5a1f6600c5d76779719140a9d6c3723d4c139c4eef2eb95f846d1d3
Date: Wed, 22 Jul 2026 22:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784758773
