Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E23934887B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784187514; cv=none; b=u1OMchmy38rVXeFzHky5BY8ETsg0vaH/lqoVFjim0VbvFWFzRgr7ZoCbPPmJjeCnFQs1ycGBLePnF1wocVXjBz85+5CL5L02bG8gTNUa5/XoZzUnbzPEgIpO+2Zd6h/kFBoGuaI8xzw3iSqBKa9jYmp7+YTDIUJV/WCC2+svKhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784187514; c=relaxed/simple;
	bh=Sn1zwclWSgIpWxiWYxugLPy2MoQhJHzfuvlwqK2r9y8=;
	h=To:Subject:From:Message-Id:Date; b=rEppmImj214eKI9L5ay+qOdt1J6LJnbaZ/xlS13+ZI8rpzwlgdowgPoGGR2xDDFl8WccBJFnzBcfT5cFkhNZP5xp8cjL8CsKYlC0bW80ltrw+1QWLLLIyfptb8JUpE2iOKsU4XFxgga1XE7T4CVWz8t7dnfbIsGMO304IYohLck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVVNW9BC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVVNW9BC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB0FC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784187513;
	bh=Sn1zwclWSgIpWxiWYxugLPy2MoQhJHzfuvlwqK2r9y8=;
	h=To:Subject:From:Date:From;
	b=cVVNW9BCbl9yXQLarmGenTeIv1THbREy0CPIrA9Xqj+0jgkXSwhEWAXaPv4cvvt4b
	 7vKIV13PJpNlg6ODt/BMptSnMvUeBSu7E3bSsgm5wzQaNNASma46KxmZZO6fLum1rC
	 88KuGYUc/UaMwoAhGpIKOp6PZNr2aHRLymveZgXryGfvQ6bm4AsemfBi31+SJTStFt
	 2gIAfnBFADHOgjP42Sldzv4qPVH2P9Nt7SET+8EVekYBsjoSY8HB6kjbqOBWkzwZ+Y
	 VSO69Psv7TsodELnPVCnRalvL2BNsBYK63uEGb4OpiKbuPt6Hmw2V7l++rpGlkdw+J
	 qNgaeHkl0V3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E1FC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418751368.11698.2599428834780216484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2f25b6dcc8a981e4978d4cef38870c8959fd1d36095406fddb15ce34c7c1c9
Date: Thu, 16 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784187513
