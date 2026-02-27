Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10263259C9C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772228094; cv=none; b=VEEgw6z5dJsIMwNs4xxz9TEWy3z2Z6HOeplXq37PVyWQlWjQJGAxQ98NWN8EHy5PeoLpBLA6Aes7iLhUUjXq3tIqrrsravywyaX/fBRq0Zx2DXafq0pQveFvMfA7aYc45C4aBhcwJzWN03KU2l7dzjsAlvGbtvqtoEuP8Mh1sP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772228094; c=relaxed/simple;
	bh=+3KLrCikTlzz/ryEFFDXhTyvvwaCZhVEBhCy3GJ99m0=;
	h=To:Subject:From:Message-Id:Date; b=nMyuY0MHEJIMWVP1bIsiylH8hVerr2tZLvm5qflFOnw6pdeJ0O7kXdPR1VCWfUx6UAWz4BkEf2hiQykmpe3KLoo13323h0PzyuYrFsTfvHvAbbClvK5TIeJo6lugy+VrWbz+VJSt6RmIPXarUGuy/vaa5O0XXT3ofhyn/OpNaaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0PkFAN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0PkFAN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2895C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772228093;
	bh=+3KLrCikTlzz/ryEFFDXhTyvvwaCZhVEBhCy3GJ99m0=;
	h=To:Subject:From:Date:From;
	b=j0PkFAN6Vzzf+mB1vcNMnev1AMyV77XEZoBCOJz9OxDJ8+6II3mmHHDCnylQ80vWt
	 PmcpNiX+wdFQU51wbkBgQzGtDpt9vbM6Pd4UEO6IIKYcIPPmX7qPOYTxO6gMcCgVwS
	 atD6IRFSVSzWJ5vPCd2KFPgSgKJL9oKvCIZrFHOapljrXV3SQSeho21G80qbRxiq0O
	 Wd5sYzR4UJaws6cw2z2d++8jIQz5f87torLQv6Xs6/VsmmAT+DXysbpc3eh32pvcyd
	 hgeDT+W4j8Sogv9bYYSjUYxNGIAgOQk7RVkt7uuH3kSYFK1bAdAWUWEfKJBmbpJx5m
	 KcF2z+tqVMkgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304710398B2
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222809357.15808.14392730619226056097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4fd25bb842c7465de03a3e0732008df45091923a81a36fd7cadb0dd08e2089
Date: Fri, 27 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772228093
