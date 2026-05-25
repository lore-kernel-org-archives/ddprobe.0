Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3AA380FE9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779748954; cv=none; b=CcU88LAHbKp7sPtTaxPOMz9fgPzRSQcVSv+VQ7/XI+zBWgSFu5RbsFoCUA/3oaRdCJm1JhJ3/PKZWWsojg+QoxtgokefKx6K3Oo9o65FhhnAHvlG9lMOWtl5DCUymsgFxz2O7ZADxD4z4LU1fdAoutamzlOpUHsqSA24RCq7n9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779748954; c=relaxed/simple;
	bh=SCe8T5FXCVa3La9oxwUzYRPxOu8fuahnDA9oKXTTYw4=;
	h=To:Subject:From:Message-Id:Date; b=c9Hs32qJ8sPaiI0YERQJnmw2pik2UPl/1785E8hxD/VhDr+5BeajXOB9Ti4cGi5qCb7cICXm3+Qkr7OfAXP/RKvX7tFSfbvMF1gFciD+N0dbaiNy1CUIbeIcKuFZr3T8npnXG8XcUYANuDvcszag809Z3yw20TDjU21VT2OtVHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/MZAfmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/MZAfmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C630AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779748953;
	bh=SCe8T5FXCVa3La9oxwUzYRPxOu8fuahnDA9oKXTTYw4=;
	h=To:Subject:From:Date:From;
	b=S/MZAfmczmENvyoUycDNg2KuVdK6K6U/IPd0v+2Ij7V6FI4B0gy4hTU0ytjhPD52C
	 pkOvIa5iIf2IdAPDxA5DIWpDsUAsAjPMtmcPMHKbqVUuEYFGEIVZw+OgUhpJPl3j7d
	 GvI5wFCvu8SApmjvUgZM+8W+T8EL8UbTQugP6+BmIdfRkojA9KDIpXrwLTtBswHtZA
	 oPZ95YLakSFbhSFKx4vaZk2L3kjKSRVUI4YHZ4j1JmnmTmj3TCX3oi8o5UEdIz7xXw
	 hDRfXOeQY8EbtDY5TSQtMdWqSpOk15m2q8g57CJ70xqnsJOXTwbpO5nTyeAlcnA3/o
	 ctBkFxvvwYDlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD30CD5BC8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974895368.568.7643452322876082155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004de3e4d42173f93bffd0d118b54e665995a570e6f55b81b987a481078d7c35
Date: Mon, 25 May 2026 22:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779748953
