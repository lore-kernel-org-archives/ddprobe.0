Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ABC27990C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764145374; cv=none; b=MfeRf3ctEVhn6cTyGwEUprGV8Xv5+n6GW6Npbi3astOVjVEziy+T4tcgZMyZakr1DDZ7osW/sUzhxnxcubpM6Hcq7egN2E5svJkz4voRoUl+i0aMx0g0E2g2HEGKC+NJKIYX4irvgoDzGTPCmrQKJN9ypZ6OSSCVKH7zBIgGqRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764145374; c=relaxed/simple;
	bh=l9PH60xfD2Yhe4WIWxRK6VSC5LpRchp5j9ISEKTFjWg=;
	h=To:Subject:From:Message-Id:Date; b=qRILAMptmWjswDZmJRuyZm8+eFV8CHMRlw8buhXu7dg53RQujPWqPAkyoOCcXyHfYHHGKzoUmDGFjqBX00qZBroHx88g5//6gnTcTDaE0T+quOym3gAst1QdzoEmKMhq9IgeVdTSqNgJkHljlfvMfN3R4gZmGN9CmZdXRNuPfX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTm6m0nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTm6m0nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB82C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764145373;
	bh=l9PH60xfD2Yhe4WIWxRK6VSC5LpRchp5j9ISEKTFjWg=;
	h=To:Subject:From:Date:From;
	b=jTm6m0nLSsvE0xwnZcIJ9LcICuKXAxAgO8cPCwLLjlKasqSyzvUxCzswO7nlWjtwG
	 Z/hNM5ilQOJf+EatX6w/lHbZFoXE4ZdQmrHDaYK83Bluw9xi3c8YcpppDOPRh0kqVE
	 UsOuNQAdL1slKjr3TtkeV65+gzqzcTPYcUd5tLqANla51Gk+9PhxFYrpADd2ELjOFF
	 kcOTFU66bV0ueaLnyVOsTAyixIJxLOYNNbpjo2ZTuluyD6OWzbf7pGFRZnnuJLRQQ1
	 u/G7YVGz4gxzeMZOoXRsOjvoqkFpdTpOMskhr7CIqvQWywzaxAIsRpOX7CAlZNIUHf
	 qPlF+JBD5LQDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92295D1038C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414537358.10236.5676597934600290112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee10372402fc3c1e8eb88500a296b3ea8668cd05da97844d6f99b12075cdb770
Date: Wed, 26 Nov 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764145373
