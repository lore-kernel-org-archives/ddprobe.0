Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208561ACEAF
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763971314; cv=none; b=k3sToh2zXk2UDZeCE1i80IZF6pcBZRthhRBgb3y/NP0RL6WMnFu7GYBMVPNPvo2TihdIH9CBOCHKhsEdz9bPEvS5UTdG7eVVewUGwe+PMkxIPMzJcX+eZUNZ+fkoKfM8gNIsJpcq3IVFp7799z7HwJaDyZDxmG/l7wzT6sNIR18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763971314; c=relaxed/simple;
	bh=fb4ZFkrwlE/qjm0j149w4u6TYl9r2DsNn+KVzfRP39M=;
	h=To:Subject:From:Message-Id:Date; b=gPftlNMUUi6DRoa8txU6TXVcEza4TXG8T8yg2lqkEPxunhb1exate9VzvgOE7jyC+XkmHTbL1s0XtT/2mZ435Cg84zfsxNnbADk12RP0ld4Nw+L1ssOTAueWEwywVJuxIyGUQZTqalAQTA4atsGGqDn+L4RXxiSofDnL+8yCwfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqzBU1MJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqzBU1MJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3542C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763971313;
	bh=fb4ZFkrwlE/qjm0j149w4u6TYl9r2DsNn+KVzfRP39M=;
	h=To:Subject:From:Date:From;
	b=GqzBU1MJd6TmC44q96O6f6uTN+InhfWUFcCEP6Ef2ZY8caGYOKZnbI/ASXiHGdLTe
	 oPx7h9qBwhfqTdsJJF1M8Z1Uw0/NyANeBwu5+K876BKzxWnAm24+Tmz0mFPmkepHPB
	 NINSUnPpVAvSqUJVArw0m1kdBrTYf8APU6KoaUHP8aCOKguzBmhc4XGyimzaAyXyUu
	 N0zp0UHP8x7uh2ojldFz/xaKE3KHRrxUSIWqAI5tbuz0oB04Ly83F6T04fIihRqNmp
	 ws3yvjERbiZyWifhSydxTilCSi2y3QFFX9yYWSu0+teg3nR0Ju4Iz+aWoZHBMeSD8g
	 3wZ1Pnpc5L7Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED9CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397131359.14917.7799538712516645145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc089064a26044eed18183d70e46367003544c0f722b40432b69de1f5eb48a1
Date: Mon, 24 Nov 2025 08:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763971313
