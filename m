Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC4614E2E2
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761479994; cv=none; b=ueq30VjtB6DMQhM0zzoLak5ADuCjN0IuNMqheFJUlnEiKL1Fp6a37/+CAd4KMyUA4iq3AHqiGvDlkDv7IRTPOM7WYomDgOvtaT+bNihFoB3qeXi9ehSNYxH0WkcEyScf9o2oYI8IBddHFpNL0RQ+HkKc9nThFUxBOB4pdgPhOXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761479994; c=relaxed/simple;
	bh=GLZ6lozC4A4KRNtBLh4GCdNwYdVCVt4Hae//7JQhOL0=;
	h=To:Subject:From:Message-Id:Date; b=hkui1q2ZPf2LYxhabQWNmSUMfgIO6l5laM8w0i3JDti7XnST8I6YGR9jlPFsXpRp7kUwO4gRyixU95PxhAp2TMdwbqqXhRAPmbc5sqhIo3FI8FngoCu43T6RnBA2us3+OUx/cTFUp9Q27BpE97DqxFiq1FBPg6Z5ioRs6OCbcXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKmdkYW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKmdkYW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6740C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761479993;
	bh=GLZ6lozC4A4KRNtBLh4GCdNwYdVCVt4Hae//7JQhOL0=;
	h=To:Subject:From:Date:From;
	b=pKmdkYW4zpQXziAirTXyqhDt5QK6TZ8TxMmv+AVV4rLveZWG75BuQdLFkNYVqIHyy
	 sBEkCKEX27MxBUc05d8OMyMcSmDC3Lki9ZNboNWSFm7GwRbl1h+lHKpcaL6US5YU/z
	 xuRd+bCYwahwKube2CZcWFmI91rCzWGzNIRgwZNbpABSt+TgjFkywrStreS76Mv+Ko
	 nBggAaALhEmkbG9gG89NJkfNfAkfDXfCXnH3Yp2oZ52AWESs2fTqC0gDSjEXIdKXre
	 32ByNWDwSFyHZbaFcxPHbYMbhtBruFNUy+3O+5UDWERXaoPvuVhoPYEXzwdw8raHj3
	 qvtCMzgpGEPfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A1CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147999357.11303.12941258178397034241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efc2fc59e6f2366cd307c6ef96cf7d3b5b9881f01d6fd28137dacec2bfa1b46
Date: Sun, 26 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761479993
