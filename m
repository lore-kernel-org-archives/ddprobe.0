Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E7918BBBB
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745878193; cv=none; b=Ql0eIkrtA/lsGm/g15PE+2JVtQfhNJzOdQliJJnkUgti2C0CUVMZTxeFnBIB3jfY/TjzcAfsoxoJYNgPb66nSPbTGtmhyZ0tVlYX6HTmoYAEO5iz8hkBrJT72iCuSbQ1M5yzB3k+Tr5LYfQed1pe6MO2a2mlM/61Z6mWcpThmQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745878193; c=relaxed/simple;
	bh=PJTWZzRopmNQZtmPqndaUJse7oa84rM/KnNth1yMLes=;
	h=To:Subject:From:Message-Id:Date; b=mTnI1HRw8L/90EWJoguSQVguESt4+RxYFr8Ake29W7JE+Y6xtHipha9vWl/VpA8ppzEEbfKEldC4I4uZ2Qv7R/rwogjpC2DiVzgoqEUQDgb2de2+UDGPbtok03Ex0g4dlEF25Bou7hsOmmL4W0a+0aUJEbzqS4tDHW9SEqqlRB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IddTCJRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IddTCJRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30ABC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745878193;
	bh=PJTWZzRopmNQZtmPqndaUJse7oa84rM/KnNth1yMLes=;
	h=To:Subject:From:Date:From;
	b=IddTCJRuibQn6ulDCMaWAeU9RSWYeYJo57QdpPVgzqGClkyHHzbK8dR6wxnNpHs0A
	 TNxzZmwZfxuHS1tJzLiLNH7rvFkryDlu7/YZnNe/N7maks/uSzjXmesa3sJhjS3365
	 OuARkNMzR8bOGgZtZYg/41KQtGmLDUd0c3fIAPIHMdkabKiZLnkAFLJT6L8Mb2DFrY
	 ZJ5sJMgWD4SGq1YFSR1LSMSzaoXxgysqJ+Eh0WDcaO/UO1JxrAqvhyBFPyGTacqOJw
	 DJuSuFdv7AUhUgkSExL3O6uT0yriGXYMYNUPfWuIhZQry8oaqS8aoHB6gZ8luPo0pi
	 b1nl/pthwkarg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA08C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587819357.2328.11868579986128118708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8bb10567f7b9cb79804384d7b28337dff92f93f3beb9c5dcd43f34f6ae72baa
Date: Mon, 28 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745878193
