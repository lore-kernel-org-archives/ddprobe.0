Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B18637BE84
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789771834; cv=none; b=cokoMrzuPK1p+3iwn4JaGcMob1jqfT0OXNMrEZscbzqnJHCwROfWiap3yFFQ0RfRM4kpCBCs4+783nqUiJAS2k99Hf+PnGDgvEMaD/tMHm13hz8HCV/vlSke5Q4x2zYYFIabwRC9vGN7E5aXXnT60twXd7nerzD/C92iHpwLcE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789771834; c=relaxed/simple;
	bh=t1/mZGi4k06BatWTX3qf/sIU9Zhlwl42yIUTeFgdhL4=;
	h=To:Subject:From:Message-Id:Date; b=kTtweFPvtbq8XVJxezq3H4oR+MWpScnU9BUyhqZKCBV/8xGJ2ypeXyqwp22MElMfpF++bKHHenzMWP6AYQxn3W5TW8hzzQm7RnXTh0IAtBZYA++9rwshoDuT3tgqHNzAU2ez0N+61C8aD5FKMUgcHbP1NJNA2HeHlTdpV3dFvf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PK0ydcFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PK0ydcFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82C5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789771833;
	bh=t1/mZGi4k06BatWTX3qf/sIU9Zhlwl42yIUTeFgdhL4=;
	h=To:Subject:From:Date:From;
	b=PK0ydcFi3v0oFLc4cC0at3iyQNqoNc0ayuW0OoLU2VNNtcflqGTFn87DtnITxsKxs
	 /u/0c3/aJa3WRja+47XgXrpPTldTquiDd3OerESCMNE1hcMkbIzF1JLf4DcFIiTDMl
	 zW9rXc2eVobyMjezOR7oEHhDOjbL6xCkf3MzsfKPhyvdlY1k3vVThI4v3g9+TAGlra
	 OCWzG/q+KZaw2QB7x5R5/wk4gQy5wq0wDq+ClN5rQefYscAEPTCSGOaCkOixP2AUGr
	 O/rmJUFUuvktPIE0IWzDTZ+Zm/ZlU0KJEe3s1Y2IMIUE1wHR93I/yB2NHpXgmOrGZq
	 WBVmH7nWkQhbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFED2C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977183369.28564.6803476630192732918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24faa61fc38d85496b374862e338aa0341f0324916b25602f0ffb1c00dc171a7
Date: Fri, 18 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789771833
