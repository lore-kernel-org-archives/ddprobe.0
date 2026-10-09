Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB693B47FC
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791527434; cv=none; b=pdojyg86kpirsUyfBQRFSOVnRYRB3Ph1tXOm4MMYaHUHqV9S6fwu8d8mcmpHQ8GNC9jx3R8XUI5DuLo6bv3Kx6obot598lkY7vQjBPUvJ5Ik3AlZcKxIfJ2pTZz02b6j+bGUQ1OC0FP57hhbHnY8+8bYekv5lJutDJ67Po0+dhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791527434; c=relaxed/simple;
	bh=XaL9Cmeft/fDJNcIWbyjjUK4VVieEq15HgtVE6hFmII=;
	h=To:Subject:From:Message-Id:Date; b=r86/cDhmJ+vnyM3vck/9jegfIoufZHFq1HSRDiN6y+xHKk414ilHKOM0cmOBCMBLhBOlfDsT9yyubR+vS2XULnwyQ5rVt3iOTKg4Qf79JN096usINaAMc2YZtXkatuOy2pAWxMnEowZg00TPTDS4GmzltpR5b21wmcuhqgV/lEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsFwrW2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsFwrW2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC04C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791527433;
	bh=XaL9Cmeft/fDJNcIWbyjjUK4VVieEq15HgtVE6hFmII=;
	h=To:Subject:From:Date:From;
	b=FsFwrW2CT5XDQ+8GrW98rlm1+n/cNX0CT9SpFW55uybw4RtXw3aRnutuE+xfh2tti
	 EQ9EnHqgRu2acR0dK4TgzQ3TmKwySOlllUFlCeGvwE87qOXl6Z50okXqyH91MHhkUX
	 K9BaceuZ+//1UxhmCSmmW+qx48VM5wXJBsR5N1dR7smErqj6m2giEbTAj57BsUmMBp
	 b2YnBQoXwdM0q4rkyrlh14OY/sT0TSN9M0OKwiIvuks/2b/qy9rj1hO3RbQzY4c4/O
	 SBaQ0aW3+MKmAhwRMQSi1l4MPCeOu8i3HQ7QgHsgY1MFYVi4g1CL7p5r1l0ANkoVtB
	 5CupJtlwwh2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1BACA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152743368.7353.12830987609261801754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26368985146b6aa0c70e3f55272acd4e8899704f36a90c837ed7150b6bf97393
Date: Fri, 09 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791527433
