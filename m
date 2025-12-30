Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191382D0C66
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767098634; cv=none; b=MB+5e0M3M9BXFFMKsAK55HKUgiLx/jSC1ROk3yMYp9XdvkVhJhdKiHgoaKSaagwa1PQSJjBJWDMsDg1QzixtO+gk0KXR/Tb0mTX3Cj3rfLqnf+J1R4E92sTOskawLVMTtRiShR2OqTd2qL0g6MutdrZnQjBHmufMVLp/ULoKMi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767098634; c=relaxed/simple;
	bh=FN9F4gHJZ1OhoAXbbmtjswYajMbHZC8GB4rNEXu/sj0=;
	h=To:Subject:From:Message-Id:Date; b=QxgrGH7GHjYp4/Qj8Yv+aBtfMlLDj7oLSAnn6mtT0ZoFcIJheXTZJQAwRHlm/FWkeheXZl5o99RwG7DvhRVszCdNhuc0PU+9moh7e2y/utYcYaSmjdkXcRLLsFYDD5ZrwquLgVFvoHkev8wcDyFaEr0lSV0/9ZcjBISRKLW4xPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC8Hx0Ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC8Hx0Ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A226DC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767098633;
	bh=FN9F4gHJZ1OhoAXbbmtjswYajMbHZC8GB4rNEXu/sj0=;
	h=To:Subject:From:Date:From;
	b=rC8Hx0AePO8TVRs1UDELBdUyRzQ7l/mcb5ib0xt8cltbprMaKY0lekiXtP5iUaQ6k
	 i3W5EViq6JM2s1SC6hfwiiS1RQnPIzMEkVz8PUBv1gHUQv0VBUrUammYD5ARNfD2wI
	 OsCpjXOrYJfo8my9O7VvuwmH3+MZNmRs97EEfFH1fJBu44gLKKZd9yjZJa9kTwsen4
	 bnG1tG1Moye3vYO7Gd/Bsp5Qq49Lgs8hb2RLNKeZSL0SLaiHkzD4kwKklcIlrBnH4u
	 SOxsqqj4Qnm1p2UV5l7gDpnEwfjMt62QrkCpaqYZ3LjYt2EJfeBPkPlZI7S61BkKVJ
	 poNb/v+yMyRmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D7E95A8B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709863357.14189.9026438555705159405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a799e6c3a81994f01bc3056ac5ee9c712419acb6f8814a7d364cdd67bf6f53
Date: Tue, 30 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767098633
