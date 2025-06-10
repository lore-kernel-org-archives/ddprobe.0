Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F08821FF32
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749541794; cv=none; b=Az7hf7qOKVEPnqnGtni+tVxmh6pxwFcLOxpw148wQBZSjor0cH0ouPbeI7DXWmVbGfw1T7iCcs2BKJLdxmr6MwmWYnPFXMdYtzRYrB2cWn5j6CfEK/1HTS0YBiMWfbxzFNTzRT+IxfeqVGK8cMM4vsPpzyKADURcb4vDf2BtCUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749541794; c=relaxed/simple;
	bh=xpq5PH88ws9fkcE0iVeR0mp8nya7dg4rt3Pv6JffYpo=;
	h=To:Subject:From:Message-Id:Date; b=lp9adzejAlroqoVMFngiQqGRB2ot9op1k2Pq4l4WpHZnTXhXy7h3p+dPT/DLLS3vDjPjkYd7H3T10uSCW07VPWOENJF/nWR/IgSqazdRxF8mNa7VHwqQ9By50QjJsy1DXsNrdOUOmHubTbsM8NOYoeP32pLF8bOCvdmldoL2IBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivJG2LYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivJG2LYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53BBC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749541793;
	bh=xpq5PH88ws9fkcE0iVeR0mp8nya7dg4rt3Pv6JffYpo=;
	h=To:Subject:From:Date:From;
	b=ivJG2LYJCRWmue6Hv0Q8Hek3IM1gljJ/Adk72ikc6lqsOUeSN7r9G8a2XoxTeKsRZ
	 4fvFY2M7X+k22LBSOkDvRN25d80vf+VAxhbm5fmsJOPVdemhPjgDNEZ7h1w6ZsNqmp
	 K0PoToRTfoycCTtaUXueMIS+JoI18ElN3a0Hea7ZNo8IvkYqdmyOq5Ys0/IfZ3nHOj
	 QzonVhSkWbKTkmB8ZHR5XyqprQtZDJaQAiNoJzDVNRDspOWRnRGxYSq5Z1C1gowVFS
	 28eHbIGCM7XbInrpraxWgN4e9N+Rq2lBj5oEGMx0nL1rlySRtXyuVWNbArL9KwwLIz
	 GAZCKzhLpV3Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908CBC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954179358.30312.6107845180750417420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc09934d2ab64d140a6938d6299b93238916d9816b237f667b6b9c2a1c9c109
Date: Tue, 10 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749541793
