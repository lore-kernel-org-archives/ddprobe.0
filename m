Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513BC158874
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755205794; cv=none; b=u1PpEhUq3QOoP3TQqVoK5/Ntt20DUHoeRsYdX09WXEkKfmZmWN6EVLWlpSZOMM71eQQLznjR4EvwT1+21nrGrLtW3kL36OqB8siMlwUU0ilSQD9Ma8CGpU+UYyjSqT33rNouxtEv+B+a+O/GzFnN4jzbvXk/tZoT7i6ynJP1JgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755205794; c=relaxed/simple;
	bh=fVGdzd7jbjXeaPwHM8YwYJPxiufWCCdNjWKG+0Cye+E=;
	h=To:Subject:From:Message-Id:Date; b=CF7z1jzH0+PfZWBaPeZjCkNP50guoNrDrxQOyVsddiWbGpyIfG7JwmHTtBPm5zYiiu+8ASALTYju+FvHLZhM/jcqHAfR2bSokHeNncJkEKuCF+W4S1nhVJZzp3LMNxGCi7n0DnW0qDADSk1QR7tGUO13CfOMmzTZk+9h/Tp7KQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhmxHE6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhmxHE6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3341C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755205793;
	bh=fVGdzd7jbjXeaPwHM8YwYJPxiufWCCdNjWKG+0Cye+E=;
	h=To:Subject:From:Date:From;
	b=ZhmxHE6nnAI5a7WCTulFSC0kp9OPSsT1Q7CHuglsyCMUQFYNHdDPyPMUyIsRp6nXN
	 6Osvjy+ylfeJxgEg+jalrqgVCjCJGqlmm7q/OfEQJs8tXn+amXjPOkrGmSm3e+N2bm
	 QO+kyeqPFnl9V0p4sQP0L4001igpJl8+6kXLzHV6K5ZheDpFew9qEmh0mzh8IFJqTH
	 Ym8BB/YAvBepC2EMn12S9m+YZSERGliaxGmpx0mdqo04HBvxXkt5Aaxq9lwKiGEDiE
	 leRuJN1GrBL3JZRxgIKbS4zx7jI0vnFhM9zIy1iWbYxtv6670RTax+4UXnzj/2q+l0
	 INC6tiYk0rlfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F194CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520579357.8431.3634844633859976409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d6ed03c4c9204759747d54a68d7ad7c4293cb19df295eed3ae2ff40d3f05a6
Date: Thu, 14 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755205793
