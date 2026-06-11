Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDCE4D90C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781204794; cv=none; b=EZ5ASn2aJdOkTuMcyc1NPbVCyhpfCn63CpMeyjmEF7heCrDQhY8IRG4OReb8NYe6UIkiH+hpWv2TtS98NTkQbcKbCtIPciXNhIVEdK3jjWK1s34shAm1etP3zXxNK+yh6289GQbfY2W7uObQEQNnUVr0ROvQXkJpJLYQ0skMHbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781204794; c=relaxed/simple;
	bh=tYr3062KFX8HHYp0QJtVZ4n9t0DpyyMSs/FRrFt18NM=;
	h=To:Subject:From:Message-Id:Date; b=JMc1m81YDKB44KNvoICt6avW0TzgJlq7eZ+NY3IUY00v5ECuzvl32a5WeaAmJoRxrx8+elVTraXA9rGOBCtD9WIIebCd40YtH+MWTBH3tjHx5cmfn+5EhgJB/hRREf7fnRaaI0Sr7Qr7Ja39dRTApJNsWm+xQlJaFpS4w0FwRdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uc/QYN/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uc/QYN/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2227FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781204794;
	bh=tYr3062KFX8HHYp0QJtVZ4n9t0DpyyMSs/FRrFt18NM=;
	h=To:Subject:From:Date:From;
	b=uc/QYN/3QE55qpT+7tEinFxtbNzGaOAGdUSPBbgmyXnfWXV3OXGBNXko4bdS3Xzni
	 +Bb9MzdM+h7Hs5V6qPGYuFi9r6ZwYupfbR+NFYNugx39mtbTP0ljqAVMN7abCTpFTk
	 2hzjlCdG0bANmldwIBbZSUTgHkFiORJ0mIZswTnluoWnZt40+O+pfD9B9VCTx9Yi6E
	 2LLJgJAO0uHM/bRUMkED6oLsvqUIypW7f9r/v+XWXyCIaeeaHEGhv6xU076lingkgQ
	 Mp8yLA10wf5hA5hoz9kK2n/ci4aSy30SwmT+IRwC72U9AS0VMZZ6UrRTQC94mLPbsR
	 r6u52+RV/bPhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C43CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120479377.22083.3417833705335198904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89e0855e1e812673c980180bb0fb8e57f6cb0074e2ab30f801334e583822f84
Date: Thu, 11 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781204793
