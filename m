Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A8290D9C
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746494394; cv=none; b=A7fBf6L/weg2TfIqulvpExE95ZIwRQKglQaLqQGdujGbgaG5o7cowCwf/u+RuLURKmPxLOia5uxI00WuD4iNvcojVTFw9TmtM+Wz2YZpPxish/+typCjBFEaF1rl4YbYlecKBqPNQ/XELBhq231bqugmpmlv1VtT37HD6OBZByA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746494394; c=relaxed/simple;
	bh=fM8Bq3+hoMZc8wOJcGgZAtNtNscfrH/9wBIMmXGvVOw=;
	h=To:Subject:From:Message-Id:Date; b=BhaMloCWVtFQFuC6gXPnyTzkKZ6m6YlHEhpZowqXpgDcCuaX8JZlIxoUvnRW9/AXMOF/OpsajHOEjk8SNdyI5Aer3EER3xdwh31AGsREopfV6yeTaFx+gBV/xZExvGdWDm1vqjzE6rMLX/9VS9tKrQ/FRc89ST77XXQvocgbIIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlIVLnAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlIVLnAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B6C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746494393;
	bh=fM8Bq3+hoMZc8wOJcGgZAtNtNscfrH/9wBIMmXGvVOw=;
	h=To:Subject:From:Date:From;
	b=OlIVLnALRl1TJfNbB3ojS6KmPs2aSY+O1OBowhpPI3FJtSdIgPChe63zIBwYpu1fL
	 Q6F8y81HMKnILtdlaSNQKLKyGMxwHvEuKhL82YFXMGojPSstEqhiWa0xbjbUWDS32Z
	 tLBN1kpPO115BxhbhSrJLNZLc5zcBtvAJPDHPGhF4Zf5Q1QQ/a86vuIFZipK6dwCPO
	 jf6Aat/j/FIvG7wBOFzaFpAbsEkaSFsCVCQmv7jbfQCzyT65JnA5YKFfPSqiN0yCih
	 ZlIwGTegQ26QZL+lYO71KwRC7oAKXJIUcUS9IApUpVrE1vmcvK3cze2YC04tYm82wc
	 NcZaGO7Ffk2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E61AC3ABB6
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649439357.27348.1932910558459681689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5f92b19e52eefc959fde3e156a464e8295b0ee9ef164390f4a7edaee3696c2
Date: Tue, 06 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746494393
