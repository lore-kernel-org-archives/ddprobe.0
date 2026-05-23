Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4274E343890
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779508954; cv=none; b=CKDRxx9uX0o0vkpwxWHbNzcxsRXl9pICx82yDbK69CvZWGrkeXQeE25iHRGf9OPAIu3hyy+dzYhnZUEdEzAUMKI1cie7a7osXv1hqlnPHMHtYnNlHk491TXsmq4ylfohcTFie+6O0Qp+RlJQbTpe5XCFjldQDMKGmSjxjj0muTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779508954; c=relaxed/simple;
	bh=ZpKhxjYuP9Ht6ocDmR1Gr9r3MiwPI+Bd0pLtAuIcCe0=;
	h=To:Subject:From:Message-Id:Date; b=nluV1KT1LgsRYwqO1e4IzEft4iaqrRVogJCpuWvaIoBBUrDkvI9nUlaaDPq4fvOxlSg81VSI4/HW8vCp6Z0bwzpk3Gql+mKhYpYQjNLG/tVBIfTQ1koOmUVDee3Y0yvsq5yyuHScd9i7vnTqzGoeGaXbJh6edlCykvFFB2YI83M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgaz45rV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgaz45rV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94CCC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779508953;
	bh=ZpKhxjYuP9Ht6ocDmR1Gr9r3MiwPI+Bd0pLtAuIcCe0=;
	h=To:Subject:From:Date:From;
	b=kgaz45rVpMCDZu7cUkEIbY5VCJL5rwT9/jW1d5sNe7ie4EbwZhebGklGqEN/Pkizx
	 u65X4quZi64svXXXlyq9rSN6bFEsdQ2K9ESIWC8ZBqgHndartDscv2pWgstJ0ZvKaG
	 Y7rZUutRuYWvzO5K2V5qdO3e/aHa7q+O8Lu42on3ZP+5iOjDWoFTxz3c7tz9nkyXXC
	 dcvKPPDM67Dgi/NPLbSKPsvkaR6zKRxykICSSWZkmJ54Clrh4TigL4tqwN0sT7fGbR
	 rs+7ZTEQCQPLNrtbrNO1ypN16sZFA+jsy8uGzZPca0DSf3ISww4RGnxcVZUCSflQ9z
	 Y+IQG1idl+xlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD40CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950895368.2202.6559810384056288719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01cf8fcc98cf91dddd87626ef5e7411646af3fb1f22ee1586c5cdc1028f05a5
Date: Sat, 23 May 2026 04:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779508953
