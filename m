Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AB725B0AA
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790857234; cv=none; b=Q3s+wEaxgBGtqWTm20xQZLVZj2GnrUIJAvlfMbYtRiWZUipZaUo95363Zb2fxAbZHOnVD7YgDnbOgxnyJm3s7z0yp6v4hisF9bxBxMD8Gt2CdaYW7SqFcLNc40GxhZafA1Z7Gg5p9yBbeQUitF3s2Y66PXvwQZIiekJeze0oRHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790857234; c=relaxed/simple;
	bh=J7LO/rMhGrhZt3XNIk/Mrmvk/q1tgBqvX5MM9V0ptew=;
	h=To:Subject:From:Message-Id:Date; b=Uz0Kpb7nqdnTJYrPULMYqR64TIKlLeOnBpINIsoDuX1/+4t1Ssftpw6Oe64eVxflXatl4ueVL9kY2gscXtO0zyO7JxS88oyABN+Q3REkprwyNy/TxNRSk91z1vbZGUei7CLBX7RJMP5o8XxJtra6L3nARUn83fG3QxCZqoZbyUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdBlUHhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdBlUHhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1544C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790857233;
	bh=J7LO/rMhGrhZt3XNIk/Mrmvk/q1tgBqvX5MM9V0ptew=;
	h=To:Subject:From:Date:From;
	b=VdBlUHhDZC5dOGm+k89YXPLpFIrxCGavoTTwH9jKC0aWEDlnI1nZXmPu3iPfbzYeD
	 BjVVMzgh3aCroZPZgvBf+bhNCYRVgHXPcZCtABYDH91k/KpSgVl+SFP5/+pu/RGCC5
	 +7RAov9UZVa+FMDyS9jNQhTS+iKqoLNn/I2AhEwlPkSqmiksZ7YMmhehUM3I+b9CLW
	 erfpeTWCceQZwwVZ7+IFk7u6q4naUSNaSwBUC3qhkrcsOm+g38GmS88ngV15k6lyQt
	 3BglDnWQX9Yzh8hFEs1mMvPzB2lGWGQsJRq2z5oykPLqaFRSeGQIgDXPwTexWHMWzw
	 sAgj4kf5lIVvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDADCA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085723369.17269.15618915860081918631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b86ea96433be2c7bebe6b71ad5a52ab7013fed425f23063ffcc72b9ca50c033
Date: Thu, 01 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790857233
