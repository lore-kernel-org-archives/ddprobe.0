Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EF8256C8D
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775696734; cv=none; b=ONbp6NNVboAqadoUm6vwhfvjIHqFlf5GEd0daCWJqRMkMavaNonZruj/9Y6gdiW9vf5GQbvLpeyBE0gKUUpZ2DNuHJS7ASZ9XgHO6RBBYtpOkyKo4ApSroGo6+jrlrpdRdqOqvf0otvqlUOT43VSQP4BiVvjcUJdu2+QsIZuoOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775696734; c=relaxed/simple;
	bh=EBTuJ+RW5gsZ5xzedhNTpy4W0o2B1tz8RhngVAG4+bQ=;
	h=To:Subject:From:Message-Id:Date; b=AaUglux7BVblIfXDmbDe+FfSU9fuA9Lc+DVaF0mF1FGd03RAgN7JbxFh7My8pVZYkunj6m46Rdyte7wSVJEPmt+Y7bDv5bKyCcxqlSgYgd6O4d3RyLO/+WdxzWSY/fy5KRe4WBtaGETBl2MNfrginVKmRZz6V9ye5AwlIX1I2n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLeNyXRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLeNyXRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74C2C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775696733;
	bh=EBTuJ+RW5gsZ5xzedhNTpy4W0o2B1tz8RhngVAG4+bQ=;
	h=To:Subject:From:Date:From;
	b=lLeNyXRzUU4uKJR4agNkv6uGE01OmmhyUEfz0Ome+yW6YmhJlmLm+lt2hO4a6iPSt
	 KpSjTOZdf6m26DvyZ43uV82hQbsgy+ry7bcJURpgzc/VLJA7zCvG1xvtD85cUfByCP
	 Oxg3HMW9/2LjVp0ev/7R3hp3k314xIeDLpj764zkKAnEmf5akqTaZkHlkbW84S63TN
	 3nkomf1h/iHvkIE7eIv/FS7/dAqlTZbxZJ7bbWwvwsKzol3Tr/wFmAARRfapdCGC/W
	 T4DeEae9FK+Czg4yG+XBOeG7vQ/OiDhRMhEFShqR4WGJekeo9qnd8iu4IBLKgUzFe/
	 AK6LtU7LSoUog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B022610FC464
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569673371.23440.14137119712526639402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518c8ecca28bf16008b963da4257f1d8bf1da715bd55d7efda309266e96761d0
Date: Thu, 09 Apr 2026 01:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775696733
