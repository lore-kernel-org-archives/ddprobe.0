Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2039A27F01B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763350914; cv=none; b=MVjuZbdri2mSczEFJlTpTNIeV8MzkiESzgL5dCEaamglHEZdyesd7AP9RVRdu2jEWorNBCnscOypPTTubjGNtuWdfDKCuMOE7NXDT2NrdqGVwtbM64vR0lesyRotmeKNWm1U7DvKujPAge4mA55Xu7oS81ul/0vFEIDuYp3t5LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763350914; c=relaxed/simple;
	bh=+GNkuesvi7tl9TZmlWVBY//I+/zlxZhRh/y3tJP50xg=;
	h=To:Subject:From:Message-Id:Date; b=KUQ+UCe2+JhSIQErUgutzKytxOj0bf5ROKcqcRo/zuXk4b07NymPeVMJlRyBBcq2ffY9FSGzogImTkS946McF0heyOVqiuYtJBOUg+0OQFU+/NaQWn8rXGjuMBVxAPCsObSsEv5J2Hg7H3WAriG24lHUeYlwlSdLBx9QqmUDvqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9gIjOzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9gIjOzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37FFC19425
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763350913;
	bh=+GNkuesvi7tl9TZmlWVBY//I+/zlxZhRh/y3tJP50xg=;
	h=To:Subject:From:Date:From;
	b=S9gIjOzvJDQ309eNrZnzQtJ5eJS4yeQoe8ZEgDeT36iqaWrbAfq76Bu/uoByMH/3O
	 3SkeWeUv1a3Zx473yUXRsijCgeFepJp4EKIhj3XJS8KP4GdcvOHxqVl1Y8rczqgrVN
	 TDDPGRvY6d+BxAxopji7bO4imKZVgORWi049tAqsZS29Fwzk0G7tn3XmVt9Z1E3bVs
	 RdvoUEAIn88s9PlHaumqk5go8OR6/nKHbImvObnsuG5BosinVvaawOw++A/BUhnuUA
	 hUF39y6glB762YYIVK8YV9t/detKYohzeovTcsee/UtC2w3FaemcVtIGQ1qsxd4WYZ
	 sXToeoQ9ac5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC0CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335091358.29154.13723868055036288602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0f19741bfad9a5970897a7f4dd75c30b64674169517f82d38bbb362be006a2
Date: Mon, 17 Nov 2025 03:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763350913
