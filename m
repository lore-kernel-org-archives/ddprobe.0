Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC31184548
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726118754; cv=none; b=dQHfOzZPRQvECybg67S7LypcTmpd1xxyIbfX8k13a4nNGbpxzDMlSJrOoSYpBtuVdSFvd7L0ByBYC5W+VzOZW0fvMhrUYTOShcBl5RM9oZER3O8jXTyA6RKgN3tWOBlnj4bFFsQwaorFLbRy8M2PC4GMZOVvhlKnoQIzRRjfrhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726118754; c=relaxed/simple;
	bh=WtO3Z0nynGogYLa7RuMUu0Xze3FdkC93cLzJvN/2MFo=;
	h=To:Subject:From:Message-Id:Date; b=FNI9eL35uu3cOODbHKAUQJWXziUlVlZ9iLwzAV/1gZHDDGheAkPpii/vB2aSWQzk6DiIkKikB1m47rkW6TckeHtt3afDmvxW2W1FEzqT+DMnLTooGsmNoKikpjjb577ZhEfqVtGDT8mRNY/rb2uBomw/hXuopGOTOkMLIYKz+3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrqC40ra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrqC40ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42C0C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726118753;
	bh=WtO3Z0nynGogYLa7RuMUu0Xze3FdkC93cLzJvN/2MFo=;
	h=To:Subject:From:Date:From;
	b=YrqC40radFYIO0qds1YLC1fuklF/Qty+cKP9Ot6oauldsOKkpA+NBsAGmtht0m5ZM
	 1ms6ziB0HtrnwVvjbluhFYfLHfWxxPTkW86+EIi5L+3Qp78K0quDz+b/vyGJeOpfOA
	 uJU8Po7aBrH3mrwiMi4iHs2wBCl9mvTtkg83jq0i7Oqw92UVCtjO26GkuTqqdODVgt
	 MjO4nDmJRY/C1G7hTf11R3luwc+wt+nTjVuEuJOdW+onT2/uHD4w6Pdq4V56A+Ajpu
	 g8eFJvYRsq8lts7eF3Rn7PN6dldqfsmxhGro83FaNI79lmDtF1g2Q9cgubF6w1OOkY
	 MfDtfEFyzvq9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C16BEE644A
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172611875362.8091.14524614081363233758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2dee6d92bb4398d727230e22ec4e405b5e80b8519db4e35834abaa14ac0b5fb
Date: Thu, 12 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726118753
