Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA1C1BE251
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743332394; cv=none; b=BJpPEOyxATeotHFIQ6CdG8iDWUc7tqbWmEZj14V4fPC9C7+Jb0qbEj0JWI+aBLUUYQzCNz4YHBNgiEldcWaKOkASQHn1P+ocTo5nv/zfe/UIkvaU0zMrr0v9gMEIF0tlsn8gtDfPWBymd35KsqSg57O4ilZqm0mghDLDxRrVE0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743332394; c=relaxed/simple;
	bh=x2+MRZC00sa7yvKHbJkVf+IQlLoQ/m3rNimz+52r2yQ=;
	h=To:Subject:From:Message-Id:Date; b=QcU7B5qiNbOm3tMT3TezNExAJaYETOyJvzT1Z8vPDK8/8wmF0WV8qEqSTtkaTuk7U/DEYG2H3FEP1V+1XiGYFpf68IqVKJiLTlwUEyzHeax4a0c3YzgLyHXuCJyKig67xAICWFKTB2qQj3LyWXsKuZqiD3mRxADEZsI2r02H8Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkjP3JH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkjP3JH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4674C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743332393;
	bh=x2+MRZC00sa7yvKHbJkVf+IQlLoQ/m3rNimz+52r2yQ=;
	h=To:Subject:From:Date:From;
	b=CkjP3JH8Gjx0/FnzCV38KLiCslQm8vHnrBAEPMY4a/uYko0neMTNlJ/aCHtdz/2GE
	 7k6vUs4X/KheiifNLHyR5Qx4WPkDYOlkVIbFqLNjBR1cVRjONZIpLN9pwsRTc87I4N
	 sHj3us+WJt7gxDNUUKdfjzxPYndTCg+A6zJnxqsenxvP3c5SJSNRmUH/0VhwYdFW1x
	 nPzPI2b5YpzASyTYTBTawhYXLCMK8d74oYv5sNGhLDGdcc5Hbry7pOPsLYMOZvlnYX
	 XWgPNoQMtgOpyfQzE+IaSUkmWxfqRnYSQV4ALWGwbXSWN1Gm0j+CIKBqpCMG5fuBet
	 croru+G2fs87Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E319C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333239362.3233.8350145728391920592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5246f1d4afebb2ebb7d574d21c5f54c546c3c975cce202f9e6e6123414c158
Date: Sun, 30 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743332393
