Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12984233948
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780810474; cv=none; b=Y7LioQ28mTtX/fftkeiqHi20wS3tq7GwKeAUfEizOFnnstr3Qo1lOfP+5qElu6bCq4CYiFyAVJqO+f+p+MzL5B3VgCPRd4p6mgJJigrcevCPK1+ngX+mnTd9Lv3aUI3g3O62van1+IaFn6GcPL1OKzWvcaQKi1SCBzjKjhG25yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780810474; c=relaxed/simple;
	bh=m1hsJsWLB1UJncKosa9MWfslz8QxEhdpdw6ymGbdCbk=;
	h=To:Subject:From:Message-Id:Date; b=Nr/J0UWPabxQWO03CQabWPx/NPEvh45+Xy55TKdTN6Av9x8yWHfOzfQKJGoQD0ONZSKXBzZfV5B4iJ3Z0FU4gmP9efuU12MzdSSxjuryFpE9ZPfDmF32VWVOrgqWpxCPx82dS+E9fNLuAngqjINnyx4Rpy07k03ipYZzUECBx8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOlSXmfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOlSXmfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3FFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780810473;
	bh=m1hsJsWLB1UJncKosa9MWfslz8QxEhdpdw6ymGbdCbk=;
	h=To:Subject:From:Date:From;
	b=OOlSXmfuXlMNwQ+XTAhWX9OCa2p6Qyyd1q8GnuD1cAPXR8xuTnzuLlpwe0C6404ar
	 sLeio1daNgWmol1iNbgFGc5I25EC3xvjaLCbloF5VQDW7BP/eZ0jZ/ce4bErdMLEeH
	 keq4UwXpYREhfufppAFrd0vHlfMBCtvix5yb4lxj6N5/IBlTwE6tiyrgY0OpT1V6IY
	 24vI3pl9YCiscD9ALcg2aZyJhIMR3OWIYyns3NgA4LgJ7v1HP5rLcKHSCD+1W3LGlr
	 atEQrS2KplbZ1Gc86kTwPj5N+xfA3GEmQJAtdhDnDGfrUQCPLtjGhyhhyczkyr0wpu
	 PkGXMLU46ur6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9480CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081047368.26789.11214797436848048711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc7dcb2498f5a782c24e430c0942a24ae453e65a4c42cac9ba167b7733cf5a3
Date: Sun, 07 Jun 2026 05:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780810473
