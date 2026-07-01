Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DCF421F12
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782902314; cv=none; b=d9xfCMJGMXMApBtkllXs73VfDbLH1a1r8UJTPvI3WnqPNsUtjI7MIHXM+p65jKa1qHHvjrQF77TY2ZGZMi5WXGCcE+jodInxDIZEmqnuVGqsgVBS372pR7ZckvlheNRFPdNx7wCBoU5qypBnpDEmzfavJfwb5gBCPoPjEw+PMlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782902314; c=relaxed/simple;
	bh=gDhDtgtbStlnIapTnfVeGKcx7as04E+ZHdnE9FxVYto=;
	h=To:Subject:From:Message-Id:Date; b=i2nU11jC+wtuVirX4kogG50jtXNEvfouk+GW9kmoXDv0ny59zRjNBOvjKKeB2WOKmBRM+exejENuGQORWka7aZrKkbGTVt4fNzBY+50zrRPoqZ3eyRk442AB2snu91VqMj17d50D4N7xox+jZ81hspcAesVPws8Ib9+guje1/Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Co4eDotr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Co4eDotr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4880C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782902313;
	bh=gDhDtgtbStlnIapTnfVeGKcx7as04E+ZHdnE9FxVYto=;
	h=To:Subject:From:Date:From;
	b=Co4eDotr60mdnTLd9p8FQNTvLp0+j+NlqQ3+O3fHj2gzZJXISHLh2blRxlUjyu0fR
	 4wGT6FPKOX/LPlKHkEdP+VTevdy57Zzg4i/HG4NZmQjgKPcY8vqmo2RsAPrBCtxPFh
	 yNwkBT5FPEAXLGP8glYNdUqtUFpKuZQ1Y+ifqvOj8eTWYBJFiW07uvvwUACJqgxwib
	 q97HgqGEKcAo0I6hRNIr5WnTNF3v9v2E3IEZzWfsJFzpVW1Z1gd/zjhVPq876uLYXG
	 /cxmfbGr5UpvMCYCZfRh9pGO5VTqp66yUQGwFNT/vQlF/Tr2KIrI2Pv5jWIK7GDFbG
	 nMwcY6pji1Q9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D5C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290231369.32261.5967789718914173670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0ab970f2f34b5a6a0783fdc7a39d8cf800ac88db8036da1101b162a8e15d71
Date: Wed, 01 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782902313
