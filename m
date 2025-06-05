Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365894AEE0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749160194; cv=none; b=AW+OkL1YGg1nrj+ulpOXxsA6XtnH2pR2MMdjJ4B0rMasR7y9ZAzTBkO2e26Dp7mySN6pqHPBwG2JORtvzH732JQTuHPZ0Qbhzu+zbXN+QVCiA2ABOt/sI5xSwuH043q7QtXy3+90qEnDZAbJS4HhuEEZQKtYuNLTP8FjzJCu054=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749160194; c=relaxed/simple;
	bh=SWthELFmZNlXrd1ZB3g/x7+uAmpfUx8H+LYaJHTUnJg=;
	h=To:Subject:From:Message-Id:Date; b=RLWBMS0N9vwTU4bv+mwqcrCzHYZe6qU4BwGsH0DSyMwPJx7swKTPSO3UuxY6ZI0VyGChUCSiNuFqPF3iGUzSFnPfzfrxOKqzK0jTVqkG5pJ5gvalM+ucwy/tfsTLIl+IqzH3JkDCbrQhe6f7nCtJ5bacCd9iSnSKWBGBS2lVSLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFYrjA0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFYrjA0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2864C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749160193;
	bh=SWthELFmZNlXrd1ZB3g/x7+uAmpfUx8H+LYaJHTUnJg=;
	h=To:Subject:From:Date:From;
	b=ZFYrjA0xqxwZCE3Z6eSV38NjPeU+2Ia5pH5D63t6tMkQjjEf0n8QV67lt9ogoGWP+
	 7mlbuwafiLTkyH5K9nOqtJJR8PVGZAUN+pEFGe23Q+7hhfA/QH9YdP765Vhe2oC7iZ
	 deBZyqiBsVCb86XtVPrJhWaSpSxbNxhnZ3OeX/+/x05XKB2uLebuLNe8aSTvf60fKB
	 jXmDGXIOcsS9hL5XaPhHITsYNuqlv3cRbNIhOWoFpyS1YLqGCKzlOjMxtWBK0oGWUQ
	 rgBM5e6To5wVLPiyS11mat0YlMXxi+0zVYHirG7MU5EbfnqzVn8Hj900Og57gWf2fA
	 RSQG+kcMlT4JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F613C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916019357.1935.16976856852630375145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635a9cc437d44b9883a76018a8996b362e2af1df3d28f327801894ef905d841a
Date: Thu, 05 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749160193
