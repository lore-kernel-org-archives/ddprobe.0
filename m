Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097EB635
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740010734; cv=none; b=mkuck5eSIruDYYFDJNv3607gME8x550PeW1TsQgzDBcIh0AQ5vts1EJzf9aS6UX33LEyVQT7WRaHyF+eT1Zn8GHb/NyeawjR/X94mGkIQ/VWpqrpxpzc6b2XLMQ6JiZ0kZD3Comf5LwFRtX5Azl3Vi0oeJRssjq6ZdRrt+gW+rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740010734; c=relaxed/simple;
	bh=tEjk+4LNTFT+ipgaXjUhWk7rhzZYDQ81DuiiMZRmDkg=;
	h=To:Subject:From:Message-Id:Date; b=tAGrLiDpMznfiaE7Xo2yU9z+lBFgaJal3MssvZmIeW5LL0xCtiXe2asmKhJpXn0K4JsqAwfJ5QUsjovod9tX6nDtxiVREBXndGxRzJqidhWvermI3J0Yjg5RRoPp5jqBqp/3SmWKpy5lWBqswIcA5QxaTuNpf5DivKHouzghvXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ol5gZoX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ol5gZoX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46F6C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740010733;
	bh=tEjk+4LNTFT+ipgaXjUhWk7rhzZYDQ81DuiiMZRmDkg=;
	h=To:Subject:From:Date:From;
	b=Ol5gZoX7zqRW6My9PwyrAODCh1orSITcDY6Ff4deCZa8CRLkFWa55yYPwMx4tUB7F
	 ypHZfFlUJWAMCten93uk+Bbc2LOwx+BwrOD6TOf/NOTj4s/tETxAJKg8NiJ6XbFIIM
	 eOONyNBPtsato63QfvVBuiabmm71kdfRK9yo3e3QrjMGnh5Zu+Qso3nOYoDFiRI41e
	 XtG7QrQehez1NluqcBZzgPs0k+0LCCSfSPR2dS6KTR1BJd0K/+uizI+t4FZLBYAgKD
	 vRy9ZYU6k8WDX74lZtqHvpjCBHH/YJp87D9CQ8ALQp72QJ9tmXQElBGtZTSurc5DQk
	 sxibJ29onUYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1B4C021AA
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174001073363.22511.11029108285163196164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79780fddebdd57bd59dcf90aa6e88a8cddb9b080f811a5094575cfa5ec201dc
Date: Thu, 20 Feb 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740010733
