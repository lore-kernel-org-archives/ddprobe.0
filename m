Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE5413AF2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762999194; cv=none; b=LkP3ORuQvYND4oi1cVUVGHDxAFjy2gG7r1DbSLeUNejcx1JSfVihfgsbVHuZJU61BKXfA48/jAWA2KDxMgckoq1Ku88gsUHK+vnqeQ64Eb87tl2UENaPxN1HqNXcR6a7V81RygAvq1EZUSm196Ob5f6XCUQHRyOEr4MyJ7K+znE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762999194; c=relaxed/simple;
	bh=AOKcEl10u1eKW9oKLtjnzvBB7Aup2SSTX/Eff9YlDAs=;
	h=To:Subject:From:Message-Id:Date; b=MZCo2yeEcSLnF+cAZwreMA1WW/cqF4aVTi3+RhPqXeHRRk95to2opn78ysgd/nrAIdNyS1FK7A6yKx8dNBYpRQ9oe0DWd+0cfWOTXzCpPl11qbN3WTyQbc/if5i406Ia6bLhfrfIUJ/LtqhEs5rHEeU/5+yVs9s9olXpktfHjN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu0Hn7FH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu0Hn7FH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B690C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762999193;
	bh=AOKcEl10u1eKW9oKLtjnzvBB7Aup2SSTX/Eff9YlDAs=;
	h=To:Subject:From:Date:From;
	b=Pu0Hn7FHy/rm9j6g7sXiGBo7h+9Egl7R+QXmDRwkI/KoXUPZ/q6b+MGt7zLHpezqi
	 kxFcqQyUWY+bcStJ4EUAddOJc77z2zBz530W2x6BlTj5AybeyaI4NBhfqbv/rWVCDO
	 GTZBGXjRzthxo9e3pJv3cPeyJG7VZ0w8OAOEqjzdZiDN0JYu3T0lZzibFuRtao4k6a
	 stgKsaaKMwR7fO2mRpG6K2ivhnZeDp30TnCA4W8NCUhF+V0CePy23TybjeHdVoWh5d
	 ZEvg3sWEC6d7QrQEOicMGszql22DMT/wRxXbjWsk7aHTpe9tBc8CKXd30fFYgasTqa
	 EOccZtu+hvHSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9BACD4F35
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299919357.6765.15044257012154252446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aacf8fd58af16b383ed04c81f24a198cf853259138e5c545f4a0c1b5bed642d7
Date: Thu, 13 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762999193
