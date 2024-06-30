Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6242613211C
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719743063; cv=none; b=pG9q50X+EHqZxTrnLaJKKny6zwQ+ePBUa+R2r3k0xWUynx8s0obmyYqRxLvdNIXLiat36vQDZ6980sIeCJSschhePkhj7w6jJKJrebMUfq8rfL5SwgVzOOFLaKTO9SEOodL05nw1if2Ntuy+vpPfdBlcE9aCuG5YvgYA/ynsxak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719743063; c=relaxed/simple;
	bh=/A/ujRkXJoRVYcCypUSB1TsErhL6fgqTXnK6noVOPQU=;
	h=To:Subject:From:Message-Id:Date; b=TLudsz7rdMkt1I27p8qO3TQtV9gSplO/zf2aI1WBsZo7OrT/IE0JZr0YhmpiOZmc/HR4skiP5zND0iRnjXg19/69ApU+56ERlxq0TKbz+z+Tq4LqFNltsVKwpKC6najkDVrBqyUJ4hmXNdBizQHCRK3Oi5dh8/Sjm8NwmbF6/rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIq0TGPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIq0TGPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E953CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719743062;
	bh=/A/ujRkXJoRVYcCypUSB1TsErhL6fgqTXnK6noVOPQU=;
	h=To:Subject:From:Date:From;
	b=AIq0TGPg1R9qQVxFN2/SSiphmfNOawL8OcBeYzQV1fiZH8eIWsecH8f8rG2nzr845
	 BNR2uqeQwUkLHGHuSiwxj2e2oZu9MZkjPUuot9NcX0oTZW73GSo9Zphufz0z1cF49e
	 YFxRevPvMqbDIFZNYiIvpCq9ZPlr7//lj+MTOUwQq0OVWVjtEiCp52oVV7IiiKJOPF
	 alnUGtHOz3sZthYzYfMeUlNjgx4ppD8ldo8cqvJOM5lDqCCDDT1qiKB23J0BcRWyZe
	 ego96zaxZoCJNn1DyoudT3hf+deyMgJOpsWqVmPrR4Bmt5ZYr1OKUX/Wp6kOY/iGXc
	 4D7P7YW2UAWTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D76E2C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974306287.8106.4500053800591224878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1245926a3f8fd8356abb83fb3877cbc59b218b4c172e904139c0fb6ba43d546d
Date: Sun, 30 Jun 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719743062
