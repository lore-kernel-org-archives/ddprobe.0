Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7477485
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736392554; cv=none; b=nEqwZmeXgb5n4lmAtIOMWYNRpTAm8Y3K3rJ8871q/vDpZ3v/QoMruW9fxThkF5My1jjtxqOWfCqybGPo+8Z4eeIXD4V6l9z98BKfBXeL1nBdESK4KmwRaN8RpJ1ULR5hDZ0ZVe+29mct1HZP5vXvbgxxc6QLaQ3eHausNl9VbFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736392554; c=relaxed/simple;
	bh=Vo2IlKKzsDOY5ZKrxGX4RqTiJyhhHGSSIpLrS030rnU=;
	h=To:Subject:From:Message-Id:Date; b=JgHg6kw0lZJsgWXaYwY1/WWvCqYG+muJE8pnWqYH0KOow8OIB9Z8S1y+TIPPO28zjZNlsPSTSJHpuCYQBlH/0DjibG1pD141xkZ5I77WHEwybHhXM2SMQpORUaq3ycVnMyjjjQVCnmNpqBo5pCPV6HZQYHgNDHRQAqeTgKab6fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PV3GeVZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PV3GeVZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE2C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736392553;
	bh=Vo2IlKKzsDOY5ZKrxGX4RqTiJyhhHGSSIpLrS030rnU=;
	h=To:Subject:From:Date:From;
	b=PV3GeVZPvy3qxg5dtIT+ItE6YnaaA52Ykj3ndpnGnr9ZeqT1bYZeLjxAAhTXgJADr
	 frjjAmz9AF0nROGV+ysis6eIlN7u/l6w37GZD51wpoQQrbR9/dGZFWCX+PB1MUpRbu
	 FRuni+ue2KQbwTyKAX2LdaOG3D1BsFtClpdammgnmhIu6sc74NgM+TDX3GJWyZ0BXW
	 08u2m64KEvotsFGJmQQBJHbIvt9Ona4/G0bJNnBgGmF8h6LH3TO/f0ZGHq8EKnGc33
	 Z5Owt+bCgphCCGseoX5zYcdGqTm8kkB3W04KTZ2SHzTBvEKXxSg4jPbRQY0H35lHp/
	 lBoKgZvgGuAXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E83E77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639255359.26771.12696482202669626493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bcfe08af401ab26620a130e1e17708e5f2db1294b5a2f916bcbb5b8758db052
Date: Thu, 09 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736392553
