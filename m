Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2910DDF60
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736471754; cv=none; b=fFm3eVaXezXWSMIwzZLF50qiMB/nlfd3wlnww94qvYchE/DcVT0hB7LdSTtghIa4z60uixPqm0qgYWvzJfYAaaOMo7t2kyG4KELthm87fAizvZMobHMF7n0SOBaW8p3DUgcCypJ2CCozcx0mQaic83FqQOsxjcZpF0fgaIIWJc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736471754; c=relaxed/simple;
	bh=ttgjqHEugvxobHlcFgL2N2bCevegF2aX7rM1d6fnrDI=;
	h=To:Subject:From:Message-Id:Date; b=F6f/wma5cQw25UrnQQQ1Q2/6I3D3pk/icp+9B8f5Wvo/jMyzUaSKQh/jM9h5ShYXZGEoR/ro2DkKdM9yne3wMCjss/Cs8G4azMIHenIomnv/x2GvvcvQwoP8+kSylB6fDZR9j/Z1cU6kYhu/zjSV30l/SKZ6oeo5gohclt+mPjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlZSYL95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlZSYL95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0436C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736471753;
	bh=ttgjqHEugvxobHlcFgL2N2bCevegF2aX7rM1d6fnrDI=;
	h=To:Subject:From:Date:From;
	b=mlZSYL95vr1UM1Pm5xgr2RKMuiINPsPVscAkLtDMR5JqQjCUqrevRHmQNuPCdg9yI
	 pE+sJXs3JUgOvHPMsqBVINb6a9TXDsQNMV/2SIG8IHQpSmOMg3cUUK9G6h+QyLLk6e
	 oJ9lt5glMjo7FbvTBnRcRa+I9O+cq/3scF3TZztZTESH5NNssRrhKkI3Q2r1VHb2UL
	 qoOv1CEMoWANxpVvwG5t+D8hSXjOR0/ZaoGhKYsqiDg0qoRpiOki2x3qvh4+RHAakg
	 B1YsO+RJQ0ZFbQUfkQ3cm2hrnyAqPSKihA3Le7Qs8jKmDziRjX8j6UM1RK6YHIoNl0
	 t33nZrduevbqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91382E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647175358.5337.18059482257890542720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e6f2aca2e5bd280b3e32881691651f3a3151b93f36c761e1057a9707183920
Date: Fri, 10 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736471753
