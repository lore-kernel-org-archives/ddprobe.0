Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD971E52C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722084954; cv=none; b=lklHlrlsQCIbCeek70oDEFibdxxpJP1tNm2aHJV1qZlzh/w7h0wE1078y8pYZwwT0Gh7UxVkhxxa+bk6WW1Mk/QmBC+iJSVmB5NhJVHZSCRz6qphYVtEZfqV1eh4P/5Cb4zUNZ1njTDEAwv5OZ6GgDXT8/p9dwPx9C2nZn7DFL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722084954; c=relaxed/simple;
	bh=V5q0jGxjrricpzhLMEm6RI9/HRUy1tAb+95uOfyAhOs=;
	h=To:Subject:From:Message-Id:Date; b=btHhew0jpuvO8wrhWE1xz22dbAw5uoJVEK32Sb4KIyU6f3OgF/hnByihQPMphBbrjH3D20ha8YsqW2OQuQ6eytdTyUuY36JGsmV5hbomADI6fAkZFdoAdYRIk7YQSKuQTqR5W/NEHvaTIYeXDQuPWZfjEGCNzBTdsGzESN9gwSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKpRRPGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKpRRPGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3639C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722084953;
	bh=V5q0jGxjrricpzhLMEm6RI9/HRUy1tAb+95uOfyAhOs=;
	h=To:Subject:From:Date:From;
	b=KKpRRPGCyEV2uBk+408z5cLlXXDfLBhJDoVnBEq1jwQDiW6cmN0KHg5gVjRYYu9UR
	 ppjEGQDhOIU7/B5GE1Rk0DaLESaX3l/0sHM3hk6JbgueENVCygbw9a3j12Xg9w7bPg
	 F6/dfNKHDEYmzokbSPHKV4nMFtXfnOHG2/NCHMPBzqnC+PzNozlxR8EQt14h2xben9
	 SCQqoKS2gq6WReg1fvABQ8JHrQKj1EKEcBVQq+n0SeQL3KxA4EmZfuTSzsGXO8tW1J
	 QXxLS+eAd9kNOGvfeQ1mWfaOz8rUeiHFw6iIY1R61NrTkNVdxjTT/b3ceAtOhAZ04I
	 E2CwnqCiVuO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B689C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208495359.27141.17857437091921277568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b1ce3797cb28552b5c3d8307c04acf9a6aaab99388bb19ec937d085c951c457
Date: Sat, 27 Jul 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722084953
