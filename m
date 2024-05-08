Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46533481C4
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 10:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715165543; cv=none; b=MmecqftLeFPAYbYurGA5K6GcF1V4ff1PqcaV797kLxzmsLe1sj76qCSNZJ5XJjGPgM0+lZmrAHzsKMdVMrIYeEOC3nOdQDTBuCtzH20SVXfIU56xQlSEaIywjvFuBaXXr4Bn+zdWTPhv281MmJGPMSKIK9ECcKVPnlUCkVRU6q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715165543; c=relaxed/simple;
	bh=hYZ1E1aUD1efPcqO/GwxTnp/bdBFw3Nj71KbnMQEa6o=;
	h=To:Subject:From:Message-Id:Date; b=anSncKg7pqytvU9DvgY8cgsAfzVhMwuaywUTbKZSeqlgkm/povfTtEEzEp1qI3dyj0uMpftLAtwLMmjAELRj2ymdBj6WuNlSNc142Fwatx76llKsokp7wFNWmKcBMjGPsH3NI188NIWK/kFNRn/pozwCeX5NXXdC88rUebcClCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3D+yRLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3D+yRLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A09C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715165542;
	bh=hYZ1E1aUD1efPcqO/GwxTnp/bdBFw3Nj71KbnMQEa6o=;
	h=To:Subject:From:Date:From;
	b=N3D+yRLVCtOe9/oAugd/ClDOZCQOz0q/XPFkcOC/pOvCo1Rc7JLJ3StFth86nWS75
	 TfiUxTGhvJRo2IdBsk3prJ52Jy2zea9r/6TndwrW8v/2LqoG0cm+bO1UTWGQATBdL/
	 DrT+n4ZLBOnDrlOPtW5JQHbGduZ8hiWcn94ZOTIEJldn7NOEg9mIRjUVxPRVmO4z2s
	 6wWM+fM+xl4METqAzbBhzVJ5R79nmrdLkhOoGt8IlDgzVGUt7ftDWg4piN/QxCkIsc
	 SXKafOQ2lPCuxUHqqy4+z7BNqzeeZgOaUUIlk39HWeB69hy489VfQGmJrRyqBq8FSn
	 zX0UedOhbJ4nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4ABC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171516554282.17811.777528798860543546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aab48c4fb5042fd1c8d65d57616d50aca85b8f7ee467dc3f1ffd0e84cc639b5
Date: Wed, 08 May 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715165542
