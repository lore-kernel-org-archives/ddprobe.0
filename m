Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A92946C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751822994; cv=none; b=ZJIUXO32zPbg1VMRHJ4+71L6TEZ82apjk/dSvWAMxy5zYZbdBOXTwvNrjWNhYv7hOSHwelN1sKWYRcinVy+XQWyDxuO+hq5xFEOPni/xKlhyACc5SgfvOPO/i/82SV+3dAQ6Re4Z0qkvdwzdKYr5j5yTYutlUYb2dZ+KhEvn4Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751822994; c=relaxed/simple;
	bh=ovEnO4gTpabXGjK5GHzDEdj8Q3oWNLvn0inG5X1TI1A=;
	h=To:Subject:From:Message-Id:Date; b=kO5D3QETENrZro0YTd2YmjIo3F5b5/TWqu+/otnvR0qbK0PRHK7j3Vkle8Zdkv3l3/T7L3AThVn4Fqr4TO1whCQFa5uTUPzDWvJeGLl/BF9NmazVPndjPpuJpImkpm2bMRuj78F8kDtgcjnkeOKlMfTlEb6+31cM8y/trdFhdg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf1YKf+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf1YKf+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69EEC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751822993;
	bh=ovEnO4gTpabXGjK5GHzDEdj8Q3oWNLvn0inG5X1TI1A=;
	h=To:Subject:From:Date:From;
	b=Cf1YKf+ellHcaovfXi+KzWgeAupbI21PU9FHpwWej7Pkr3Bq3NSne+TuOLWT7yxti
	 U0MwRht6hJhOB3gSdhk6RhHe9QhtjHHLz8wi6ve2yH13zvM/DBYVXBVT4NP5pg/Ob0
	 c24xlbS/yq4NvBnVPeJP19dNp9VUQN9vkPeTpd0gMDUW421/mESnGpNHc5Z9itWrj6
	 Buww8v748FzEaLvimMhSs82yMgqakXuIJV81hSJmTSYhsH9My8aRmdNatGKUvpYM1C
	 e7vr+t0oos/l8QkzPddoBDnPd9gOnBbmsJpjSZb90iBxf7D9LTxFcT1gMrEQIide2X
	 gHX5nAI8iNNdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EBFC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182299357.568.13179010985717688899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5e42589f9c37f98a0bf9fcffcf47246affde0e4f6c78de7d49e853c2453532
Date: Sun, 06 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751822993
