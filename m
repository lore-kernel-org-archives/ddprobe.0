Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3437E28032D
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756458596; cv=none; b=AvaWGmU+X/PC1EKUQJuz8usYiwpf1TpKoLpuPtBAPANTZO2WSW8dxNlJeg6s3wh4pMUv8Y+DElJQaQgIXkRuEjxB1Dc9SVgGVWtuK5Y6h5LOGThDmsEBNCM+VA/zx230EMHkpzuEqVwkrKzqw7j/2Seezx9QxLdVclbeJ4ixYow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756458596; c=relaxed/simple;
	bh=omUdZySvVvt8VWP9ELd1zDoFupNDIz/F3vIZvuopSho=;
	h=To:Subject:From:Message-Id:Date; b=ohhpjORcibo+DP2hVGtAYmr7vudZiz2SKHHUygoplLUVrm8cRfVkTLzRfRAodDBTXCE0XeD7mMqPRllPEuYbFl8AABv41KFgtGKkUaroeRG6dIwSk222Ehtz73Z09NpYJQCPJ3Uxj42J/z4gAOa0Xzgy5WJ1XTfKrZDslA3o88c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izk63Vbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izk63Vbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBCC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756458593;
	bh=omUdZySvVvt8VWP9ELd1zDoFupNDIz/F3vIZvuopSho=;
	h=To:Subject:From:Date:From;
	b=Izk63VbgbnKCWfyg5yRA9L0LwEzQxFygubmTKPXYBq0RlKv+MawrrAWEou8wqBOKr
	 N0OkSMryrE6Af8T5aOQwqjeRzDMW1YqiElx9fuH1L7Hept5pJMkYRJ7M6yQhIU9ADa
	 RP1aXDkeBIMieNbuUjWxT/Gd8ulQfVq0o1nXFnp2viztpqHBjA2BJvHkeS/niVN6vn
	 qje+ddWRk87nnd02oHbPvbhu0/Y0UMCzDtNFo/4ADrJakf4Pxgp3i2IngYUxYT1Vht
	 9iBIFLJqU1saJq1l2lcBvqv8uD26PXDWNTktN8QccQydQjyTYxJCsGNJmTk/ifCIA2
	 h+0fC7DIfekhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC73CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645859358.7990.7823503168267912771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a44583040a6daa868b0eea0c0fb5c64b6203b7b1f3e009a4a794056c303af77
Date: Fri, 29 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756458593
