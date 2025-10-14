Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278BE3043BA
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760408994; cv=none; b=OndzM0I9TZeC+6kWpfbnUuD1Uy1Jyxr6HLcMQintG2qvDBCIlakaFsSUGJfV4ZzmtkUXr+827gJwERA6aGHxg3ZefMDH9NE+7leFoGif4uLOlfd8W7yrN4b6YRUavTu7Lg8qENFWSE8TbxbY+lqZmmiNjTb3xA+7vaSzONBQVfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760408994; c=relaxed/simple;
	bh=fpTa3KMslLOOYPu7sfI4LF5008+hsYZB/Q+NFewYOJs=;
	h=To:Subject:From:Message-Id:Date; b=d53i4/W0a1z8D2u7nQDFHHkxMDer0hdWZYQnV7khrn/aez+Nuc1cZbJOC/7oSGvMY37+zQeuwjxWQvardyyfPI2904AVg/0Ys3bSQqQYbsetsW7RbtpeywJCP/ubzXz/yZ4+8nTTv/4Y/TLoe5vbto8fMk0Bqs1q0a6pvLg9YzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgLJM0oA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgLJM0oA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9055C113D0
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760408993;
	bh=fpTa3KMslLOOYPu7sfI4LF5008+hsYZB/Q+NFewYOJs=;
	h=To:Subject:From:Date:From;
	b=VgLJM0oAbxNhoYIdHaF7eVrJswx5G+TI3SRLdPXqIZSq7Fp3izftfGNvdXIlnUGbH
	 5NG4c/vi/N2BNy45CIWXPW8J6Dqzug4MwHxVduPUXltqurvLUW4OfbPuNBrb4EgdkL
	 s+x51ir4UqmrR8qjVAPKtPuzdCfg8YWgaNpCZCqjohVuYKzSDaEXzzyeq9S2S0LlUL
	 aPfcznNXPhdziCrvwlwF9bD6oaRDG1Jbunw50Q///IErLuD6zuplKBZRZMQJUAbV87
	 KzJBVWB1T+cwuRk70GtcINrYooaZdbfkMPmVYKxYm80KfLsjPRfPuOMvNpHbdcTz3b
	 oDnIuUPQbm0EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C73CCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040899359.12405.7720397762119118649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543d10f865e95e0626b9a3573ea0099f0dc3e4a630a2fd00dc81cc40e1a790af
Date: Tue, 14 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760408993
