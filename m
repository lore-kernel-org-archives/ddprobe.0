Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB1732B10D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781100334; cv=none; b=SyD4A8ahXJ1wKLkqaudmfYcnUFrc1Yn5kYmkX3PIO5tuRN7SWKnThlWao65geCylX6y6S2C4IAfqyaVo7WByxIgj7EbnaWmm8C4RZAhPgxoJngSjPWsnPqIl/L/hTLqllGPYTKs0N4EZkq4ywugPz4650V/fCkMNut38uBKfeq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781100334; c=relaxed/simple;
	bh=qvzAstPaor7bzl00KqlWMQ0kSkK1ewx7S+jQkNEuQEk=;
	h=To:Subject:From:Message-Id:Date; b=Uz13BBquGyoVKoXslbeCfMy61yrkvQHCBkwJWvsc2P0iLtMTPtH9R6U9gYPY50RaVNniF/VBO26T4HGQ6jatCmmHZHTWOtxkETOJVc8svdv/GaYJwSHammw2iLqAbGY/cm3TnauTsGqcP+oqDPV4sO/QYeGPuzDycUOt5sXx6T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCR8hT6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCR8hT6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB67BC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781100334;
	bh=qvzAstPaor7bzl00KqlWMQ0kSkK1ewx7S+jQkNEuQEk=;
	h=To:Subject:From:Date:From;
	b=MCR8hT6Mk2D9oBt34bWRUTUYcmRgsr9M2XOwT9zZ9VFysOo6c0imdlmaHpRzs5c1l
	 0oGelfRxyCczkOz2wLiZR02RIWF8OO1i5C28xj0TjrwIhw1NjUM/OdEYT1Y2ug0JVt
	 8VM9bsUDrUUEtjpDFZwtRSulwrH11/fgOGK28+KDlOP96HgJY0ohIfBH1bJQg0kTeR
	 fX5BjLchtwAJGKA6v7xmZtALC8AYea6pDWpO/epe2w5JEWFQtOaDoS1STkgijCII+T
	 IgyYUYkOzPruZLY8dxQg3Hy60orGP47Nwhxh8RO8yfOk6yrYP03Eps+xt0s7Afd5CZ
	 UYtygZt9yrYQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BFBCD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110033378.8517.2143397490693864109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22400d3f008e5e565520592f341d7140c3599bc74b72c46162250ff78330974
Date: Wed, 10 Jun 2026 14:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781100333
