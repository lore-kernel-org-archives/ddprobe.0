Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1273438474
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785438634; cv=none; b=A0Dpo+MzfPCan0pYT1TKigEGzOD1qTaWnKIxV0DfrD1gSvfLrvLTBkNk4KHQ26+0+wnUNszpWF9QnKdMFT0hbOK+pe+Av0SnRCPmjl0Q2wIuhD3qaGGw/lq7QDwklmWVByYvhGeyz6dqz6OIga1XeRwfnBYOk9YXRKGqgFg6WbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785438634; c=relaxed/simple;
	bh=SDTbquJLmZB0vUKAUGJPjCRyf7QEPfdhNC5T0NiczPQ=;
	h=To:Subject:From:Message-Id:Date; b=FSKr9RH1VO9fTCugt0Zvh5ov9ZA2Qpja8AzkAoOGmzeg5SrJjyQDAwC4luNZxrSefhK1NVQF5y89LtfB9BRrc2Z6QY4aLI79lo5BSAZJaQrO7sH/CqGE/zrLeC9S7oRj7ChEF3Jfht6iOlzUUqNcMFK6wwDTCNzrx9pHqGuQMgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmRApbZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmRApbZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B90C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785438633;
	bh=SDTbquJLmZB0vUKAUGJPjCRyf7QEPfdhNC5T0NiczPQ=;
	h=To:Subject:From:Date:From;
	b=bmRApbZY1d6qy79hsZapkacLwR+c7SAAi7TYXddHRiqU4R+ciN/Cxa9kqIxy7WhM8
	 AQmkgxOK4bmZYz7SAczyyrikzeeQI+SD1q89dS4OPhCOnNTnQ3uuYozi1rl3ZNLl/6
	 5+1v+/a7x50koQvHx7vUxDt2ov3ZanbXQ5Y2rGNa8zur7Ew7yujvJtwukrjOqHWuIZ
	 NtkxQoKZJQs1jcQlOhH1odMUkZbH4BVljLsVd6NNzX3zKY3pWCygZfD1x0ghNqZdIP
	 AV8hV85ItLNQVuAPp4kVWTUitvZo8FVDQd7gnFb/FvQsAf/RZcBWwUmBLFnou/1STa
	 Ya1cw/kMO6VLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43A8C5516E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543863372.27171.11472203606730379395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4584778114297cc2b4548de76e685684bac719feb08949c73433684ff8fbde
Date: Thu, 30 Jul 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785438633
