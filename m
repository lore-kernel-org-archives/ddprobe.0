Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2FD163
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746317995; cv=none; b=NwoTN/xONQh0TTrCU0gTqr6p+GgD4PYd1va5cpxVYfv970mqkD3mhVZNlIrSD8kEwLZV7x6uDQv/TAr1BAi74bVorbT8mXjf1vpBh3QHtf5yEPnIjG3xfsDFItf8ile8M7oAst8Gcq3ey0+82s7C539lbDPFA5Q3mNLVIiKPTPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746317995; c=relaxed/simple;
	bh=x5b0bF1TbjzPryeL/RK8TjMmldNwAqU5WMhqn2WY0zc=;
	h=To:Subject:From:Message-Id:Date; b=cheJYDk7aUsX9ACJW4uYoGVpdaxdRHC7hSB5W6b2XASoYUousW5YR0soPKGcDV4+DEZj3hrJkeAlFgxB42lIe8iJTnLcnGdwtXoMlCncbM7OIr5dBm/wBrUrXTxhLFVn1fsNru26iKdiMDhHj5bFQtt9TAFqp1Y+sk57fcBlD5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj/s6Vhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj/s6Vhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ED7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746317993;
	bh=x5b0bF1TbjzPryeL/RK8TjMmldNwAqU5WMhqn2WY0zc=;
	h=To:Subject:From:Date:From;
	b=Sj/s6VhyGObumiaKRAg9+2ZoHMqWqx55W/d6j3fWVyxwVkngFJR3fidfAM8Ulyf50
	 kdAk9GSFqwV3QeiP1LWClSS11kT7bD9kz6rGkbPaazKDTaVMKAGTHQ7tkq1dWe+oYG
	 iQsXS8aF3ubNZ1LIZJwzaPAt4Kdp7OPxJ0AKcNog8DdxOZLIuNm2fgvtmZC/c8kz1W
	 4PLW0HFOXymYrKtiN7QM54KYhbm74fEJAuvVhihVUsS/F7Z5BRjvz021soVLYULs75
	 EeWDY1+nsiVDm+NZcuHsCPps0g4Q3l48uMIq/S8mgMhdxUMhL6hJiqgRN19GWkEJFH
	 8aBL9IBXpHjtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE1C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631799357.12752.2953369638172326258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f651da39fd4eae1978d5dae2fd6db2cfdc4e938b2bc2877a320d36835c3ab70a
Date: Sun, 04 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746317993
