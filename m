Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2094F145B38
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732745754; cv=none; b=if/XoylbNwaW9rc4Alr4jGAb69fG5+xueRzZGRG2ukP22ZmCMLANM+NN0/MJkiiXZNOV23xRk1a3GEGK0Di0YV1qOA9VYbrRKyjrAVUR22r2lQlV9OaowOUSgvfg4GX+2TpSUDfl1GYrlFeI2thpuoJBvSE99FCodKOgVBRRMaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732745754; c=relaxed/simple;
	bh=Watp0rK21dZ93yqLTFwtPbNuTEFBUHwRZcx/aYnL9Xw=;
	h=To:Subject:From:Message-Id:Date; b=SNMexuDOpVuWECRcYz0wqw3lMMgqVU9ZCT6riEYzudt20So0l/PZPmAV/dSSyZ+AbFWarYtU3EG8F5kvoT8h7P6jCZAQg0+cotXW6Tit8m8AexgHTW+OF/ut53eP6L85AdwcjMw5CpcHzNlwpoY3jBqB2oHsKWuoztb11RFtiYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3zpC36k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3zpC36k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428DC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732745753;
	bh=Watp0rK21dZ93yqLTFwtPbNuTEFBUHwRZcx/aYnL9Xw=;
	h=To:Subject:From:Date:From;
	b=R3zpC36klvaiqAdbLVZ9Bb8qg27Zc9H5cmGM+qoevarl1jolN1ILgPURvqjBnyfeS
	 DlMZT3GB3RZB2hAHMhMYBFjCR2ntwW/UDN622o4o7txVEHcOd+QEWD4q1KmCMqgnFI
	 VQMQ2FodKwwrUrEYeH0VaYzig+ypY77AuDqXahquw+6suydNcmSjWDAgMY7PRL/FhI
	 Nw5cuNfHXFvXJCTa/x/mbaGFTH2iRzXI2MayhCm2Mr8LlDC2zarJBfBtUC8G6/YlLA
	 OSgeq2fBw22l/A0EHn3YpYeklEfyIDRlXF+1iTw2DEK5lbORmZmkNfXhLyRrV6zCZY
	 bG0ugCj/b/OJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C3FD6D244
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274575359.21874.17088402803762320843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f4320bed767f369a8fb6dc112d85746ea26fdee3dd1728ff5d6061c0b4f85e
Date: Wed, 27 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732745753
