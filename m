Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F1D8F4F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705559297; cv=none; b=ALfbs6jBB7YCrz9jM1a7qYriT3EaG3gqbj++iyjEhcAw7cJmCF+DjV42jGfJ65fJTQwM39zzMcnX5okGxJbrZKV52qzn1jkbYNyfuWd+SADO03wptKu0A+3RaqKVKpFu5ZJ5ByGOYippGyTC47tLzalpPIY3RKfrg+2iIlnxuPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705559297; c=relaxed/simple;
	bh=njGi8ey+ZpzcUDHTHmfeEJnO1HZ9h29plYQIVacgY2Y=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=eg7bqcT9WP53wxrsRnKVHa3wMlhYFywGcm8IHQ0CpCigWMS4LffXi47NLZoM3Irmf1x68T+yJU4KN0TsSd8PfgVIffySJLae+CiDzijsYkg6Ui+gO+QOI3GlsOnifJ3FP8mFRm/J3CIgRfyk1CNxjkmzz1WJI0mZtSMKv7ffgW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijJiLl2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijJiLl2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E7D9C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705559296;
	bh=njGi8ey+ZpzcUDHTHmfeEJnO1HZ9h29plYQIVacgY2Y=;
	h=To:Subject:From:Date:From;
	b=ijJiLl2ur7fwHRHbKsESjpWjOY0CPUxB0bZqiZ/nULBsRN/KaKXXLFcWgiKpsXgLo
	 sJWvZKWqmO8OHLL1sQ964SyfhA7KwvgRxKk8xv/BKwCjWnmK6kpTRFG9gSjMPcXMLg
	 rtaMZsNORlUo3IdFOQQF/rtdpXaVd13PgM3aJounKxPE7UIERkXq7Ra04pAVDXH71o
	 ELoNqqktuyD8y4WonFbTUqCjPMbRFwUPbsv9v8shX0zZ24+O0u1lkVRYxclg4YPhXf
	 /hcTGPjyrGSbMYN2b7AhKidNpNkE4+TV6OFTu6PPrOBlgLYlCGUpCB0aSg3IIl0rSo
	 9c0OZa5K8Fu9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FC5C47077
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170555929637.6908.11890316433319748445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438ab2f20dac9e37a29491ce3c1c4ffad0e4b9e05f5ae0dd66131a5221ec378e
Date: Thu, 18 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705559296
