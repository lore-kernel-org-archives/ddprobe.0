Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E041F09B0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749536394; cv=none; b=Q97eeUBFI6GP+yyf2VCuodn1Y4oCFZmTyMaiTKuRwNYcMqX5rSp2XwSdVdj4rqGz5PHYP/S8xWpJVXcC3lddJy9WfdhWTnh8TUr3M5XXSeMobBWcOHZfHQ2hWuk1JdNXNV0j0vg+06zezzsRlsKB7/fRID9ZMt/EguK6M4Kdv7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749536394; c=relaxed/simple;
	bh=N/iqBHAEGn5pxXcK2rQecvxIXDS19azQVIQPfG//qjA=;
	h=To:Subject:From:Message-Id:Date; b=Jg2VAQ0A78c4cHrTd+iJqnnK/VjuJuH778Dvmy3/pZq1yqnXnrLIB/obKk/oTwVukldw4GLi6INigDDoSCUhFkzRd18plNhxIMxZmRhJ5mKHo56CTM07tpsvm9QouB9OpLEvKL2S1X37O4QDSBM2Hd9b2etzgTOvuazsGFkrohM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMkWLAwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMkWLAwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC5FC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749536393;
	bh=N/iqBHAEGn5pxXcK2rQecvxIXDS19azQVIQPfG//qjA=;
	h=To:Subject:From:Date:From;
	b=MMkWLAwdGOfwyVfTDjEHwijQa1rpcpY3AzzCnculPGZlWN/Gtx/ihc2UmxA2h0evh
	 ezkqo5lftiOQjxOoJ5UcLz9avB7LiPUe+qpKkqNi4XrYm16sn1CKQIA/mmmNKjs7gm
	 SBhMphZsYHfYsLc4fQXdMpEwRvz5oGtaqirOTMqz3/6PpsyPuvwMJY8fKdrwSqUKtW
	 fGnnuVhOQLNLyh3y7BnWUlRojLH/7jY27QUljoBhu6yWAZ6KZxa0yJzvS9t5y9ykt4
	 z6MpcJUb7JXrBenn/vQaEH/gP/35z9v83j+JZTM1ZCDYNvfALydMmRmgaUhz1SQ1VH
	 jXzSCheUEFlVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F111C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953639357.7668.12150476545728867501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07b5a93e09d462d7b6b9c846fb63f7b8b20d1676ee9923ef31de6c98341b501
Date: Tue, 10 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749536393
