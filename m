Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADED1F91D6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772365494; cv=none; b=ZV0t8PfE5007D6vE3C689ZBU3Rvzp2XrpZgLvk1E7Cq/dELofoPBBXyPpnRZ1pX7VAqotA5ucxMN9+EXoyRtLv9N0iIFm7uOqpkWHkEcCIVbnXTISocXsY2IS5gyNhkOhyeWVp15Pv9S+maH8PlaL1G2eSQAjgleHyWD29R+RQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772365494; c=relaxed/simple;
	bh=7zBkzphNtE2Tjb6jFTgy5xTXSdX4e455PBJZsndS5tw=;
	h=To:Subject:From:Message-Id:Date; b=r0L7q25QVuLZfhDGmiKT5FDsfw8nM6zdaf5xCKnA7eIfSRlCaQ/LfVzdhLFAtaua3RhvfsPBxjcAgO3whwI4PR3atL9v8t19HsMTtjszwWbkWpAcDL/O4ykjkfdHqtRDL+yBe6Chk6UQpqe7WAPOSH4dxns0XLG6ScyUnGGzYpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhqarnu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhqarnu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABB6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772365493;
	bh=7zBkzphNtE2Tjb6jFTgy5xTXSdX4e455PBJZsndS5tw=;
	h=To:Subject:From:Date:From;
	b=mhqarnu4dhtBE4P3O4Q9tcNsbJv5nkz26m6X2O5RMGDgNB0MdkH74HHlrxyF6OGWA
	 JncdtvkeWkTUFOJkW5G2qFYE5mrWcww+CQKscroA5Zkun+10D367Heu8qmM1wGtXWH
	 cD2adAiFgzqGchtIeorX60m1QHAknG5rTwoMLipBwhZpBPVYPPVdWwh2b2vevSckwq
	 R407qFUUR44W13c7inGd+SXP/JYhcVKWWhqCNNOGym+M2WIpHFa/leu+y7KPocZTm8
	 zztso836vkRWnpVbZ+9TCMqZS+RDQKr4TaZVp4baE8Ah2W4ATsTKarN+sIXI2+1B+/
	 yZ0YE+AiMmVmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95830FD0061
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236549359.8259.4606003047030780304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3dad4c2793a3da42cc4f1903cfe3f02ba98582ab12d29dd71f93ba8bce89d33
Date: Sun, 01 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772365493
