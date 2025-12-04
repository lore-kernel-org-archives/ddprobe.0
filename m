Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294CE340287
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764855774; cv=none; b=JMihgmMa7vHRpqT2MkA4+2nTRE9k4b2E73Sc9VijDyY70I692p6441vX5On2/yzw89P0pwovRKUQep4t7c7N6/J+Mv0TZO6x7lzttbEi9KWUWXzLxnxLDuRlteIt3fDw2+TrUZ4w0nUWeOXduc+jAMq4tQhcbiWfzetUVqGMiz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764855774; c=relaxed/simple;
	bh=OrW/69J8F1JOcGDo0OUav6TA8ejWx+rOtEqosgNhLWk=;
	h=To:Subject:From:Message-Id:Date; b=XZfWoxbjuNe0LvpUQZY9fBdvP5TmJKR0MRh5uoA64nlqGFY5f7YFHeOVTwicrEKjafcSTeh/nZiYzVxK9P0RaIG3zjMibFVMDP41RVThWq24OXSpTL5fo+0PkS7ENe+Sltq0jzjFqaBsVmW6FoA5JBw0VA9HzUUOf+Gi3kGqd3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4UagLlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4UagLlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C9C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764855773;
	bh=OrW/69J8F1JOcGDo0OUav6TA8ejWx+rOtEqosgNhLWk=;
	h=To:Subject:From:Date:From;
	b=p4UagLlxcb1c7U9ooKbDJ76aJiddtU/MYqX4DiWLQ4STd459c/viBhczz7zmRVSdF
	 04eWJYk36xzsHbCp3l0H6CRIwkSLFlRU6Htefb8Yq3QQvuy9a9NBcHNIBwoSUCqLMb
	 11Kxc1uHfNaawWWOrcw9z/wg3Qw6sZ7iBc1oh3a4wmtUIJjrxr/f2G3aKMqkzAonzd
	 cN8nbIlrSnYPbXgQscOiUydKXKD2Sn2A5Y498d+11wwAKcn4UkrPrCgz8ioPW+5QAl
	 x39mqnRTr0hjP1tLazhE8EEq8Q2srEb911bOAZBCOu3UynwGVTvIZxT/42JkTAKgYS
	 GQgyBw4WmVrmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC9D20694
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485577359.26106.7841587799596972055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a190729d9b76c816854e016ebd4511f86d9eb3b28adf39734617621da72d94
Date: Thu, 04 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764855773
