Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA84306D2A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790157634; cv=none; b=GIEiGUSyONdkW/jls1vvay4UXTFLRZWMxvZeioaC8Dy6PGbhmIZuL7B+jTyZTD09sEj9cT1gLnWEFjjXpb9DXg1A5K4n16gkTSDRiCBUW6Hy1ES/tdWkBUNeY/oKHAWkyEUjowe87flfow+E6rxX1O94J0QtB9pWGMyHPjp6i5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790157634; c=relaxed/simple;
	bh=e8OArP1R103MX5pKLdgNwicqaQKJfDqCyjzKEXHvnwM=;
	h=To:Subject:From:Message-Id:Date; b=Pma+5dGXSxWY7LkdIhyM1UeyFnFnaOX4t02aLiOPhnu729bPWSSIQe4wq5YOlpX8Z0sACV4qORqVPLamRLOonD3ToH9a9a9A2w1MtDVFtIfn7YgaWgy03xlbRiwsNSXzXoLDz4Qg5uutZ9KH7+RBS+YitKW6j3GQL3chlWaGHsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZknPCsnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZknPCsnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D396AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790157633;
	bh=e8OArP1R103MX5pKLdgNwicqaQKJfDqCyjzKEXHvnwM=;
	h=To:Subject:From:Date:From;
	b=ZknPCsnxHanz8Exi0aUKJuiKAeAab45iAOSZj7Sy8b5NLALyFB87vOPMoimBQm68K
	 5gudhpeSRWhpLK2SaumphmWFnzJK7m2BxF0UBnIQ0pfqx+8G1jjayUlLjzKJKyb77A
	 GtPIV5dCOZ7I7SysrNwEnWnp2lVr4ad0RTdnbzOxNjJnyJ/zgV89ygcylP3jR8zf8a
	 7/Eo8vd0jMDrBK6sbFJSf50y1QHtmDRyg1svi9hRmLD23D72H+rArICjFEu7GdmuAi
	 GalxRApdCMQ2/XwCkBbN+Tg19M8/2vO7yKYajNqqVH0vYwzUDKBJgB4kXAz1UnZX9I
	 L7A0SjT0yzTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C6C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015763369.11098.1579788692344241027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b07c3e99402f5dbe1ea50468a302baba64861ac289fb72fb31542e8698f2d39
Date: Wed, 23 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790157633
