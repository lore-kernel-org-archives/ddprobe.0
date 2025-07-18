Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214A51FC0F3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752823194; cv=none; b=U3a8GDPZSp3QXmM1CzbcY30s4RKThi+PELvdV8TTOxf5iJ1INk9fegs0Xi6aFuzaAyZZbbm2nsgA7tc1+sqkrVWUJzhtxId5z5AhZ7lvmZ33zbwiz/ZiGoZBjEnhnU4kznZmsSw9BeW5FzO1uJJI37EDc8xrPqUrbuxvmzB2suM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752823194; c=relaxed/simple;
	bh=lFdpJ20Hd6jYPAwTp9ecCSA72xoga+7xll8+boBfKl4=;
	h=To:Subject:From:Message-Id:Date; b=tguJU/oo8liKANqZtmkc7ce16G46WcxmFxGLSJW0iiwIMtYVmubSvuz6USb/+yKHiBaI5EFtgHqBLIqignlTpTr6SJ/pLCTnVkzqnNVJU25e8NrTFbM5iBA+ej3mjzTFiiuzkJEzPniDAZKSfc/jY0uXH8d6bFkL9rIr+ariyj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izpcf2ar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izpcf2ar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A360EC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752823193;
	bh=lFdpJ20Hd6jYPAwTp9ecCSA72xoga+7xll8+boBfKl4=;
	h=To:Subject:From:Date:From;
	b=Izpcf2arPnIMmB/FVrK2uDnqG5LSaOlz0CnWfq4VV+xhjLQv5W8Zo6Oe/If5lmLJ4
	 XIToh/FG8q7YlyejsQMRK5SrubuZ2qk10pxB8FMhFyGE27NLniSmyrt+H4OSVjhAwH
	 ymcYWm798E8DsHcfl+X6f5RKxbup+Ka4cPUCBu3AFb5cjAwpvJU6snf+FecT02fbwf
	 8TLUYVQItZgzjIscDIoKsB+DaMfS7Q4S9c+6/oVnDHAAVeWW057zDPvqgo+uYTo3u+
	 49I3FA6eQP9xRNC+QzNErLuubEh9J60DeghipJ++94lfPYQ3rFlmcL3LeyAW0CWLd3
	 OpiOIi5aBk+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F1C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282319357.1941.1139436612932721279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d19f064cb5eeab6a10c04b9661e051910d5d64f6a691f1458b7209f522113e
Date: Fri, 18 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752823193
