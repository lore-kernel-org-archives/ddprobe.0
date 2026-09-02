Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5113B1017
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788383434; cv=none; b=UK50HBOLMaut/N14V5iJoU1G2fUBWfGlYYLbjp9GFISBcTNK7E+Cev/Z4thahFl4kwxTjmL3V5cAj0sGO6cGs+gpy2NFGog8B3KrEERVkIQ7oWGts6pmhVy0jJERma5AJEx6rO476rGTLG3aRhJ2NvhWYLS0Woht/0CpASowt3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788383434; c=relaxed/simple;
	bh=HxmzDlMhMibCpyLq+D8OWmZjT32hMNKqlcW2SQRkZL0=;
	h=To:Subject:From:Message-Id:Date; b=kJQw22RLGB0S7uihq/cDDNmtR+eHaOQA8DiDU8a9oSLl3O4X4AR9kQQKx4vWuIDE1BPwYo/gpOxX4jKSzFWfyo1g1xPlyGah4mr/nOdQ6uSz6wf5Ao8LW12k9NKOLYU/s8G7qjPotIf0/IfJNjXGpz6xQhM6jY042vp6grc7uZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wpe67bnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpe67bnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D685DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788383433;
	bh=HxmzDlMhMibCpyLq+D8OWmZjT32hMNKqlcW2SQRkZL0=;
	h=To:Subject:From:Date:From;
	b=Wpe67bnYodq7rhr6uMjocH+XT2OUEruRv+oRIzssW5okjuO7qyBFCXcXQXffuHV+u
	 Bt6t9sEoaPdQsheFZbU3PpFXV0nxTaxlsriPfetQBUQiLY6Xg/XrEMY9nw+Wd5fQ6I
	 3WiUoKnIO6DM7m+dMKHo9e3oKZP4mzdH0qV3obMYOQmelBuftaLTBIHtaMRYykMOZO
	 D5WwcDdvb9zJFJAuav+Oi187kds7RSpo5IZG+8kqTzSq7dhP1Y97L8Dv+rkBT2IEND
	 OHkosylJ2KKb9VKvr+OnOrtSJx/FpqXMBhc8sOaPeXNdNy5PjUn5KI7HekDUq2wlo4
	 2FsdgRg68qqEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B367FC624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838343371.7854.7705121030253314489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8321f3a2f6584ea434eda8cc06a848b8a359ce6c8506700741af56f52f94b32f
Date: Wed, 02 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788383433
