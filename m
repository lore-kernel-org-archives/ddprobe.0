Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D23430EF9B
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782742714; cv=none; b=nQxNe6VQQRfgJgLxLMZIF2Uh7rbyUawptxQX2WPt0VSiE3slBUQySo2WYeNku/j4mrP6Ftd74eJ0E3+mWGsJ0mzdPf6wM41boTf6J4B8FyquZRIHM/Na5nMVBRBu0AaMs+MbyJvTSV3f5VDFgoTg2kDe1MtDWdVteUuaOip2vfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782742714; c=relaxed/simple;
	bh=07YhUsyu82U1hQzGj/xKeab4WbtDGyM2cMeCUz3teZU=;
	h=To:Subject:From:Message-Id:Date; b=QONWQJkFckK9SWrfjsQ3kcO0cDG/6bMiDSiw4pYSinQz+OcPRBSPWswxL236U5W08IMyrFwxqcMEZ1I0y+z3OjSVzQDUc7bFFN3vYYFYYvL54MzEkXDHTVb1L7nhghUK99QFi17DViJm3wLcV+XZ2YOE/YFuKZuHsqx9qBIOulg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JahxieEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JahxieEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB03C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782742713;
	bh=07YhUsyu82U1hQzGj/xKeab4WbtDGyM2cMeCUz3teZU=;
	h=To:Subject:From:Date:From;
	b=JahxieEcOwJYOVabaR+kaxd+i3FtZwxSmonNdHUQ6ok6RByoNeJ29BmWDE2uJgnBt
	 +Y5t69ayr5e+cBr/p5KyAMkJdjPYE++ifh7/u1dqZRtPnUciCe/DqP7nG8h6HlU/Vb
	 yCNhzZPCu5YWUD6/rch2TXDZ9R+V+mB+KaVsUb58HibReaIFJJLprJzt1UHab5jI1K
	 ifny972u2dVTm6M8RU6TwqPOUZumqqX6u0pxxQ7foKwDsxlTVM7Y2QpNjxtRzrARBW
	 nkcOGJmeCQRi5B7ZM71aor2bUSOtB9obFk3JtLrXl8dORfv5pYWlPJEwNzPi7EDFt/
	 F9NW33lIOk2rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3722C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274271372.3149.11689906056353601897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06fb4df3bb3f6dc52e19d1570b89c204e9278da5172da6c3f718bc90467df502
Date: Mon, 29 Jun 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782742713
