Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4424017580
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716868463; cv=none; b=Iz7jnkPnd8St0teIxtGokgqLmHCcQlgQbzowEeFK98pPQwePoVXGbtZrWfLBnDiyDalaPB9MLUbHSejwdTWq/4eQqAmTlhqgm+E68UdV56BS1w8emrmdp79MH4DUArzC9nPJmjyw2BPaNfPbjt8t+IDwY9Cn6ELVsGK5OjPiyNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716868463; c=relaxed/simple;
	bh=3x9Y9Ci2H8urX5DPV67ZE/jdX7YNxRvv/aY+Uhb7Im8=;
	h=To:Subject:From:Message-Id:Date; b=bwjE61bzzJ1wBSfaxp+xc7AK//pX8G5SX63tq9qUvacg569IylI6+BX27GNDrFri+WHvW47CXDD7OgpNbuIJ5+5lUJC9XP/L2XwW8Lxxx77BZcuL/1oygdkODuWz9t+pc9nko3L9Ci8iPVoZdjH///RIZ0Pp/Njw7UICu72lXT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oP4XIrgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oP4XIrgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF5EC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716868462;
	bh=3x9Y9Ci2H8urX5DPV67ZE/jdX7YNxRvv/aY+Uhb7Im8=;
	h=To:Subject:From:Date:From;
	b=oP4XIrgW6fDkMyyj9NQ22BmRVT9lg8COo5//I1h3pi0KZVts56bzW/SCH8Vr63+hG
	 GkWuttRvMv67zVSMqp6Be3KDOJKSXmP5ruHHMeSGiYy+1EjALP6aHTXlXnwhIQBf1y
	 ib9buJ1xYT5XbGzpr5lkMoG9yhTwWq9KIYIz6RjIyHB2H4q5EAJfNyhsmm6b6rfLFJ
	 /MbwTndVed3T9Lii2gKGbzZjzA9MVmFmObNZ0iTGhcJHPZ7T3wzURCyRaw11fTJIym
	 +S1uuKJEEjP9naQGrnjVmoYAxOjDlHxwHqUg7inWvSBRtsHZ92T2lhrwbPcd0Z7E9B
	 xvVO9pGs2AZZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDA5C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686846276.5464.16132752860592943508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8133716b9f487b677781990ff06e6f19941429797d920bd5fdd51b13a0a8f94f
Date: Tue, 28 May 2024 03:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716868462
