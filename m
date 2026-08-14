Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447B04908B6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786726834; cv=none; b=TJOg7W8fr5BLIZO0b+F6Y2DxhrDWnG19iZxPnP+5foQ0Gx/WYntrX4fPg3edkF3RZnLEBkljlKcqyYSvW+JwcHKC1VQKRrRrUiQ9vMpHWSQx3kY3O3UYdD2naBo3P7/83pLwEzFZQBfpOzzEOcblH6XJAOe3F4qtlbNfFQltIRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786726834; c=relaxed/simple;
	bh=M+3nbcfBu8vSjtHxnYabg1a6oFL1ZEUjnWtH3xh/aAM=;
	h=To:Subject:From:Message-Id:Date; b=OBMuXJNHGvo01AOXJ0l1A+UgL8cC6Dh5P1nOD5P48LL4tNxvgowvFaCpqSenFuizFlkg/AgvGeOos0WXPEsT6V7I5FXE4rpqcC8N97Clobz1+Zrbe2GbXw7A3HmNySCApHCPpJe3LX060EPstoAAWVUvDwyYcjpVjf24QRG7jZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruM1nosP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruM1nosP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4B5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786726833;
	bh=M+3nbcfBu8vSjtHxnYabg1a6oFL1ZEUjnWtH3xh/aAM=;
	h=To:Subject:From:Date:From;
	b=ruM1nosPlGPdaZWHaaBiI/8er/G0TABLbt3Ghc+CtelQqnbzHHXMlO4yds/zQyrUC
	 FQEXHtreLeqTfajbdXkIAqwrtEQ9Knlib1tdxQoMB0NX84p46qfyoxJK4OqUtz3vFB
	 jHc76nXRO8M2bpt8p4mJ27tJxXAzxoKDA56qSyvtfArNb7em7wrKaRPbRNosrMVFGm
	 lQKzFNXqO+AYBYQJjTEdY0v093x0NPkPzNXeBCL05ZOd6N55gEhn/hldbKDL2UOHK8
	 l9/WR+vcL9Rr0+1Z53nux5myBX9MuHrDHS+W4+6rznta6dS08bfuHXZ3bxZMxG+7R1
	 6PzLs70t6tX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88F4C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672683368.16318.17002093628517322909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6cef108c4b3c8928b2df65bdbced3c99a75aa0d14c8631e2df2876c96aef641
Date: Fri, 14 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786726833
