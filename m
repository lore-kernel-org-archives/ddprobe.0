Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7C81DF963
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765437174; cv=none; b=hiHX9bO/GOVPOiEh/mu5tyQkLIMW4XLmdQDye0GxWED/e03pI6tozD/F2h0oRFGNVLw9yQgjSWCWnps035NDYNArMIjLxifu/a2HxrzSaVMJT12v+wpA2riuTQ22HY4R/b5UxJVLeYEYLwAYG8E9dnOyZIn5SeFobi8zrji/0kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765437174; c=relaxed/simple;
	bh=PP43ihCnc/MIkzBr8jz74MwoXtUu5rBQBR0KT3+b54E=;
	h=To:Subject:From:Message-Id:Date; b=GbbirYKA4G6efURx8/PqRAi/zIF6eyLRfDLmmDFcc0BU6pU5Zeo3L65O2C6HuryqsateaMcr6Cv9l21OUYmfKyZ+MB/cXKqzaksq+tDSTqvi2KGLlW48jHGM4o5PgPLlWa3CH4tmjqv4a8oB8oVoAkj6Ofvp6U0fAMhgSbZ03cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSE6wgnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSE6wgnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1573C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765437173;
	bh=PP43ihCnc/MIkzBr8jz74MwoXtUu5rBQBR0KT3+b54E=;
	h=To:Subject:From:Date:From;
	b=VSE6wgnFD7/+O4I4AkGEIW7zHuES+45DxuoUGAD7rJrkiNN6GSrxz9+0PYSrkozFL
	 zZSsYG342VdJF2s6Va7J58LoCbiL/linnE1FDkwuHtb2aZL9LEHPUainQjj5ZDuzHU
	 tMm4IHuspfhFkfr/4E+5rPaYd4QUv4ptqvRrhSJIxBFm9q7Y3AHUW0uIedH1ih5tcP
	 G/aEjor+A2qypHUE398Jhr5XBZRnuOiV8OOtsvnFk5tNRj9QB/zBGKOeKhLDDXlc3o
	 onOVJXvU7lOivIdqyGKNE080CNBze4uZvccaS8XJ/JGpC1oQ6MXxz5fU+Ugd/veAJn
	 7l+qnXl8TB/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92343D3E79D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543717358.27601.16538871426858907429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6813bb9080d30aa2d3fdac5a04180bfc1272599bc21ca4711f195cddef8fa556
Date: Thu, 11 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765437173
