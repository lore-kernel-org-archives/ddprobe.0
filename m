Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509631F949
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743355194; cv=none; b=PravQZx8o2LUY3q1iHR2Px2OrLIPVUYXygu8ROxoGkf4lq0FBbpC86PFYiS4o55ObolXin59yCCsDvkIMAEgRNUOi2XqPViZOMEus+pBA8xk8YudRUyprrN6Fenkhk6eRx+WoK7UIMddpGgLDNDVzJSbodKD3IzZOTp90Jzv8f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743355194; c=relaxed/simple;
	bh=eFupzuC22q3iaQO3UhccRdlgDJnaiJMDAPiUt+DMAFY=;
	h=To:Subject:From:Message-Id:Date; b=e7/KFM3bgwLQ66C/tT0835omPgZEusT3PpINVJV8MSLCWfjBZFytyDiw90dBMN7/HyHzi8Azr8fPvuGm5FP59XqlIL8/rO+66rti5pcujSQlbJuCp4Z5edPCMs74a8sDGIMDXtlPP8BRuoZomyVElEf395OwjE5dIRw+z0ecQpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByFboExw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByFboExw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE76AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743355193;
	bh=eFupzuC22q3iaQO3UhccRdlgDJnaiJMDAPiUt+DMAFY=;
	h=To:Subject:From:Date:From;
	b=ByFboExwAka5VpSj5L4UWOgxnzCd0jWs6GPC3EccSEo5XUBfGFTIX5GmI3xYcEMK3
	 8ydERfLXMQpQnZ+qPm1I3Z+nuSngmAiouhoBht3/Ljk5xXjnHRX+Rwj2Xuijo+CYWc
	 P9/EZc+sp7sU1elH0p0wQz0YuCwTYmx2wrPRwC04oLL5UxEi+/4lP0sFpR6e2GbrcY
	 HBwGhM7PE2GXxaYlN8HDwFLuLR9sQp5ANcbOUMvrum99YDDrifbtDnT1rjhhCc7Hjr
	 X+R3nICi95+AcZy5vzPe1Q7u1+Qj3fQyOEvzA22k3EGLG8H7p7zcfzKfrm8kZK4MeL
	 S6ZPKei2ZvHcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5086C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335519362.11677.9239363649410151095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14d6385bde890f19ce31250a469d51cfe46218de9d626ddbf2d1c119b270be1
Date: Sun, 30 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743355193
