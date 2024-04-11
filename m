Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669AA374F6
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712874563; cv=none; b=MCz1/q8jH2SdiKEoOgNI958ukGLqT/uLF8HS+0/ZISt8S8fMutkYd7HYV5VKT2fxd4AV9BPCcSip2zuBvmKedckxRHNmzltRkG4tpncvtpgBJKETAl9SrQQ9Az44bmywyLQInkzfg7C7hckFxesFfBVttUs+9j1TvH2xokp4FC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712874563; c=relaxed/simple;
	bh=GcU1Hy7gKsNFvU022dUa8iU4aiautXQ3qtfgZEOfFyk=;
	h=To:Subject:From:Message-Id:Date; b=cp5nojM33tXL3lO9kHqOztICKSNLdHnEHEA/UufoGP/a3fGP/gsK4BWpnb89vEu0/tYaC2ASS+mv+l2Ve4XGVy/+QVn6RRfGzdduQiSpz/H7w3yzox905+2S5mUjQFsmLDtSsRNu2CLF+jFzbnQtOCa/yqxtE0TGckHKXZlwkrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiTAGQ7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiTAGQ7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BF0C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712874562;
	bh=GcU1Hy7gKsNFvU022dUa8iU4aiautXQ3qtfgZEOfFyk=;
	h=To:Subject:From:Date:From;
	b=WiTAGQ7pF0ZU72Kziddbf2MbXm72YQ2pDofgq9tW7i4vCiMnQhBp8/6S4Uvixowjn
	 Ru1oc7WLRbDSkkuwhq0vAhnPgJiqd+7wzV35EG0UOZ62Z8QVMtUhAaPMiB/shTcOOB
	 URQMj3VvbYrPSgkX0FCfIlxmy1obEAatGdOhsKW6COaXg/NRKyIwZCfZSF4LZn5M8e
	 eMQOAe3GSssi0yyj1s5kO952S3XvvHVLMdzo67uw6TfIA4jfwuK+k7Mr+OCXwGugZI
	 K38a4UU4eVxLmG9gc50Bt3kHgp5ZBLyn1SqM2HvawWnS6pH2bJtx9cZ3YBUjkIfnGq
	 QX1RHYAk1YPwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BE3C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171287456277.6786.10564748737238272470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b52cc2c92a38a0c2a9298fe764d986d3eb7124ee679090290fa893533e149b
Date: Thu, 11 Apr 2024 22:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712874562
