Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306C8639
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754110194; cv=none; b=IDfuB4tl7mukXGYtyD0grMYatk7yrHTMgFWkW8zZ6dRggVlHi75ydi2v0IZ6uCOuCND1AyvkJUk3+cE6uLbu7tuefLcYqVjRvFDgHVAVAqhMhi+J2QIhhhV0CrsNSIS5H3bjPz8NEpanIFIO/p8pWirwhCYuDK91AImlSGIBwqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754110194; c=relaxed/simple;
	bh=/efRbuUzyhMllK3mnWr+Gpt1ZDYpa7WqAyQhsLMSgNE=;
	h=To:Subject:From:Message-Id:Date; b=CmxwFXn1HZhReWSSdzP7C8UZiRlnfVOjr26mnVXxK0schcaZ4P+kLN/R77Gwos4mTbT2iyDQr4vR0zyqJVDyGRwuT7E0eRHKj4aL/rDvybOry/aLVoOggarNxQKWyYSQwRdzt+7ahXXirkbIpU7nEQ9qfxdshjHE3YAb3TrumuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3wq6jxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3wq6jxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A649AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754110193;
	bh=/efRbuUzyhMllK3mnWr+Gpt1ZDYpa7WqAyQhsLMSgNE=;
	h=To:Subject:From:Date:From;
	b=T3wq6jxDrpRdspqqCpffB78es6/6vE1uHxNOTl0Q/TDU+UwPTa/o+yIzThvRZQ9xL
	 PskRRcZaYJIxKaNj0ZctMAHud34ThU2OK8d8PBg23EZCJZrbV25c/nySWtqsYr3BVb
	 aax95Exge4zHjMo5FhO1kCvcbVpKeSto/t15yME9srePgXM5109qpdZiyxQjPxkzWq
	 Ezl3HjtYnnChA0xtIlzn70NRVxLQKZzWy32VubXcGydRfHb7RtVabWX15Y8eQNlm+D
	 QJUknCShFEKm+MNVKHWxJceELhZ9PjVytmtB0cMhIenLYHuhqIScbjD3XEy1H3/s/I
	 QzkxsxziSxyJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F3C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411019357.24782.12482617136575134422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92d78fae6c3958d3d008c6c3073a44e33a2e960193e5191b9162872da077867
Date: Sat, 02 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754110193
