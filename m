Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C031F30A4
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757274594; cv=none; b=PxSVlrDfFhW2rBtX++KyiLlTswaGg//tpcinJY67d+2YmdDRl12Ee77HR6OVTfH1l43Ri6Ssnx0MhxcJc5FFwiUXKQ6o2vKlOOgqX2Sg1GeQHlTGcylYV3XQNkF4t9noeQAn9JGWTabKQIFQcCfDe1mzSkDbTP5+//4cOEOHwuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757274594; c=relaxed/simple;
	bh=RHpyDfe4kALVz+4Vt4TlEOpBv74uti1yFs4BE/HfkIY=;
	h=To:Subject:From:Message-Id:Date; b=szZFEkL0so3/2TM3bYDn9fGXbRu/FSubnT9Prj/35UwJLTa5kf4O9wdAMDKdqdIjs+lH+IeSDJbWCH7oyH/KZLZiho1AUFRrgz7iy3adwx3rYeRVFw6zwSQ9AomN4aLIdH4pXJM0cTPFS4ir/RqOX6xhqJlVTSbdVcU6x1xt6qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIasLGXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIasLGXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AF0C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757274593;
	bh=RHpyDfe4kALVz+4Vt4TlEOpBv74uti1yFs4BE/HfkIY=;
	h=To:Subject:From:Date:From;
	b=PIasLGXAohb25lAyDvTGZrJlNISbTJjBw4dhOgtFf5Hw/4GpfWmeSFz/yYKePFjVR
	 JunVne068A3kXcNQpt8npQN7QuwJQ4eN4VboQVNV3zqG8R/Jokgk1T8NUuAInE/FYq
	 KBg71E8gKPTKFK/vGEL0TKWR/7/QgR8IhjBJlIPLmf2cVJ4nFQgDiqJ4AfGya0dhbj
	 7YEqOlU1x53fkCf3AfRorPV/HF3I5eTFhKDBQAMbUYpXkoChC2pH60nQ7UWSclA94e
	 g5j+OgMOVZteCjAcNaUIfdLNueFCYaXUucCoa3wmL2bFLLBquH+tSYSulUhXVLzS7B
	 unvbSqpFHnvAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B76CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727459358.6926.11690504922161456154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5770f22aff8d2c0bc6f5adaaec09ab764b0a1ad2cd9807a8cf582ff006df590d
Date: Sun, 07 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757274593
