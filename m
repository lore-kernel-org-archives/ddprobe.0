Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A62125DC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716661463; cv=none; b=ToTylN2uocQvmQQ0wdBuPdUtErHf50ADqasw7/QBWJWeMT4bVQB2r0b17iS4d69QdTM+uGHm9ZlPWrcm/OKJ9MO563ZUqCGhrVHLTE+WUITpBq+hCQfP0UWMJJdvCatnzJIegrff1NNRUjSCC1hbESTwo04btUgODd3l5/oJNnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716661463; c=relaxed/simple;
	bh=6xrxDOjxcuIIGqgvNFqNxBmW7ll2lIT1cVkUdqita8I=;
	h=To:Subject:From:Message-Id:Date; b=pokLxhjSMCQcn3Mu4bvKFzkQnIuSKKKtH7ccH7kEI0M1BJVj29PIfJBijBFCNJGWXXx5VmebrggLKLqT5Al9oP7b7WH/qMPG8f0vLBhe/8/Xu5OfDeuvTORWFw4kPbbxfvub5UPRyy/rC3sg5HgLky39nahZzw9mPrtpy1ctADU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qm8nqiCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qm8nqiCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1846C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716661462;
	bh=6xrxDOjxcuIIGqgvNFqNxBmW7ll2lIT1cVkUdqita8I=;
	h=To:Subject:From:Date:From;
	b=qm8nqiCRQ2s+NDTEB0PfY3GaDCKih+ChWDxYG+i9sftrva8c0/FKXBn4vO8l5IxID
	 cT5hHO9ESKzWGcRba+pYqVq7yZRID4C9iGAQcHqNXpBCtQylzp7UaogTJBxk9EFsPx
	 Zqf4ul8JfDd2ULAHoh1MD4+HD2oAXyAZQ3PQP00b3JNKcJAkTxMGIsINiYYoSD1rY4
	 aTCIzdZmwrKsPnfyXakyIsORZaw4MurF0znv6cH1hisKwFCd+/tNMYWhxvO2tLrz4R
	 kBPs2u4OkLzW402a9NETYr17YBvGn8uMyDqY1JYASevqKOq6hq4/tRCUgv5d68etqX
	 Tv+yqxeVVEWjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6059C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666146278.6823.10274559918028225702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ff890b3b79b94ae14cfafd9f28774b8bf99064389862d7cdb906000abbd108
Date: Sat, 25 May 2024 18:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716661462
