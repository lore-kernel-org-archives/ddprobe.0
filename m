Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4A526B95B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769579034; cv=none; b=mU0XHFAPUFJVML2CZoXmwS1qUHUOOtTGJZzICpPOrVWqg+QpwzgbTaOoewELkF9CWLx62VjsqFkhJQIY9gfY+LKQG2v36oUA5f15UO9MPpa+21rX2JDxjjlF/1iuTJObJtFSsG5CmVUJrdKPxMJyYL/4HksKV7pLvFThuK5scTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769579034; c=relaxed/simple;
	bh=NkllQT4rubf3+EU36EFniwkD1Wnm8asUbjFhiAoWV4w=;
	h=To:Subject:From:Message-Id:Date; b=IkAf+NjYcVbzsoATWY94ivW+jcO1VufJx4d4TZkjtg1gTfd9ssARvtn26gArT7v4xIsc8a48Bb3aKuiQGVAr2LC/3jEZExqRV88ljJsOq4IsyhB+UPzv2dkJjkoQUHo8BHjsSHJNIucRyGoGCEZ9abUNogRrKs14KmH3bCgiFJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qco3pll1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qco3pll1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B606FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769579033;
	bh=NkllQT4rubf3+EU36EFniwkD1Wnm8asUbjFhiAoWV4w=;
	h=To:Subject:From:Date:From;
	b=qco3pll1ob80YYO5cD7Nq5Fc0XDJZ3lEAyEgVhxaloEoFpViDQIHyvqsLRmNoOs3k
	 R/o6VUQJmuKOnGyCyDkCL1Pv8qRdH0P7rsTmK/3yKO3rRyVfD7FpuURVybJ39LHudn
	 rEidP4XoayZ6wOyN1nSn2hTDxy+1+METWtuG7DqXojkuxo8yIljlq3vTEsnOaIcotd
	 +2dCMQ+kHYKZW0W17Vxt9DaUJu1WcGiImwx0AeNfpi60jx+N9SIWbjaVO9vQDe+sbL
	 TFgr4by4Z07QY/PrWti48g2346t1eZb9g+zIjZldAL4RKrL5ZMK9xhrOTT+50qn0gs
	 dPoBlsV+zNHPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B32D35673
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957903363.11630.13028655882895266736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6eb2f7901c12413aae3e8637ef04923a3d1999ba2c671e4d3ee9f62b18ac7f
Date: Wed, 28 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769579033
