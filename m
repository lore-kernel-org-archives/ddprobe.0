Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33450369203
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789339234; cv=none; b=YTq7ivQFYcsQ4cgakSNKwYkh/eUW5Rm3aXgdzmpyGVDLCvdfCd1dTgp2KTvWHHCTgcL8Pk5wWpUE4JfinuvtaINfnrt3n0RprXHMMxetOwt/fIKQK7OEswOr3vqnDlhskXw5a1UC8i264dVJPLX/ZWGEjEiNUY/90GuR3MB0a1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789339234; c=relaxed/simple;
	bh=4tEzW2RbPhTB3IXI17VUvy+brfR6kCR2CgIXB8ByGwY=;
	h=To:Subject:From:Message-Id:Date; b=HVtTOsnNpHr9X4jkfEws9WsE/jwRvLZBTaCPuK1TpuqW3eC3DoXFIs0tSC3PW6tp+78OUktdKFoznqa6x2d0feeILfpexqW/4miTHRgajE89LuXzALLxW/Aomeifa/cGf5F7K6d0omOxwNWkDQv1XTVj5kF8B9x71LRqwseOTCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBLW0at9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBLW0at9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4591C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789339233;
	bh=4tEzW2RbPhTB3IXI17VUvy+brfR6kCR2CgIXB8ByGwY=;
	h=To:Subject:From:Date:From;
	b=IBLW0at9y56/H8CWksEhgnS1I0HqjrtWmS9f408uxki4m1QpO0vq4kN7StmwM21cc
	 5fhl7lYvmIHCW+ZlvKSXI8x3LMLx6JmADzrW1bIS6zy+mwoJMGShr+PIImXKczLlQ3
	 70+Ir4dOLuI9bRu8EXl1ZZHAeOlQBGqV+2kX9YUaqxM2t1WiTD7Bep6V9jTK0lnrKM
	 yrCfO6jhWD0vZThE+OEA7CXZE6wD1E4hONFgv3O3eBMqnOhbrK7PpQQVZLNvjtpCuU
	 IWruc1Dxiu/AMBdbOVJVmO76+hrfXvzkD1J7EGcNzY2XRwnMtQvsfHpUDIhO9N0laT
	 R/THZ5v2z3RbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0525C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933923368.12584.18151797748581894568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517a3ec61fb478ac2c5cf819aaa9ea62c056c398ee97f1575e1ed4f29a5932e1
Date: Sun, 13 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789339233
