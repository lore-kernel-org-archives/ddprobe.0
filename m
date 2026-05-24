Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4E81CD1E4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779597154; cv=none; b=IZ0ctEbmk0TqwUabj3wKW/PRjjxNC060O3RrBasKuG7asGYKAeJaKoiRw1suPPJXGLJ3SqoY43qtv9LBS5oD/KWzdBI5NizEL0vtCCNzfX8iTZHrWTorkQPGSAczzxFLMN73YUijebSKUaM+waS+XPrgxZDw68N5JNiZ8pvDtTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779597154; c=relaxed/simple;
	bh=Q5374lWyujYc/j2JO5TjMdKE3LdcCzQQ6Ed9O+lb89U=;
	h=To:Subject:From:Message-Id:Date; b=C7o3aUvC6g34UQsbqUFpYk2OdhkIhy/4PvGe21OnQ37N6r5QNnPbaE6h9gexFPesYJhZsxxNXJAkPXDfTr5BeSxnGbBSRHnegAGNf3KwAYmSqp2NhOu/KmKtw23g9/yrObVr1IETsy3+2ocrg2inJcailevTd49UO7zHPw4Cfko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eifWpmzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eifWpmzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E86C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779597153;
	bh=Q5374lWyujYc/j2JO5TjMdKE3LdcCzQQ6Ed9O+lb89U=;
	h=To:Subject:From:Date:From;
	b=eifWpmzDmS2G5YCYrZWJvNxSz03podvU3vZtECjCm/bdRXpQIYeH4unLOZC0IgT2Z
	 M3Qekf9EiqquR+RFqhOM4PgpytQu/7+vAhy7W52vs8b6fWt64cDeFx1NoLuIZbfS+B
	 Ev2whxR+JQDooU9hxY05x3UgdvWR8WLGH1jo1nquxNVCT0299KZnfIPudlgTvjivEe
	 HORN2AlTmKyQHL2ZYHCa4U6JGnpCg/xQ2Nuo8rTg/2rz273RYouCFFGpBNEDiSz6SI
	 8rPUJfYKFlynuKAe8gGguDIHElJ19NcYB0UcCThTaRYIdSJYneEfuqP7VuqsTLEo8+
	 Ncx2XIBGGCU5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE56CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959715368.19231.2370187738729741048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba6a71ddd3a5a062e932a5c7fe00d211434c83ccac9f89fb1d36c646a361f1a
Date: Sun, 24 May 2026 04:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779597153
