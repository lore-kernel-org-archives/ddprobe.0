Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC60288B9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789231234; cv=none; b=PeVBz4zjNXUXpM/Wh4dsuNRhFdaT+8zfeVsp9fe2ZsRmwuTZgxgn3X/dby+hpXorLxecqm/4iEv1jA6AtPe3G5UQpAmsD7EKFwucANXGaxkDdnyDo8DioViONn3em39thDyif2fNgv0+kBZQmScjapwVcnj6xBQTNFHosWe74jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789231234; c=relaxed/simple;
	bh=VFEu5HMaRdnDAFfI0en2pLJbdvcdvSo9cUhJTTFS8j8=;
	h=To:Subject:From:Message-Id:Date; b=ZV8R+DSCTFrO2nWh0wrhmKxrL/S5j3lmTsnX3dUKj7thWgtU5hiHQHqjUmIeVx/+q4fGqTUfG3rZty1Ya9kw/TOkWkgG5OqxtOVUiHMtibMYrYhCrq4W4e+Drc6OZi+vVGygQPCwzfdVDcYPTE4YDquyIR5YveAdG8YP7qhTufA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzLOiMl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzLOiMl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80D5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789231233;
	bh=VFEu5HMaRdnDAFfI0en2pLJbdvcdvSo9cUhJTTFS8j8=;
	h=To:Subject:From:Date:From;
	b=AzLOiMl3uWfhljRsZtG020sM1Ktx6SIZJCc0EKqvhJqFnBPJGjO2nWTXMfh5HwtdM
	 edGR8DYtOTnpp8LNLuYOX9oFVExvQQbRF7gJnYB534iEAmRNfnXeMUVpuI5mf+eXUB
	 Ye9pGCKWyr1oT4yEQLMJDKjQErafUGP8rpCQ9TK1L3aWu40KAhYV4su3TNEvhGJUpG
	 gbJiQwVUw7nTT3rp/d3Sr7AAxabDUDL6p43zAdNQ0Mqvn9Y51Z5QRWCVdcb9e2bg2l
	 4jy222qrxpQlWOB8xtksvelAF4NtOPR1bqk2gIh9jkxfD8bE4S6kAY+rZfB6cQkKuA
	 26wyE84LGJk0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD18CC88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923123368.2854.3585739119122105955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb9a7f15b76f1abfb1b04ef695f89de34b5f34f9cb071544d64a50e08c780bd
Date: Sat, 12 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789231233
