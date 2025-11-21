Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD75221ABAA
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763695313; cv=none; b=KZWdXpjJhyKFyGFhMopJL7NPjN+0t4Oxx7cPT8CsGm6HBl2RQR0daKU7tHyxU4BHC0G1spmxLoZcZpMTeXAgA1A+hhA2oAr2hsWjqcRjRIrWweXLUUjTqsCMDu0YyoVR7JrOWa8vIIY+735U5hLuSFpT+y4ojRzrFW0oPHh/SYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763695313; c=relaxed/simple;
	bh=2hRfxQoSsmfgof0MmYdw3iAJLHMC46xRJAdPuALq3bs=;
	h=To:Subject:From:Message-Id:Date; b=jgxMSZ4g3VYC48B9P49G/whCeErHpGh+NA0zM51P7cde28MaOUTc7kEYdYEHozxKfgcgbqL4gD0bngAvtK1hC3sXt9w6IAwGf3YuO+vJw/LxyMX9PW9AKzvN8JDDrqc6LaAnzsug/u9Euax6XUYP2v2d6Xq8xra/OBz8WzTQ+1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNdfsX4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNdfsX4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1859C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763695313;
	bh=2hRfxQoSsmfgof0MmYdw3iAJLHMC46xRJAdPuALq3bs=;
	h=To:Subject:From:Date:From;
	b=QNdfsX4YHTvi0bKVkp5orkLKrf08LnoKWjS+B8/hzG2vmMsZhNagzXaq2dSjSF7fp
	 s/1uDZjYsZ+yHVTKaVbjMGR3PKOJg/sE2qmj4hTR6/BXpfeKm2wUbp2EBik0cfAW5E
	 iWrxdJnR/yzK1WnmrEboiM4IciLaGOEeuwCx+Jj+9FVacQnOopqddXv5Bqp05ZMZYM
	 kxIIKkH/h50lRTFbemfE9j/TldB/whhs66RUhM51pbzC0kj20+5bcDnZUWJIe7yDIB
	 +zpg+qVRNvFtQFqcOSMFoXRoMBQWLM81I+DGjpxM4qlbCy3O/eIlZmD5aXUyztujVO
	 oFPAFH5nc+7Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4F8CFA466
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369531363.18393.9127825973455393166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f2a09a81824947e68ad09c051a3ed8c26913ee7ea5af3e0fcb05c56c22d632
Date: Fri, 21 Nov 2025 03:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763695313
