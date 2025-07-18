Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23788249F9
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752839394; cv=none; b=vF5y92CSb47ZFJ2l75FJgJBf5p0LUi/w0ShkFUZcHWv0xwAZgOPh/IFrDHaney1rxZaYjq7K+9TuNKKL9GcSMUVnY0eCNULu3g5cYV4ab9dO7MlXTsfkqvvPWnO1UMybSa3xgxSNsgqXnNAdk0nwC2O4vy/b8APAzAvklok96cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752839394; c=relaxed/simple;
	bh=JD/AU9Nao+KialX7PSeWqo5TTzD+kwO4jYd3dPVCLiM=;
	h=To:Subject:From:Message-Id:Date; b=JDnbgC71sJanY+6F9lOHsen77dSaeXf0/Nt5ttWVZ6dt/zhKhcgtm/vJDfS9C1gofJPVSGK0zgtZypy7UQhB0ROqhbdZ6T3q+IMMtgFJEArFF0mdEvFctBGNu7KKziUM6zQA/DCs0I/RJQcyZNe0CVfOjufMUmQ1pF/nrEmuEyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fU841Ijx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fU841Ijx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE29C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752839393;
	bh=JD/AU9Nao+KialX7PSeWqo5TTzD+kwO4jYd3dPVCLiM=;
	h=To:Subject:From:Date:From;
	b=fU841IjxqW3+JRcRv/tBbiXEW+74bYAtvdUMH6fUwXfOFMVF+8WrVUjAUozPTuA6R
	 eBpUP/r/F0WvhqfPyLvdmNIGyINgarFQBltpMYGZTDkCUSNPhjcGrSgZwIR+6nml57
	 JVlCQ92cPIQiU+okj8o1vuM3CC0YiH476nB+mPU1HOUmmayTW6KoYL4Lx7gF8yA6++
	 /sgX75GrPiLEpK4HbD7g2Qw+4aLAY84FfPqBAqVEED2AvXYM7Yd4o3Lqq/LMa3Qgwk
	 n7cLwYuzFdJ5lf46C30OLiUG5B1nlxO0ZGB6/bOdXHnlge/3F4BsQMu6YE2nbVr6un
	 v3rKzLaXNH84g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE0C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283939358.13204.9412252689879511158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67bf71c7e3544f55e46dca83a1992c9b29c927ab9321333510a72ce3f4f73d2
Date: Fri, 18 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752839393
