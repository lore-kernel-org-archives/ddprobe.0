Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4802A25B0B6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781027134; cv=none; b=W8to6lB6nWTbQ8L3Xuzr4SNLGRBMxKbSFu19aZAUb27IaJZNWW81fklee1UYhS515u4X+DsO9S0tbfuJ+nkxN8AO1sw8KHQAnoDCKgbKaD0jwhYzTxfJfBk5o3DMPah/ZwdRXuYuDSose1XO4LHEtbDhruRDk7MaPrUHM9T7Zd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781027134; c=relaxed/simple;
	bh=wC5Jzz0u/LvZKF8k0xdFv7j/PmRUZTIG9Cvg3X8Lcxc=;
	h=To:Subject:From:Message-Id:Date; b=OGYeS6gqpv4tRayqWfI1HMS14E++EWckQaD7ug7cF0AEDgi+/RVlV/r3dPPupe2kVbGfY1gmD8U7BhadR3tde6TnKVad0Csfauj9+hYNzuhe3KkaEg2IpxZeyfvvSZW75PY0nQZEUYOVvZ+dfLnJOQyXw/Ple1HEEKo/A87SXJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUFXsK9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUFXsK9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EDBC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781027133;
	bh=wC5Jzz0u/LvZKF8k0xdFv7j/PmRUZTIG9Cvg3X8Lcxc=;
	h=To:Subject:From:Date:From;
	b=TUFXsK9Uvx/qJ5UTtbbJFYaxT/42qrZrFwVMYEVz0g77Abqct3xg3HZMXVFSMJTn6
	 eHz4LHIzcIHNbESAsNJH7TcfO8cGy05jg9gK65tmnRwN7KvNCiNwvGGS5i5VUR9f2M
	 O8+PmK/2b8nBkfWOM9Kg0s3FFzegQhPGhE+U6LPEDTCY7WnGbljAko738Ymhxma4sO
	 s48xhPx7nUhMBlmEbQ3cAvicUs6mKKxxih2ujGpGwOtO+W7DSmkqxuEN9iwVYTDly6
	 V0ri640uWpeMAWKh5YSESS3zDCKHDk+0VkOs1lzc3UeiGPfaSBuB8E+Ar9kNQUDq25
	 aoDRHL3MC6kuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE67CD8CB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102713375.16868.6060339505120144532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34dc711567b14e4da42ddfd7fc565695cba057038c2d17e1a1317c84c96e235
Date: Tue, 09 Jun 2026 17:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781027133
