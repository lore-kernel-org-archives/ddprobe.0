Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7D02DCF7B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764773573; cv=none; b=oREPRw9sa/ZOLOwlxiO7Y1q2xdJTt7roSD4J92sqZg18w63dFP2Fmy90+MrHL8Y4NN4KaFvSm3JJhRlQhMzFiZgzkRRYI8PBFIYtBYmgnhbCPZHPB34kc2FmZbF/t2uzsMLWDqXBDEHMRqoQO+4ZBDdCQHMbXXPGB4FdAwq38wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764773573; c=relaxed/simple;
	bh=zkd7PUYW4hkyHQbkLpk9MYJOZmie8Rc69w9xOtrWlkk=;
	h=To:Subject:From:Message-Id:Date; b=SqcwqMdm7e1OUXxG/Cq+h+7VfaAWGrhRhebsL6686kt39r67VbX3uhnLJmXYZSFMip1q7o+icVZTWV0h0lPBpUWSJLvrEsihFAl81/3i6ehPaqFDFPLx8blGVp3hZedfzoRQeTaV4ZTJz86YFi3qFJ6QpQNG5qbirVc2Hn6v3eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmeMzejp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmeMzejp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E867C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764773573;
	bh=zkd7PUYW4hkyHQbkLpk9MYJOZmie8Rc69w9xOtrWlkk=;
	h=To:Subject:From:Date:From;
	b=fmeMzejpVL5qQeMfrL55KjuTGXuQbZU38vH5Hlye84jYdpUTDiQ15r4f5x0kJLNVL
	 oOJmY2mbn3UBucyIpeAtyw7pvjdI0pXiFyN8SFl1PpY6GW1+xs4Rw2k0WMweDtiZVi
	 hecr/OMV8LzVEzYMvLfE4Pecrj3QwKQsSWdn+iFJhwUi6Ms9AKV1bVZFQ/ygAAJ3uH
	 UGmsya0HpwE2c/8jBVe+Fn4J2byT6o9bMLZuGiWQOmUhGY8zRiwVV96i/aadetg0Z0
	 GgcQmUWvWugE4TMQKOd+4iXuQ0p4Lm2y4jgDpN3sB9qhdpzdoiPGpUF6nS8WNzgShj
	 0Wv85p842y+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A5D12D6F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477357358.28111.1295251700518639910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e01e1ca5d3b95d73c91405135f0a3fa06df64db5f1ce70d5204ac7692a96780
Date: Wed, 03 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764773573
