Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2010E3126BE
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762342794; cv=none; b=CMrzjMrA8AduDZ0J6nEhgpCQz/xa5TGKITBeAefBRzni3dCLcfZIqD+5RkWYMBNyB8mVfYXcbZh9v6Cv6sUhRp5YsQN/Kn+Ajz3azOeGKNgAjiHUgt7KJTNH2d64WhN+pl3LVm08scWB05kimf9Ymnitq76KZkLEbzl+3zBi1Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762342794; c=relaxed/simple;
	bh=h8AyBBviHMgT75qDvCXzYXhVFlt/Jxk4Vi8w8ooD/QM=;
	h=To:Subject:From:Message-Id:Date; b=PCy/q8sSlj3cTu/BK+6WjtQSrpMx0luBu3E2aUt4Hb+QT/s35byGYNGUiZl0HAvxGsvWFzAlct17Ww68bas+5oTohirUt9PpomGm3a5GYCbNFv1w7VWROf565wZuq5U+BZ9u0alXO5krllOt4KG44ryXo+AL5D0TllhrqbtJFrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEorJwJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEorJwJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6C7C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762342793;
	bh=h8AyBBviHMgT75qDvCXzYXhVFlt/Jxk4Vi8w8ooD/QM=;
	h=To:Subject:From:Date:From;
	b=lEorJwJdtMhGKWdTmGdpkVlRrXA4ktcda0vplA7vP11kGbIFvBjmk6zt3UtQWX6pc
	 uTmMqtS8VWCOoQAjWyJyaooBolCz4ejMgyle+aaWbnbtrg0YyLuhcHIUPdP1tNjq+h
	 0VZ3BxluYbtRlFlllZdXx0nO9G/RqAb4DvoRnNCQX3uldUVMTi0tVA3e82NeeEXOoV
	 SjS4yjP2U3cpJgXKXIa2WV0Ey+boovRdiW0Obe3BznEMKUbMkj2l2yrPZDjY1FSA34
	 1CWznbq64RkgZCY1LFrtOmIFa7jyUG8BpSaY57RXqI9o3iFDAwUKalZ/g6QVfITrlC
	 5bq2x5ealZSHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B8FCCFA05
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234279364.11152.1129419942362403305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17dd46b2d3c8854edfdacdf1dd0bb488357c7d6927345bad6cf045d6f66b37a
Date: Wed, 05 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762342793
