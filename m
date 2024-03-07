Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03D56AD7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709784497; cv=none; b=X+/2BiIHvOw3pmlKXrngiy8uBX68HtnXSYksSpK/83nxk+f5MethZxshDUnaRwGeZ3p+470tkg2OpZHB6s+48fSfonAR7efPZv8tdZg01Gw86mL9dU8s2arp++VZVLE8szbZV6FJkgpUS9IO9n5Zsm1O41gdQUA1oHGdnJnwvn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709784497; c=relaxed/simple;
	bh=W32D/Rj65DNWggJ09XFw0PBBAhG3sk/S69FOCzD3xZI=;
	h=To:Subject:From:Message-Id:Date; b=qrQNLl0j30E/zCn4RAPrNTdqmo45VBpLKsDYvR9yXMQZxkq+o5IkqO1iojTTfMVzsgG+PIkP//+raO9OSWmhcr37KqAY2g2aL2g96AXIZRCzs6aqYIpRcB0CSk6r8UwzIt8vjGlyvDQVSNmIhVBKBwK2vCkuOzUUzr1C/8dKbqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q56NJRPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q56NJRPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79427C433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709784496;
	bh=W32D/Rj65DNWggJ09XFw0PBBAhG3sk/S69FOCzD3xZI=;
	h=To:Subject:From:Date:From;
	b=q56NJRPNt7BRKAqaE8MIdXMu+pAoqOqIIzceCGcrXTq56iKNr7E+aw+YRJoMbV0jm
	 vaxe1NO6g6WBw5HaB4nz227uiisgskIxLbsh5iB2P45ZJvpHyBeFkbdeDCLr3xCIsp
	 /suzkcWQqI6BlsmntbhTpwtIaVKqp2Q03VkXKMuNpde67q2q1QAXlrylJHm2y5l3kc
	 5UN6OjMarZMKfcp2ZL33OhtHsPt0INH2Dj9QcKs1IohluHKN91q4zaGAQAeJJiHOwE
	 Jj/sYytQgfzd1BuVgbuF6a4t4iwJQM8FUZXahSBhEcxgr2IBYFjbKJ9lEx34RmwGPe
	 xKMYWK4707eyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60201C48BF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170978449637.22165.8202864579027394583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd216a0130394b1af3d5686ddf5f85c33d89abd18bf3dedc00b4f15f99fd5f9c
Date: Thu, 07 Mar 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709784496
