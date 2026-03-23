Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0301F330301
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774257894; cv=none; b=fsxWmT32t9kWYQ8FqiIYnnL1PBlATlDFR7ZzIs6IxBaxyncwOmHc8AbLqSJnpTa1ie8O9SuibU08IQoByUKOzP8y3+x+WQvHvp523XK8rh32Ub19B8zVT9MJh+Ndv/I+IwlBc4kzVEqEaf8/zThk43odMVYw1B1uDRODlboE3Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774257894; c=relaxed/simple;
	bh=mjwxRRr6RAqPlDxtEGpvr+xusfGBPmYtTezaPtLBL28=;
	h=To:Subject:From:Message-Id:Date; b=uEGW5gpn/CYlBKADlbfsVrr94MGB0pyv0OAEXxVxIUe0k96rYp/H2MMqAQ7wqoCIlqqgWyV9LtxsU4c6sDt1n/U3DbR1LlV0syP2wzJFb9/fGuLBEJd8x4BWHabun6r+G3Kt90TBMDrF4MfXVJ+Emminh8jPdDA2fmNwI7dnFaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwNBS897; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwNBS897"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0839C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774257893;
	bh=mjwxRRr6RAqPlDxtEGpvr+xusfGBPmYtTezaPtLBL28=;
	h=To:Subject:From:Date:From;
	b=LwNBS897ogniI+7/TLmWkxLvDIV5HS6li3GmhaQQ2RMHIZQba2QBpK4rBgwOCySCc
	 yclWlbSm9lbpyKppdktn848k7aOTk1jV4kPvWmHih9UEzrIDpUsXwzqC3ythj8EhH3
	 rFBN44RX67ghJxcSG17tITxwcBzsr4NAH1F+BSe2aop+QU228erZnZVyGOz+EHSp/J
	 Q0N2QmgU/CUBHXDe8zNH6Ia7LTyLGL06+XOVjAvb/xNWFelVGp/PuTZrhDYqX9KV9e
	 68QN/kn7lVJMJdP5stOM0cLbjLmUK48z6d6Lj02A4fZPKsgxlmyJBD9l1/V1uPKzF+
	 e+eLOl/2L2jMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CAFEC01A9
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425789358.5705.2128272223708200812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0351fd07014338c7112015567d4f091756e84fd59a9c7aa2373bda470c238b9e
Date: Mon, 23 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774257893
