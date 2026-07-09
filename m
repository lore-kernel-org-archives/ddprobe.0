Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4AB3B27E7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783639714; cv=none; b=ongs37/Is9dDJEWXAuCep0nk1c2FiI5gU+2cuRs89IYqlaUHt0qIDeTqMs4I3KrogUkc8Rgs5zg43j166hcqXskiawJCsC0XSu0DNhClgp+zJdkxB42tX+0Fb10XQUCC3Mf5Lsaq0IP91jqMNKQoIBZD50WIfEzZjRIjjhaMX0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783639714; c=relaxed/simple;
	bh=GMM+jDJwuwbHCvksgEuFVvrHKys/X9gDDQ2FQLFC/00=;
	h=To:Subject:From:Message-Id:Date; b=UubdwzjWDSeadMv9TcqGFxkw/Um54lNuSumwKy1BulqG0iHCeSXR2y6Opc9hdpIsTxcpZeBP0djmgyppQgRmU8RY8iEu8kTDd9RXBzrP9zzz2foO5w2SD3FC2gd4kUYsGLtJG+C4VKEi9WiczHfrpvLXpNxYSCCIl8odjsVC0s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuoPkLKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuoPkLKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98ACC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783639713;
	bh=GMM+jDJwuwbHCvksgEuFVvrHKys/X9gDDQ2FQLFC/00=;
	h=To:Subject:From:Date:From;
	b=nuoPkLKiXkNxb4EvA69pD93wMRUKns+qdq3nuHNSkor+/7SPznCS6+Ud1fZLQy3/f
	 N3mhqB93SjZ7H0Fzrigsq4q0qV8rTa0LYCf1bg7DkPPsA57RU7jNvxn8/XwIcP8FT4
	 0CIkHMrIvnCTwy+g61uVMtSse4GqpZtiirG55ClO9hKgkMQiqZJjAx9RUPLQt+NlYj
	 L5Aavt9TNZBakwJWmVDPtzdRo16xjVQvzfqK7ZhDUQ6tGr/nBPPF22JfCF06awoRQA
	 +SJ6aNSbh6WZHQ/vXNmCj8eUeb5HAyvZ8PiifjWHONoMoupPncbEZsJYRKFfofPB/0
	 vtAF4ENqPWVzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EB5C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363971368.27651.9030986723851124735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffd91681ae9cf25849b97891fdc5d1534cd4f0545cfff79d874efffa559e4ab
Date: Thu, 09 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783639713
