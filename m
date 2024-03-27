Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE8114F11E
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711566497; cv=none; b=W8C68DbM6DxoAsH7xVKvBC2DRAeaP/1RJBaVUdDQny0sRalU72bDsiwYMy1gQ+Sgo0E98zj8izZTc4o8GIVPLaAsYtAT9X+sDwQxMW7l5cE9zD6EV7MDOu0eO0AF1ZMQiNMBq/S/OoWtDfctHzRH6TVenGk9Ubzb1fJ6ASHfspc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711566497; c=relaxed/simple;
	bh=S50ylyY1cRxQncksPdcyzi0jWyowBNmudx/5Z+Nk07I=;
	h=To:Subject:From:Message-Id:Date; b=UHcFlUPuwzyJK/e82wp0JWSIgd0gzNe9U93G77mzkkE2FNDAL5QYfWVsYC95SNjU1bnDnXoly0q/XYLb9LnN+1XZqWkGjul+ZZ/TegViRlEv0wiyZqiHTWSHTyvLgG+aI3jA94Ae2990iadE5/EV+2G6cERy1u+8QslC/LxvQ7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYNz1tZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYNz1tZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A56CC433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711566496;
	bh=S50ylyY1cRxQncksPdcyzi0jWyowBNmudx/5Z+Nk07I=;
	h=To:Subject:From:Date:From;
	b=dYNz1tZLitlaFXz3rcpiO/TCv1b596BZL5hz1yO/WGnI1rXJfaS0UAIV6qDWB3hEK
	 JdyRjv+AaNz0qIF3SkxhWJSGFBNOo/szBj6Le1IndgPTp6eHMaP9PAuVX1uYwKYhjt
	 SfGVgBWFUEAdZiYAyiwLZzJOvl2RUG+rPaDxiSCvPC4UT5M2xoDz/2rpjH8e79rdBv
	 IR26AZY4z5huXuodMCnT+oLpXydey5mBcPVORxZREY8LrnQ2ohgTJ0Bhfn6TIXg6C3
	 OtdhjGz83VwyIgQeNQDBtQR7yF2oEGdWrW6sFqVRruFVxWJ7/z2MOQhaHOftjabo5Z
	 I9Hm/UQV5eaeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FD50C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171156649644.8933.4080387189333403782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7de06a056617765a800d901a9e4c82fefc9fd4390825a4f4c64633dda738bb
Date: Wed, 27 Mar 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711566496
