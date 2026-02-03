Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2979DEEAB
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770132834; cv=none; b=SFn4eulGEuEZYjQ80NJWAekDbPV0n+bjYUsTO1UxAoRF4KzfLlueHbqdzC1lcYZ0YzKFeHlLJ3yb9rTgVj1LSun13vwk78UifBIFtIoXMNbRvCkj7BH1TCkuwHgIjiHbWsMgOUobVu+5ZKFJKHI4IUDGOVsShXTObeVPFUlWxVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770132834; c=relaxed/simple;
	bh=txAYaDWGhkBcvUGNVkmo5EBJ+XF5HsNPqYBzhGkInZw=;
	h=To:Subject:From:Message-Id:Date; b=pvAgp6bmBrC8O/7FPXYld87wqDAq0eLHKsIj6szzqjGmMlXoLD6tXKq5lEenxJ77vQt70GhJrbrD9665MnhFJY1f8oHKMwYM8fI908kH1P2o22FaOVjoS7sFv9+2tO5lfheh95HuLmXoxa2ka/RBCu0rlVXbxD9Wf2CLO7qFc5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiLQBrdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiLQBrdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3429C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770132833;
	bh=txAYaDWGhkBcvUGNVkmo5EBJ+XF5HsNPqYBzhGkInZw=;
	h=To:Subject:From:Date:From;
	b=YiLQBrdZxnmGKcMsD3iYXpLJXlIKSa8tZNkJepkKnS3CwuJVDtgP1gAF6MMwQt0mo
	 DjSsCBnsnLvV47S6kcHHIrm7/0vcozPpoPLfp/fSBbdGx2P9rLKqxNywPJqy3TdK/W
	 AGPsJ3rH0Z+F9xKWqWpjnHSH3rTzHfkzHzVUVVAXGp8iNTPPjIcz0U9JeObwR748w8
	 UyGSmWBsR26q2aHHkOj0LHW+C+Nze1Z3UV7nvTKE6wHIdiv9/kIxNYX6v3lib1I1b4
	 usCAEy5xUt3cbdvNjcZAPryf7RXqyP0HH2QLS2vruxOkbC2l02KqaPuKE2ksNq+6l7
	 aHqSUb3phB/nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE11E87839
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013283361.25647.7085328571053377293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb16cd2219126ef88ebb0d0fc86febbaf80e6c2a8172c48f72a2e0a554d14385
Date: Tue, 03 Feb 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770132833
