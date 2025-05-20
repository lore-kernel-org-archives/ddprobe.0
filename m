Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A161ADC93
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747745994; cv=none; b=tLkScWVvmil6BD1OKyGF1usx8qO00k4GQOSHmzIGUesZ5duj6ke2hNgLnbQftYr8Ecd4gENoZ4HXB1T09vdLEwjEB0dyLOeGgQBLOkLnDtT0M/2zYVyLWfhIu0T5379dICKAjVEWne3frY30mTAu6VZaEJQrGLzXVecWpTMpiLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747745994; c=relaxed/simple;
	bh=XXMH8tQN/kHQC454Jt+jfUm7Vq88IouSPSh6o0Ls6hk=;
	h=To:Subject:From:Message-Id:Date; b=XC3GUhxuSfAI4BnFWxXAoZvXhQ/8hKx0aDqrFlBiX03UQJLpsxCnGlKW5jg5924nClZhBdSivh/BwxBvw7kh96wwWzanuqcf6eXeu+X35fyCDgxBw+uaIb+F2b3IPl28CyQqdKwbVcAszI1fyvzbqqaZMRD+XgnIv4a37EO0weU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnHnl0AR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnHnl0AR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF25C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747745993;
	bh=XXMH8tQN/kHQC454Jt+jfUm7Vq88IouSPSh6o0Ls6hk=;
	h=To:Subject:From:Date:From;
	b=hnHnl0ARXB0+PqtFZ7yPT+0VA2BC6eaUENQhwJXk/9b34FoOCLhrlpK4gatlG1O3p
	 y1prpYNPV23r2zklTkYAf/AfrJvmx95zsT7QD9PH28FX3AuoS3MTqgwSO6kTm2+O4s
	 pwiov1cPZx7sOU8hEKHVs2PtVx6IaVWbks2unLVMBZTyp37Tudpp9J3ePgwXqS6W+Z
	 4a9k/46rwjl/HQrV0f6y5eHS8Jk3YTf87MnpC442zIchd8FCszIAnfl7t1VOjFmXda
	 q7XKpilIIiI+0uVKcx0l19vij5+G8u9OW9JPw9N5mkn4wJeErJyBOcb7cX/1t8F2E/
	 0nbBT2gl9nFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF04C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774599357.28352.16287456220403969561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9579cfcc1dc8a3aeb123c0f9107807f3e7b042e6c96a7dc8a19be1d6cd211f
Date: Tue, 20 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747745993
