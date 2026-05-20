Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0BC13DDAE
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779251434; cv=none; b=h1d64u/TXZ6c0CZY4D4lqHFAGFD6D09bZyebUKeFkctX+gjDcd/z46Lg/j9jeKMfJh0OedKaDZbS60GoJaNRr7HSmMxEoEbHYuL1eSwNpd1XBYQkplNk9g22rPz/Qmoxr2nWZNzGJ70H/jW9X4yGhp1NFJQvI9cIndYQcE6qkVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779251434; c=relaxed/simple;
	bh=aCf1zTYvuzsrPJOjNybRX3G7VcSB0st3EwwD4Cm2Zdc=;
	h=To:Subject:From:Message-Id:Date; b=ou4OyFE7xFTpxAWQNfUDGAj03DbVq0fzKVqD4XGMShSBMQ7vXfkHCvOJmU6OwLcXvu1kNfSpvQPvt/JVWSNXRc4bLrkpt/dKYyuTZJCr1naiVfIEtIz+yagjTZYSCZZod+hjLtlqKKinCUj9NGbcCwnjnWQOxfpkWECjpTpW8no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1gBElOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1gBElOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A9DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779251433;
	bh=aCf1zTYvuzsrPJOjNybRX3G7VcSB0st3EwwD4Cm2Zdc=;
	h=To:Subject:From:Date:From;
	b=W1gBElOoGT7BFxp/pY2svEdzdXk83w2cW4VxBxvSy97812C/jDf0u6Qf8LzkqSAye
	 NXThmDX0dBa3ZZlx10lZMZzLYgXxilYke7VRoukgBtRp06586mJAmRuJLpiA9rGxIy
	 j67TPTzjCYchYlwFE69l2WCq7ao11BtEb73cYxCvuzZ1X9x6Npogo0WYg2DIHhlMVl
	 hDQPX05SyJTpfC9ZH5NC1t6AiVHxS2muGaqvcEzwuVwElDjT7HgBLbxOvk2YyLyigo
	 hZYidg+uGk0skDjB57hnJBXCvsU1OFvNcvsuI3RLuKWH0oyaAcuoBxZ3H+rtKVqeJH
	 T5Hlu/tr0jo/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD50CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925143374.12036.4537777129757569731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883bd38b98a47dc122e5bb8435fe16fb7ca5cd832792d8f5567c464464cbfb81
Date: Wed, 20 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779251433
