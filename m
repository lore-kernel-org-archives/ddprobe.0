Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318894C627
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723586754; cv=none; b=hPLv+etYxl99ChGQtVnDbCRz8Oa6U1YAXepu/9TTHww0WAly8bQeIB+9hXwUFlQU5E7yiaeVrERnRUK3zC5mPDVImXvO0T+lgu0gEqz0mUAKybN3yrMJ2f8V0CXUR3lUZv5bDAxAReCy/hM+BSWHmgaaxdyKMnqrucN3nVLdHSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723586754; c=relaxed/simple;
	bh=O9+dP+tR2ssNstt4TFl5kXXTGv4qa9fcxzEcMGPRBQA=;
	h=To:Subject:From:Message-Id:Date; b=a9R7iklZde4pK52nXyUYkBBi1Qpt1h4jPCrcxZDnK8sHKXpulgnCeg+OI7rUT30wp4bWud+LT9x2Q73Zf7EDs7+gdQJXlPWqHgrwNpUVIWJjtw0kjEGOoqP73Nknjns8uGk5aJ6MCEuh/3Td9v5TnQJBPwBvAaOCj9LEuE2NeDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwUCrYj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwUCrYj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB590C32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723586753;
	bh=O9+dP+tR2ssNstt4TFl5kXXTGv4qa9fcxzEcMGPRBQA=;
	h=To:Subject:From:Date:From;
	b=LwUCrYj9Z8zaGtgGQ9R7OT1bmcjeal07Aj0Wh/eFEwEhAZsgRiBWfVMU8siqSDIm2
	 KTeLOe6ANwPl+GWfDsoRdx/hjtw9tG3FAI3GGUjfDx/z/0cmszpsyLXyvE0uj0U0h2
	 IKwW2ULIueFqpx+1iZQMBvIqV3g0FKV6IGrNsSbWN/SCE841qwNeiqmBbTYfe1Y0ZM
	 5D8ah9Hr107EddsJbZ/pu22umefpVJcPyLK4Aff7mbr8gT6chZimfZ7A9lgPbuImzz
	 yq2FuSIG8u6hWOc0ckBGzS+xk+WaZVzw0GoGzxyaMhlCxDV15+WEMqrtC5SWigis0c
	 Sp5L8MNzlElBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52A8C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172358675362.17292.18392207937822603609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdc14025364bd5e3d0fa9036649f2312c46726d245ba3f57d6a2cce2b06de04
Date: Tue, 13 Aug 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723586753
