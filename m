Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA061EEA5F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737417354; cv=none; b=VugRpCfhi0cBQaiIdc6ITj2jifp3+QGBSQ3ccjHmI/UPCYtbIU/6jWuGG1jHfLGaJRWVZp0Mgzch7x8onXO8V/hYDK3jHuQkyl8lkxRHzvm58BUoeii7f0/gfCuFEvELo+7VzjSsFnqTkHNU+Ie93l3jYF8TlTl/XQ/BWD1OBJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737417354; c=relaxed/simple;
	bh=+0q/E6e+SQMgWLxRmbMboDY+cAU6Zlt0HGGaWttbub0=;
	h=To:Subject:From:Message-Id:Date; b=rF+rKyO6VMTXeTsxB3n+IFjJMDVju9VqoCqZsJLfiFoBQHiVpuheWFpFfj5ZQ6UgWLJHoGzsSWOJemfSWj7YpwnWyMQ0xJwa3FEq0IhsJTLR4Ww9eEbhryYTMXmSqX3m/eK4J72UzApNHN5egDM3NjuPoxvi6chkSV+E6fFkbTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYYE10X9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYYE10X9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E07C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737417353;
	bh=+0q/E6e+SQMgWLxRmbMboDY+cAU6Zlt0HGGaWttbub0=;
	h=To:Subject:From:Date:From;
	b=DYYE10X9W7YRIMtQN0d75pYeh/DusDfYNxog2+Xv/9GRkPBC5ElhB42GG6H25LOXC
	 mKxDkV+LehRe4Cy8rDbGY1QkyiJbgnOLlD38yW4jRn2mDPXtXrBPc+RaVY6cg2ZgMj
	 8ayO2vrL3bPebptvh8rUfhGlNsmQ1QSFwQBRcUa7N1ShD4j03HkzxtNzkimVtrgMqc
	 V6c5qKvjZI4+Rrfj22rkgvEHCNe0jSOengtABaC0CJ9ql5crrKJIDb/eRaZta47fWk
	 +aYOlF0D5AnA4a6V/uH2AafrDmxqj/zKCAq3GsGO5EjGiaTgiFfp/vvrAOP2T/du8C
	 qVKiiF3iH62xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CFBC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741735359.21599.8881987034962369711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989ceed1a7e2858f091ecf48152cec21cc002b0ca8d1f9578bdd0f7d82b6677b
Date: Mon, 20 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737417353
