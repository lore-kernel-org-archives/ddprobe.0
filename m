Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A103730DEAA
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760426994; cv=none; b=OvGkPwUsuNAMainkd/RLnXCQDfGzYliLZacMnYbJJ+BZaqJQAlJDHi/xNSDwiwHOlNDrkydE5iYCUQH/GfAROMpaVUmST+to13fegQUV8LI+/sSBABk9ut7dw9Le3jhpqTkYux0jFTvWhctgtuVqmwa5oNF/L5e1X1zP8lwsM5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760426994; c=relaxed/simple;
	bh=9iyFxOfms3b8wQ5stmiBHfK8gRVsGM5rqwmhKRBOYMg=;
	h=To:Subject:From:Message-Id:Date; b=nrvkGleWFs+CJyfXd577O6Znthg/Nur8g6imla5qWHr7RuHGl4lVOP872tajDh11dMEExybWnaokYhZGQTSCgWA9HOIsDMWyNrX+s/kYIUHKbrTJOmPLoqoHkw/epxdvpmsxenPtvI6dWOeFugV21fd6SetAyeGc7k3gAL4STpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIv2QscN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIv2QscN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E54C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760426993;
	bh=9iyFxOfms3b8wQ5stmiBHfK8gRVsGM5rqwmhKRBOYMg=;
	h=To:Subject:From:Date:From;
	b=tIv2QscNcAEcJn7FfuM32tDG+iLROfuNT7lEOilYRLTmaUmSaezxa8vqHGcaqlSq/
	 kLmxkI+5upoP8ZGgob2+6C53drCEYSlEmzcchSRwS3LIPAiczLAPlsbE3nEI1JOd14
	 jc7X/FALIQlGs9A62WV5yCTSpiHQB6Mi3P4fQKJjmzG5wUCeaO243R3pJTk+e1yfxo
	 zlKlEo2H/XTxwdKIbb1954x1Oy2xj8VwPKBSQjY1/5GxAsbqsbSB5Cc8tElgfXmrEU
	 ISa04nnQHeodMUIq46ZyTfTPK+2uiuhK/1yLtUrpmhdvlJEQuD9HmTWMq0AOTlyN9e
	 JOdP0rb6DKFEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E6CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042699357.11378.12084095189633506178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0dc1eba6aac1ea685fc8330b38034bdda3aef052cc4440feb23659afda8e245
Date: Tue, 14 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760426993
