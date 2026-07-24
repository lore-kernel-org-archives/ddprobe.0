Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8C92FD694
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784864434; cv=none; b=SzBzgYhsVKWr59Kgscev4kAVxja4WzR1XeB2rz6jhYfaMk+5Pr6xEUMfdEGJv3AQj9Kgb09AnpnRKO9XoTAeXpqrhooID35p9X1nGluU5jKXm4i+9t5OpWvq382S9W81jBf7+eo2bpBQkRNjQBrL3A4ehpVmu5PDn782MbFULHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784864434; c=relaxed/simple;
	bh=4hEOfDeiOV+K6l0DS8Gk5qdz/YSlr3/C0EFd/Qejefk=;
	h=To:Subject:From:Message-Id:Date; b=EP6BFiBQxN/NY0eSwfF9KXkl8FKuIW75032133d2bxdkjCDlz/4BYt7UFNUGtoZl773eWPDHriwixMyI8/vGGws7siVgB0QoF+GGtCcL2hNLO8dlwSCZVY63LpaQegl3yRNZ+zajD9uGbW/UM278JSbaFk676191mxiKaqU/s3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6ExM0dC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6ExM0dC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA77AC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784864433;
	bh=4hEOfDeiOV+K6l0DS8Gk5qdz/YSlr3/C0EFd/Qejefk=;
	h=To:Subject:From:Date:From;
	b=a6ExM0dCf9mStzze5AqBMvWATxgB8U5R+WcYeHVQ62rAAk2nSEcx2HwD5+PXaiu9b
	 kerYrMc78L4mb5Gyn9qmMG1uFG7O7aARywQEwAilbI+2LPlyKdGx7DG+uE67zqmuyt
	 W/ZLVJl/LPRUL8Di+IycK/HRmHdNNfLLoCc0vf3ekvnUSze8QeEMu6JBWWYK2zPi87
	 8gn/2FYu9oAQNGQpbTTpF8s5ZNCuN9LjJNRT5UeyYo89PjMUa+Kj7EBGahVYAER6xx
	 ubYbZVXRFOpYz77x9q2uGJJWjJ3Gn5NioGaFtRNOuONuRL1viqTYAeXL60qnfjZXhG
	 iPm1Fpy3rR5Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88C0C531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486443368.1272.4188258758072829355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e168fe23062a5dd3a9536144a17a365700bb6a78af7141f572b782a886808fd
Date: Fri, 24 Jul 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784864433
