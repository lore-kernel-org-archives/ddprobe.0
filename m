Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4228334CFD1
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770351834; cv=none; b=PNWBaJrZT3GoYKGkAIWnY/7tf/u14b0vrlR6BxEGuVNxCF1oIlNVKTgJnU33N5I4SLkkrJonefCEYB469m0n6Gc2EC7A+ur0IxtvZra9ehAFU8tglAa8K2ZM9UzoK4IXOFKGCF6DaIkz1ruIgWSxboosaX5yEr2NFMheAJkdI60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770351834; c=relaxed/simple;
	bh=aFKF7Fb0ZIpiNxwZQj592aL/zrX6gaPjD2YLca6hd0g=;
	h=To:Subject:From:Message-Id:Date; b=J1EPTum91Uo8WWcHqNMe5HA8V7nProodlHJ0R2eS8xbzX5LniW61lhloWci893iT7Ekomck9TcUlhtnsQB8V6vJCmS375greb/NlfJ1Znxv6azpOLS2BtcVDnYj7pLIp6JkTPT4w9rV27uHy+9Ib0e3TXAwL0mpzCO+ZH9RYxQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvUK2f0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvUK2f0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC846C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770351833;
	bh=aFKF7Fb0ZIpiNxwZQj592aL/zrX6gaPjD2YLca6hd0g=;
	h=To:Subject:From:Date:From;
	b=KvUK2f0uN9mouxeU/BVSjTPANLUnM9IJtSfLCPAmZlgSshZfa01C+BC/wSmhxJ1I3
	 VY3ayF84GKK2eQE13vtMrHVrYQR92KK9orQpJnMkN3AUqU5rEcUvKeMrVomAj7cv+P
	 ILryQo2P/OQAl13NyPMkinnWT+YizczQ+DPTslPTXWil4UVjCQPkldVmgY2bqsU9fp
	 O/9+sJV3cUNbAdy5gbFL8Far2gkaMqmzx7eK7b3rheuHDna5i2KNpeuBlpGOrn3s//
	 IHptJ4MoOUQCjt/UXzQcU10RU44rye2EoBpRFEZz0Hj4SXC8YxRXGL1PyH8aBfUeop
	 u8jWswlYbzXkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA76EE9129D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035183368.15310.3511297576681066563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde2ac1fa724c585994817c6fd7e2274654403b81f9baaa672d8c92087cb3dce
Date: Fri, 06 Feb 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770351833
