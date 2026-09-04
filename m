Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C804A99D7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788540034; cv=none; b=YhkDC5X5L/aK11TXfW5fATLAjPAetVDKtFhoI3qAQHf/IVyBn+bSNUD4sTy1mTsZALxYLUxtiZzqI0uYcbt5n/hAIOuLf5IipPtk5Gq+igw4JcAS0zxXMb8UT6pdNVBm7LbSa0c+Y048cM7WtBJhT4fljEmULLMHNQr9F8M5MpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788540034; c=relaxed/simple;
	bh=VUy2ku4Tqq/CoRN7wkPFGjHQaRDnIR+3sFBuvpD0Lm4=;
	h=To:Subject:From:Message-Id:Date; b=a1nPmTfwWsd55tuz/U6Vf1pH38pl/aNge9sEdZRMDvsJmBIyLNfS2/8dtDSmk9YoKmaXh+qLmbePntkYcnvrqHPFlVWGyw+c6+jBZrncn7lOk1n5bcgVjajmkdQgkBuhwFdydUZ2N3aLGSv03mj1ljBA3OqKwMB0HynEBuKZqjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8yU7MJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8yU7MJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE80FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788540033;
	bh=VUy2ku4Tqq/CoRN7wkPFGjHQaRDnIR+3sFBuvpD0Lm4=;
	h=To:Subject:From:Date:From;
	b=l8yU7MJ5PXQRSt7J7hXkyb4azid8Wmebl+1B4qKen8OrYYx5d45oIaH7EiAipEgKO
	 yZt4oraykAzbc6jR+Lqr9nxCXL9Ed+oHHeOu99xYhJ8MyIZC71Me0Arhr2/cTJvV4h
	 jKMpQoKDOFl8Jt5v4mUPZDBcJZz0X9Cr0nC8egDLmzBs1CZbdhd2pzhYp9JMCmmd5H
	 8JWHpJJDA3WvlJsfKa03Zyfgq0FBFXP3O6s92HsF9BbtDl1bZzAFR0OLchBBN4XSL1
	 HUrUOJXVpBdLtI2+PTfJUM+JzEaoOrkK3ph76fny7zqQuKY7UPg7HwMpVWP4YfbD3o
	 1A/Rl14Sm+ikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA152C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854003375.5158.2221992714432734596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a98c379ff5fab4c4c5ca1124fbc560f9c84cbe66bd953b228dff95955542a2
Date: Fri, 04 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788540033
