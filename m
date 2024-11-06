Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6631D9329
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730885754; cv=none; b=QahX/nhcgVx0eOWYCpE+xh7Nar+zGdKyHPLunT4tP+BLagnpJFDoTbPUMV8R1STdowThDrUNnhrwmm1kf8RnJwEGFK3WPqUGpqHYkjsILzhwVgXW0Euyu7fxpmgkTyqfErfgJTxClczHXEr7dNt8p6uvQmNgQe6JBLLN7TQzMf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730885754; c=relaxed/simple;
	bh=uSAAwi0Xv0pyoDje7o0HXYHXTuShFaiaRbPAoii9JvQ=;
	h=To:Subject:From:Message-Id:Date; b=NeGawIMwTaJ2UMyjsqRYD1jTxBvgGE4V0C0YNHX9Y9ieb8ajNmqInApWrXodD8IQbze3x83vVpC46uLhgYV//MQNZU4+fS5qsT+T1JhoFuwMsrvk6iwxXglBumttdPBVlA1K5F9y8eCqt4Qe3ALUdgdVtx66nKSaunqWEQEIdJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioY+xayF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioY+xayF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74E5C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730885753;
	bh=uSAAwi0Xv0pyoDje7o0HXYHXTuShFaiaRbPAoii9JvQ=;
	h=To:Subject:From:Date:From;
	b=ioY+xayFFQglvbndobqjGY+ETTiv/EqBRn/z6v52LSPFqZtOsxD9DG/ESwXCZKEWD
	 kxJsQxdDNLMs5zlhPIN9X8M/GJAT3vbnSH9h1Nnm6E40beyi9ILMOQFHAebBG4d8j6
	 om85lnRYKPyM2uRcp5+kF0kj2HdA1B6OAO6mrmJipjvOA5WhzSTg2z9CzpO+qoRI1O
	 2WlMVB0dgkiDvMJJWY42eOvtZcjG9gZmxCAdfciHEssihjdb6uo0iLeFjvUtZICORg
	 Uj74oH0EjV0rOOS0NrDSpFK7J/ZISjZTErif0rMY+Gh0ipCi3P4GJr9GKEJFeDP9ie
	 hNJG6zZ88n+gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECED3E798
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173088575358.21857.3088285831491402332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49633417fe9622ebfaf668c84f128f804c4f78c8d70f84529d2685e0bb9b402
Date: Wed, 06 Nov 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730885753
