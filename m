Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D3D157487
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782019594; cv=none; b=uuuCBnieCtFeEUNMF7tBnhr0Dlcirg9aci8VnMp2bckvdHjJv7d2Z5diW76s1Dv4B+9UDBXEMHzOwCcbpsNgb+eYHE818iRXIaemg3LRPKOvRawWgG6YvBReynYu/u0FCTDAeUYp8Rl1/jyVtJa/7oAJtvY18cMETc9v89Vo7+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782019594; c=relaxed/simple;
	bh=hNW4RSkwhAOJB8XogOCoNoG5G+KrgvIkHCZ1Bt3nzcw=;
	h=To:Subject:From:Message-Id:Date; b=AMzAyzseXV6j3bs0CxiJwFqWBp9N5Hajv4+KW+UWpCHc+/gC6T+DawvIOUDLX2O9UES+2/L4NZAJDFOVe09hr3uWnVFEgnuL+ma2MgcF5gemTzHDF+oEVejdhv89EqSBUZZgoNwMPLwRmWGcWGkdB2aXQlf/HAtfabPs5zxTMDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Btei4sgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Btei4sgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF31C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782019593;
	bh=hNW4RSkwhAOJB8XogOCoNoG5G+KrgvIkHCZ1Bt3nzcw=;
	h=To:Subject:From:Date:From;
	b=Btei4sgHRI0hrY+I5HneO0khk+8InblN6aehUWxr9zLLz8UwjP92ZZAePVnyTDQ0x
	 lNUfQ9j5jadmk/LK13RV/RpBhEC/JIgeCIktZ8zUIVwp0hwfWnzQjeRBXtleO+1bZi
	 VAja62iiz/DnI5+p5/57sj/MECFjaV+0HYfcTjrVEHi+VTrmWvBvw1goW3E0552ZAl
	 Odw2RzcuMOCkURbd5YATXyMgTRh+g2rt/CuTeKuvlbd8ODlZspfkMsoImAkLKebcCB
	 khNWTBvuTIQC/7yLLyJZpDGMBrAAImJf0HqAflmdzBKucI3JmGtpSfrNR+J8UiUm53
	 H/Db1hcMoITTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24D1CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201959369.15704.9468243356370616561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c190d8ff6277b58a6660740767eb235650e9b98c67df8eaf8d0635ab8075c4a6
Date: Sun, 21 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782019593
