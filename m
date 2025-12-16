Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6FB2AE84
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765875234; cv=none; b=KYKHmHElJ/Ehe0eCQu3DbR6mjJv4HajapWNr9jsrd6IfxdYaYpztgbGKcfDR7jCVVWLoR1XaNU9FExbRIl+CRSHoi3z34h/7W6t4h28eoFYCVd7PCOZlqcqLQn6TuQcVpGDBUvvXmGZQs6yDs6+KFM0tFYA625JP4DqUO34h7So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765875234; c=relaxed/simple;
	bh=KgLHDI5mS2dMj4kuxVJnhPMzfepzAU3vWRV0hhToMb4=;
	h=To:Subject:From:Message-Id:Date; b=dHPHLQenTrNzzmxik497nAZICSyI8PjVaa81XZVWfLEgXEA+C31Twda06sXUkuLn0uZm7RFcnF/Z/B/LglSv7brEbY9hpznyklhri7SElxK3eyS3+eeiLWK+Xv/rrvoEa10uFQR980afSQZMHXLeR78E2zlN8dkCxgnhF7Z7d2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAY5/LEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAY5/LEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A285CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765875233;
	bh=KgLHDI5mS2dMj4kuxVJnhPMzfepzAU3vWRV0hhToMb4=;
	h=To:Subject:From:Date:From;
	b=XAY5/LEbfHrLvCDtX+M7/lKG214Rez724w4kudDjFxNqoiwAmyoCqafiL44dBnTj3
	 aiqMqctIYJPX250pEBndc9FaP3NM/Av2yczpZ6L/jlHuJv9upx9KBHdC8k+rsJj8xA
	 dDMTe2TD4kl3npMZfu96fkDwq15Z/Fm4gDEkY6mwtY+H2rrpbfT5aYENNhWbQFj4YH
	 2vi20ZVUurqhm2q8FCFjHglgFcqHceA4oPBiDPXNnsTszTPq87PCUNDtRuIc5nrALc
	 fXfEoQ9J3CU8/Tcr7FgtWRQdN5tAAwd0Ktiv9aJeWV90LajSBBhFh2DNWot+XzykXB
	 rd6rJWHzhBTuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9117DD5C0F3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587523358.16163.8235196510435338559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4817417b4bcad0393ebc07806b15a39824cdd1bda1b9d9b41cf95aa711d9a799
Date: Tue, 16 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765875233
