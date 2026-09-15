Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585AF35F5ED
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789457434; cv=none; b=caWWHAQocRz2bK1MGYVpvA3rA64bsTnCq4cMlbYXtArpIE6PaIuw/lC/BS8bgyQLTViNjs96K+gQNpS7hIDqAm8ITqZOkd/cPWc/Ln3RSd/C6xQEw7tz+oKkYeWDWstvgN42OXPK1ICWJZy1iGP3/g3hmwHSLFNx5wrwZVu1N4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789457434; c=relaxed/simple;
	bh=8yRA0hMYjVTfAVxUublR4hH82gonlI+dRajkNLwNm04=;
	h=To:Subject:From:Message-Id:Date; b=I6eiFxonqZ0asxGTJuhDEjfBau+jA/T6QLBKb+ig/3SUXuZfUrYM2vnosPibDdrgD/+J5JWBlZu6daEdqKTzmsiLn6KwAvT9wjGo2HIfQJnHKzgq3UkmX1R3825BpB2hYO+6iF4GDSqlqWJsIlgbivdryJYRrRIUxF+A+LO2pCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4MnWUB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4MnWUB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCF8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789457433;
	bh=8yRA0hMYjVTfAVxUublR4hH82gonlI+dRajkNLwNm04=;
	h=To:Subject:From:Date:From;
	b=l4MnWUB1sKjPbF4Q/vT9azpI2wfd0rQNXgiiPRAM715fOsObIBd5yYVHR9f8uQPjP
	 cln97rlsuJb4CmkN3X3aV1UY9S7iasyPoMqpPB2n0DwdJSG67t2Bsj5EssRQbCPno8
	 z8FNh8U/Lgv8AN9KLYOuI2UlzqLAeqlpshkAnnPP37qO68eHQ8aPYWHrYjvpfmL2sP
	 UH+yFXkXFxrrZATseIvb56QxweeG6Oi7TyvHrUk3DPY3YGjZzS5cVALr2fjlMHW9Ui
	 92UhVKkU9lYjE6I8bFMbt248kJFFZHuPuIn/QuPq5xdAHB0djaYLIi1969pcNlor1P
	 SdrWiAQj4so7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DADC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945743368.11176.4991776479834465914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39aa12e8f1ceab055e6b34f16b1580d4f5040114d51504a2a026a997259ef35b
Date: Tue, 15 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789457433
