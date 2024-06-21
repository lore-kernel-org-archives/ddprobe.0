Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DCB823D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718985143; cv=none; b=CJ51YWVKWZ6E65v/q7i+Tx+m7a1V5cp0XenHdzktAXxCSRltrgJeeCruQSuviJZqWmQtJcBG1/IKMKgl3Tj00rhlLvp5cBPGYotKDQJAUjg9qMIUnRZfQtF46Jru8sLSTxvVJxcYO0YOu3WSRkWvYpQsDdWtCXo6DtAuDuLiCoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718985143; c=relaxed/simple;
	bh=SvWW2Hzyyme8YKbRL+UeTkn4+kQOFzYQVnk5LGpfnCI=;
	h=To:Subject:From:Message-Id:Date; b=jVnNp9OfN7zuq5VH+Q/l+sJQjsGkCk8UzN1N1W+Q38pIx9WFISCrnxSW0KPZ4wsQcoyb9uqdWfgQIjQLXYXwFnbecsLfbtT/onKso97Rg+921MeGDdREeVnoB7KhOrj1lv00nFJcZqu7UP3y1owcvdE0UoMD4vmvaYyDEgwYFxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gv43/jr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gv43/jr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D582FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718985142;
	bh=SvWW2Hzyyme8YKbRL+UeTkn4+kQOFzYQVnk5LGpfnCI=;
	h=To:Subject:From:Date:From;
	b=gv43/jr3Ntpfqyu88aRMMEVrzQVG0WWUzEbMCHq1wJ6HU0BZY+lgoZCqxjyOdc+a0
	 AocHI+5Hzi9Weoib5e+i7Jt4Gz6vqAh/fJEXIi8mPF3bjQ9unofbd07iImkr4xz/z2
	 W87aDTvNaRtN+gNmc3VLfx7gNiY/ceXnw8pKzxGXrAKu44SMe8L7HAGNw9vgClEGaw
	 G1OdKhzZqlhQpHdyJyWhJiYblSFummXhteFG9zkpParEaGxKIm/YLSQxeouRGvJWpA
	 cP/scsvqW2WuNE5XqioWgnYaysmqJb3LieGNvO27kHu+0xMafG1IhgEEle4RetTRtU
	 26arQj8+v3f2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0915C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898514278.30635.8408736367667898512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101eb10385e5366b6539d0ed8ad5f01f76d45527a841c728c26315c9f47cff9e
Date: Fri, 21 Jun 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718985142
