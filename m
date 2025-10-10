Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303FE1DFD8F
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760122794; cv=none; b=amdS/sYllKxORUPVklQ8YAwTyEBYCvOzOTclg2NRchX6iIUTRvNGd1qO1Dlg092csHNIwQ8P/D6pHuhZZ5f2uHOVKPsUNhGlMcxfrJV/xborFu62tL6DWhaQkTgmLy8LmgspX9AOoD/SZgE0fg60ZXrKz7mSfgOxqn5UHkH1tko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760122794; c=relaxed/simple;
	bh=ripbnHFYwabOj5aFFp94DTm2pJWQ8TZALsdyOTDtX8k=;
	h=To:Subject:From:Message-Id:Date; b=JI2YrMu8icWniXV+biSknFvW3Dh7YHnbEymVsmr+PMxTxe8Ua8Myjd9zwkHl13rBBu9ezBqcH/VRcVTbOFFePYXK0eKMP+aS1H83hlM4HLrwWDgE6vqhUbLc7r9PL3t9SEtNgLzC0Ykn/FZIqC4AMSihw/y8HLBCTyfPecGCVSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDjarhNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDjarhNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA96AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760122793;
	bh=ripbnHFYwabOj5aFFp94DTm2pJWQ8TZALsdyOTDtX8k=;
	h=To:Subject:From:Date:From;
	b=qDjarhNs3vC8ZuTb8z75BETg0Ta8HAVupfQ+m+7cz1yvsHvaQK15h22PbyBRpL0wU
	 EUonw80AQ98eoonorc52/2RD7rVwXxb0epVm51O5ZGSMP3s2upUhtzwce3Q5zvYTGZ
	 C0t2VkqCJt9nnRYivqtsw2W7qVIxkL8ojUNVoWIDlXZfqv2pTpKgb6KhLf3iTJTnxf
	 T9Lt+5hftDx6i2lkUAN3+gOck7JQA9HBI8tJxF2CMVOCKD1rsoQ3ICBUXgvAEHAUX/
	 oLlAonpFwjk0xuiNAkzJXbtZH2DUWi5ZiOPjqkWTw0zz2qHs2zLbQQx6laMEZbD3FU
	 L1VJfi8414mSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D0CCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012279360.1718.2776771569650746901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f9eb1e8c0098603e0ea1d2e96cc78e3931b3ed5ce6697046b730d0b7de25ef
Date: Fri, 10 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760122793
