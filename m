Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388B03C140F
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789197034; cv=none; b=PDl/c8KggVVgRGhC3cwUFSyVEO8vzuLs0qc4krceBYXZA2tQ7o0Lboi1mpVv1fuJryHjAhZ0dwd3SYEBjrhL38/EzUrR5K81x4K2jY2NHSRX6PZEKfIyyICLgfJljqAiuw9E3tXHqfZk0Pi+VnAKJ5rrm3nU36gLAQolS0WOTaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789197034; c=relaxed/simple;
	bh=iT1jAqaVcpjKpqqTfJAhAuTjnr/Ctg4J98ncew+47yM=;
	h=To:Subject:From:Message-Id:Date; b=tj0DnfaC2jc3nJk5GEm6HfnnDdBqOejUjpJir/RSaKqGBghyjz28lyHf3PuRJYR8Rk32gl9wen0fZtSW9od22skwkENhxiY5Ern1HLqBhJ/5xPAeOvvXEVidWWeIiIkdj1ZqFRPSEuxDVkc7jPD7LXf4sZTrdKtSIVNWJHQDru0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVJSwY/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVJSwY/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA615C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789197033;
	bh=iT1jAqaVcpjKpqqTfJAhAuTjnr/Ctg4J98ncew+47yM=;
	h=To:Subject:From:Date:From;
	b=gVJSwY/xQVahBGnwPqLoewSm7mt8vzkshBW1tFAips1sMmLap6tsAKThllmoecO+K
	 IT9TSdSbJdlF3Fosai/sThOH+0sNzj21OZRerO+S2KZUqy7l7F6afAoJDquj4nVZlo
	 EWZWBFBbNqV9TdboT54FP6zpPsDVNGv6C4iLRZOKPVSOLiPQD4ZMHnQOI0IvyU/t38
	 V+LRdiL4TMyFns71RAOq8CMpU8aVWR0vBh92Q0FlDhdfbgIbm1PJ6ysXo9Td4VjcF6
	 MQ+WeiXtvXqyLhXs09U1R0/czl7wr9Iht1H3o6VEJbJyfo74gxSthVJRTmpdY4a649
	 mNg/nNhffzHHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B82C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919703368.5319.16651900598803407466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764a8beb9cf6c21edc493626a5b2232c67fa457cd269bfe0ff539b12e2615efd
Date: Sat, 12 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789197033
