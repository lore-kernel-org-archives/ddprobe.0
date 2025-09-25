Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C98142A82
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758784794; cv=none; b=XjWqOpn/FBpKcYBycVrel2YROxs2PyJsE4RDQWzN+Upd8HxjmPP+2ByMHbgG7KfmWxhgQ8Ka7Z6ikm2o9cE7+Qj2r0Bu9BtrZvk0C30rrIe9OuZ6OzyG8esvOA2sTVlaY9EyKHpKF532HbbkF3vDBFoyxXNhEqFjXY5hTJSSI4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758784794; c=relaxed/simple;
	bh=4oSyQUqlaZf4eKSvwklyB6JciJCD1BahJC2ptUztHG8=;
	h=To:Subject:From:Message-Id:Date; b=ts2cpwwN1cwj2MZV+AuSOn/ZXGB9Cl2NNrYl2EBdhBqAmspnWmmoOFzv4Lx78cM1iwX6ltXj4o9V4AwwwxRr4aXu4nn05/Rn+pxBj/cLbaA41VRkeV4RxT/UZyKcVAHU2erTI7pTX4Ac4WUgAgCeMByOkLMRbSjBwPB6vjSUnzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3DbDUgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3DbDUgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D91C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758784793;
	bh=4oSyQUqlaZf4eKSvwklyB6JciJCD1BahJC2ptUztHG8=;
	h=To:Subject:From:Date:From;
	b=e3DbDUgvKR4cFL+R3amo0BSau7sTGH21Cc3R2fr7OqpRuZzIk5Krf7xGUeAyx7aCV
	 MW6bL4jtv3jPsSeEJNUXGMy+GTlsz6xS7d87moxQ7e7qxh6IxbWIYo7iwwI7hUwFCK
	 bqjVMWJaxOhebxacbhiE6/tii1NjLCtgUW+ZDg0qZKDj16yX1MJUD2zP1YBBbhL64l
	 n/BEcYpm4HWqQxK9pNHjqOfyx30fvkZV8+Ja/1ICg0QLs1Nvub1n7ZKyYPG7qKAAgL
	 O4+WuIMkY0z7UOn9MykpzHrIgrVa3GqINHmUf4PwKWsrIODK8QFqKJKG8XxcCbCZkE
	 rdQjkvP4R7P5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93278CAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878479359.1166.8568491251150751036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ab3232c86b972ab06f953190bdcb17012e7411161cc8c2ccd7c46dff8fb234
Date: Thu, 25 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758784793
