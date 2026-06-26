Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262473DB322
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782455854; cv=none; b=pY8ouagVWNF4+VWruJDOQb3GHqeMEWGibSaEjO58bpSxztcQd0o+CjVA1hw5J4olH0lajU5mAwqDtvWIWhsmW1/tximahwnwxZkUR+Q1RyiAz5+z3Dq9s4yUHRXDqHzmZKQtkO2YskdjHSrhpzr8ygT+C4KHyyUQ7eEMV4vg7Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782455854; c=relaxed/simple;
	bh=aMbDh/l7avsdvI5ykuCXqckLr+p7nYxtmVpcaEt4y6o=;
	h=To:Subject:From:Message-Id:Date; b=JbNpqwVCQEFYzarcBgsGpZscTEcOCm4IYK9Y43i098WazX1/tLjMwKBbCOzPWUNFNs7QCZmyi6jXAf54r3EgRFOb3pZBNja6fmyHJVnewna6lbh9BltliVKbasMyUxhCrJF9+YGBqWO25weejrxu6S4/1MX/Wrk/oPwAFGRp/0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YO0x6jwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YO0x6jwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F0EC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782455853;
	bh=aMbDh/l7avsdvI5ykuCXqckLr+p7nYxtmVpcaEt4y6o=;
	h=To:Subject:From:Date:From;
	b=YO0x6jwEhRwGR+ENOd5y2Pbxvjk0wFXjbxSf6Q0P05Ku5Gz656C6VM8O2EjFBKMNS
	 Rb24nqkvgCh8yC5rTuubfd2mMDrigIA/DrMEBuuwQwmmhPK2hJGRaGqkNTGnYysc9/
	 06E5xZmfgOr5NqIcHR+NS8Lo4o0Qsr2csfwyDi/SNvKg0hmN40ZjBiqyPTGgJi+Nlg
	 2CKz1ZhYppi7gHnFdSxWwkUQ2Xjvz3EyMopx3O83hiFU7ZGw2iQMznRuBodfhGNL8S
	 kUP9l/hPb3rRyB00vTGcuJleTNWvAeEB3rPcUbCEAdCKRVHBxo2NK6NfC82Xcshz/N
	 hbVn/ZPX8T2YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C89CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245585368.7012.9399779586406782373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5174e158db8150ce13c1767b929ebf2297f3848363873a924b7f3747ea6513
Date: Fri, 26 Jun 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782455853
