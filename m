Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009B32E620
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705604897; cv=none; b=Q1BY7VHGRa3zEcX2oGcqZNSiDlhZoDc2o3+VQd2MXhlxPGKFnFv0ZRJyeyAr2442ISK5RebgZ2uaPLnrB0j3v32MQmfcvPsZLQjH378hGEmESu3tdYDH8Y4lAfIktk94uMvcaYa0z7qYonSWTZbRP7jP0HbgZwIdJ26rMV8ORc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705604897; c=relaxed/simple;
	bh=eIwBxE7mg+PeH/llZ0owWUlAuEpCU8DNg7UvK+PUq9A=;
	h=To:Subject:From:Message-Id:Date; b=Svc68lK/LeEcad088+jJ85D70oWSQNPUkculPwny7HsCcgP/T3WcCxldyC+YKp0/sPOLPlored0C25p/+yKv2ugroMTwoUZgdrTi6CTUvqxQkB+KzLNUWtV8Tc3J3/W2/3gz+av6MXLyRJMkpmoxzUGcy09ySlPpkyMYBKfSdJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5EiII2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5EiII2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77729C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705604896;
	bh=eIwBxE7mg+PeH/llZ0owWUlAuEpCU8DNg7UvK+PUq9A=;
	h=To:Subject:From:Date:From;
	b=T5EiII2pMlOEYmWRNMePrkCDkovZpKiGqMrqg8qhBQCUfCZgENO14OzB2MlIvhFTC
	 MzrsGlASGaAqlNL3reXRM6FL3DMm11CqHSvDBd36LGzFZp50sfYRlOHJ3Nkw2wFubZ
	 h4a6XsCtNXHC9eVGqgfmh27HGVz5SI/y8phj9m1HJkiP0JvGNKEdn2uBk6a1JqkFrL
	 CzBAXKPT6wXpDrWo+pBsk7Dlv/PxkKA5Sqbj+a82SRj/PAxKyyQ0ToIBC2zNtflNXH
	 nLk3SJDQ48PLkMECVgb4opNnUQpFP2eA8oueRqW6DMN12uD1D7H6gnann7hO7BtSWy
	 r9Ax6UW55tQ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F21FC47DB7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170560489638.16882.11803027034910075750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd2f8c6d402101355c7be4cc69563a6e0ea0e8ed29e1964617bd0fb209a206c
Date: Thu, 18 Jan 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705604896
