Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F24A4968E5
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772835294; cv=none; b=DY4BueFmO6JhClz91eHde6JLuQ4TNriPIgqwOlQ6dleNnnXFPYleACqn00TLsL5FzdauC1T0boqXyKkhIb6DdHlzjCwkDMQ1NjL4j+6evVE+zf0GR7BaLdky00BHc63wDHqUxJNDBR+mBC3CmcMUO0F9nvmH1vuegZh0aO3pdcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772835294; c=relaxed/simple;
	bh=/YXOHUjTUck3yRjILYKvtrfhYrJZiA5nviOeVFPCU5g=;
	h=To:Subject:From:Message-Id:Date; b=aUGH7RNyS/aOltI8yFbLUIjZMZ7eHn+ysrcY9g3nbR5rxrW1U0XdEgzrODRPo+Cch67XDYFIy8mb8QiAf/uqfj3pEsRn3naZQSmM+2N1rQrh/hp1v984WquOdQ4Bj3gde++QL9ScQp5lSxcFs6ydvlKSPkSSQzhvtOjI5vpZ1FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IExeQqv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IExeQqv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52FEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772835293;
	bh=/YXOHUjTUck3yRjILYKvtrfhYrJZiA5nviOeVFPCU5g=;
	h=To:Subject:From:Date:From;
	b=IExeQqv0Q8oyoz0b2FNqL4w1l+54udXtr9Q357e5ZbTg7JWdS+JHqmogCR2Mr5Vlu
	 IcHsrve2Noje2qxpJD7O4RRp8mYMR5r4U393NGvGK/OqwFHNfESulqiiS4RFxCOfvJ
	 v4Sf3e+Bh5KLom4TbIp4AutKrF4KWbGyMKJBlRnTC354q81ude/lDS7k+5HprFM25j
	 L3NQ3SbM9ztTE1n+n/dKorwkKQzz8RLwraSD/pSx/ahilV5LymZJOTPq5dwJIFHTAR
	 yPCrYWltFdzBVjNgrIiEEYcDNC5MXDhCk4HhQcg5jO7k4VHezuUffuPPHVtojJxyEL
	 57ZOwWJOB800g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEE5FCC07D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283529363.25309.4534360559450339370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7334d4a69010e28f96a3b5cbdd8e43574ce337fead541f5f2ed28603a8583820
Date: Fri, 06 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772835293
