Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F2928686
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788139834; cv=none; b=NdjW+vfCPsNJpkqPbk61uSTSc4b5ci6GGquGwskin/dDdDdNwnW0Ho8ZmDbFX17wiZwhoxxx4l2vAtVcM7N5CAvRseAToG2dXeDyEAVgvngb4tL2VIOp7q1QSxQoXB6Rc8wltokxLVbcZcMDTQS66fTZa77/nd+ll27b5blbrjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788139834; c=relaxed/simple;
	bh=N87TfqTyZ7OuZ3CE1uLaJLzR9tFZzIzgU0V60gGJO18=;
	h=To:Subject:From:Message-Id:Date; b=r4w0x7Zgm8uuFJzhIFIkVN/u2BCl1f1WAFvzhYWHYUHrwtG013dzZ0u47mLuWR15jWkWkkI8VaHdH1im7O6ehvkYrCRuhEwAJ1suY2RulFayoiIvRkUQqkIFYRdrjjPQiPJaWz4c7kKF9kXQGQ4Mtk6U6uBGw5W7laIdR46irPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rV0qe+HP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rV0qe+HP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1871C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788139833;
	bh=N87TfqTyZ7OuZ3CE1uLaJLzR9tFZzIzgU0V60gGJO18=;
	h=To:Subject:From:Date:From;
	b=rV0qe+HPCITRoEbxoAIW5DSmCf4/IPUAmsNwugtaWBuwLOkLJyxqJ+jDgpeHccJdF
	 bQXRR4MS6WHhJ7itWM7QouF3knTrwxenLzDe4OUYrDG+whrQA2jC5b4n919zthZUQW
	 K9NMxr1P6vDdHCtTklZl6itAWJT9WaYx4gudodo8ILlL1/QQ9QDsjbXxVKh2+aC/6v
	 cAhEXLqU/DmAI8JlEtccA6crKUxQc/8K0Tl3VnHdwfI14GhTVIelTiZcvdZn84zbSk
	 2IMgnhbPDHEUs2h4vtQ/kKx+C4ZkiddsjTwVCGepBxtz8pxZR1xbMgb3wJzyCiCeKp
	 gQgjJq4g4reZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1A0C61DE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813983369.10850.8770632243731775167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73dcb654aebae50dafb26f5b3c7922af27b44bf8963e7db25ecb3ca603e5a8d2
Date: Mon, 31 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788139833
