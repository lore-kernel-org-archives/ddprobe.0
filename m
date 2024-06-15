Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC6F1E89C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718461103; cv=none; b=WCKAb3jRGnOcfngv78iHT7fpkSmQ1iEwpyAJQrklZ9oq94YGliSoJ1S+P9VqzM4IdKBl5ogUzlMAGxXdoRxFihVo6WMtuSfaWHFY3Tg3nweshBvApQuLq41m1Nv6jVH89xE+yNG5mJLoGA1tNnlkuKxlV7ISo8emU0pLhY7/ppI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718461103; c=relaxed/simple;
	bh=0gMtn09RSFweF/gEMA9ror6zfkg2vNa9amZdFzzUTno=;
	h=To:Subject:From:Message-Id:Date; b=Lm16JGUlibMeU0Krm45cWBVH2luaUXuudkJNcMuSsDLWuccv5nNqzgWXd/G/87vv4/kAPi+qGlP02jmEIPvOuRNh1tctNndfqOe8pMH9yFvsd41b2NreUnUKik5SQVrKRNDbfl7lwG2TnuuFU3ozpreMuqDfvH8psOq8lNr1n2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhJVtRbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhJVtRbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72BBC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718461102;
	bh=0gMtn09RSFweF/gEMA9ror6zfkg2vNa9amZdFzzUTno=;
	h=To:Subject:From:Date:From;
	b=RhJVtRbXEzD6K4TSL7pxmXi/2tPXts8FYTwC28jSKnejZb6SH5p2nvq/eKAnsCNqL
	 16CofwAfjXW3CmRmD8dg0w4bbttMRBNsJdI47eXvIQByqXyRu8CaD+1j1azc5FFR5v
	 v/XsUrj5t4enKlYqJJFSpWODYq51e77K27/2Yiui6ktiE1Bz2nPTrK7FZu1sPZS56O
	 zuBeGhu5NiyGf7ihnlFHSb2WBtQiAtLNnIpRbTzrueevqRAqmXx+zhs6MxiMMm9zeC
	 RdKwvPTFHQ0DHebIX4cNXor9a+7HgPtKAvKEhxZl425x2dqC9loyTi0laqVNYsldxg
	 a/j4+oxLJy44g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFFFFC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846110280.375.5844679094680038814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229972c38fa0629cd0eadd81a685cd579a99e8aa640f4322b5d1f2143ff2f4ec
Date: Sat, 15 Jun 2024 14:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718461102
