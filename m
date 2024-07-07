Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E2C4690
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720317383; cv=none; b=EOGCr+5OZUhcSeKJJjd8huKV81gOM9QKIO3R1ctI5ditkbyJEx43crXwKmNSDwscUaCCklCKS/WJHAovDlf3A1IWuXHKoFcTbsPRqS29lLV4eV7cFfPt6OKNfKaAZUgN1c549QA60Wa4UmGihJzqymErgrbuCii1d8/zPlJ8lBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720317383; c=relaxed/simple;
	bh=bOkZhw+EeBwaKuDSnU/DLI8nWmBVXUsB65X9CFaJgV8=;
	h=To:Subject:From:Message-Id:Date; b=QuJOM8NGfiJZu1y122vZbND9T5D2glM0uOYM3x90riK3/Ejo+uV1cwHOopXL8lMsMNLUXbzZtOFbUQsj4AcjjYmxEyLpUs+drhmdK5aK2/Pfk7Yc1tIUndliYrUfJJzpKr1nvmVDBtaSQytC7wBpM8GjYO5/WUwetSCEdaav39I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+u2IpY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+u2IpY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC96FC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720317382;
	bh=bOkZhw+EeBwaKuDSnU/DLI8nWmBVXUsB65X9CFaJgV8=;
	h=To:Subject:From:Date:From;
	b=F+u2IpY5pmJ17PtLFsIilnddySGaFzAlSLrojci2tBA6bDJaeUWjhgsKgyVAJB7Ek
	 1nJb3aO2MzW5xDd+ECkc0zqEvSzXZuShNAmuUftKn2/mMsKrqaGG2tCL0cwNWm2bxj
	 ZoeSPlW4StT9/V/1xAQLoKshpxpLPzQPUfV1g80M1uBquXqs/22XQVLdxqGW3Mnlag
	 txj4k7O2Abv1lo7mr3QmiGBmZoow3ziyAWKroZ7jjwiQK0m8F/Ewx0DR1RosJcWkqT
	 lfJqTp/503pyt2dTq3u65wmFphkURGyJ0mbZ9PXMdMLLMgij90VmgUJMBsmQ+rxJ3m
	 PW2pLkuoZU3Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6541C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031738278.27436.949328551728381910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adde4f48d66a79953c31c2ef8fd45895a416838665aaa43c39ec9c79866b26e1
Date: Sun, 07 Jul 2024 01:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720317382
