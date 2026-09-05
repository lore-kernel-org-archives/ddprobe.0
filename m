Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9C4298991
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788566434; cv=none; b=uh0FMIKVkZOJChbiOa/hT1ZxIk+xVrsGY5wp04J/VfxfTE4Ovq+ewfOMReLpt0P/Z1uwgd0inwuRAeB4h5Dos7PwIhiKuZYYYPqnedV8K3nzwxgOjTJQ6AtXcjZTt7H7QJIxf0PXeHkghYKgzCtBAb9JRKTy9pqC+15tZMaNYhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788566434; c=relaxed/simple;
	bh=p4s4xh5OishNQn9mDI/AGl6ilr1q0m4jjFK1/SPy2/U=;
	h=To:Subject:From:Message-Id:Date; b=e3O9Co+KsqnuMbbFiQbcQdhRlw9jp/divCRgIbSq2wSd7bVQCd/tQKHwp9kOhb9gDXn/cxU0X3eC5ZmColeS6xpKarCepKXjU1wZWZ+0DBwZ9pd9Lr9WqR80/5+o9UodWQ4cGhsSQdNeAyZtY5Y2GK8Yc7KhqQ4SYagB0xCIGk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGkqM9eL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGkqM9eL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3431C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788566433;
	bh=p4s4xh5OishNQn9mDI/AGl6ilr1q0m4jjFK1/SPy2/U=;
	h=To:Subject:From:Date:From;
	b=IGkqM9eL8piVCWmzsjdnxjjCkw79u1LNB8O7eFzCrfqbVZ1gQrF6X5UESNdjSzBVv
	 tyjETcT9qsltI5NNP2zcvVYNoev/qgbfFNDwvk/AlcJjwXzUcWUWoPNxQA734A6Ucp
	 uuW9WNcQvcyD36PCN1Ynub76psAElifVBFflGb1yo87h4AWc4eQ3vgF2DxqQzr0XRN
	 ++jqqAHdymc00zmksidtBkpqpAneWDluXuoTXCGhTrYuKyOf6YHsmWBOvMRMBtITnS
	 qzCN11ye9K2z6ZDi22HA+xg1B63WsoRR+dcBB2d4o2QqMUSaeLki0v8VkpcKd5P1VZ
	 +JX27hmmfvmjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC010C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856643369.6166.5490094613304965347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8a8d005606bb68e48ab43e829f2b5f3d2bef42d24853f8cc4b7cdaf0793737
Date: Sat, 05 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788566433
