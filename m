Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3804033F380
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761753594; cv=none; b=l/M4cLKGF+hNIVZjFL+vq+0XlGWA2C8jJvRz0pytH+pfKtR4u4wHRuAa4TjP/AkCM5EPgJ6DAbtNxDcm+p4OuUby7HD0ntfb+so+1aMDKK41RTpj/nRmzLvkA8FDIQz5qK33/GRqM/zcJfr9sc2uEOuFcbf7IxOoPDXgLO0wjms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761753594; c=relaxed/simple;
	bh=9JT4bAD0myfrDgWJL4zfROp3fLVAWEtMzFX68JhlJBE=;
	h=To:Subject:From:Message-Id:Date; b=kIY/jtiOBRKueX55s8IFyQqaZ3IrWeO4ZCEa/9LIGRo5CgL7QUGaw6FnIemgo3n08NuSM9kFyjj3sWjrNxU9wqsJAw9CNZrz7aGE/06vxURVg+DPRZZqI80+MIIvstXgO2KO8+NORWzc9xHNShqRrzs/MwQNmWEIQjGMh049tIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEqRrhS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEqRrhS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32F0C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761753593;
	bh=9JT4bAD0myfrDgWJL4zfROp3fLVAWEtMzFX68JhlJBE=;
	h=To:Subject:From:Date:From;
	b=FEqRrhS+KoHZIgHTfRgbmKNGhf58W1apm0pqTRRlB/aTjyiMlZfY3ejHr+tYRRF2v
	 wwpLTyHHKVeAULXdmL83Np6QroMcKPm6y5xQEF1NhfsU3+WxdtRZtM/D7gPxumYjzC
	 Lcw16Cw0Hdsg1nOvzXtKpJTZWZ1bJVDlaTaYZu2RbDNaB/eFWumsz/diahfIK8fcW1
	 rGqyG0Qp3D5MOqrCtsk3wxTlYj594G2db6WbIIJ2DCws25bm8Y8jFkSkLU+NhRr0dn
	 33Iv5VSN/LZk1dHNLuw/klCUr0DBJXPF+QbuIL8m03qz8n3oF7uqcYXyg5f1AMzwCD
	 uoz577YOPvkuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C44CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175359360.22763.14415445851541139816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17506c43db70f08b1932aa5e8e957d5d0e7f226dfd50fb89b51c331dfd4d5618
Date: Wed, 29 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761753593
