Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680202E764D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788000634; cv=none; b=Pdsf5frHFXVIke0wPfbN9G5uRjgQFs29YWwD2gLXzTBa8FRxwq30AzUFLBpW4tLz9NZe5mOxo/IJRLUSJvGcY4zQww7XidH4sR6VTtnW0QpD1CemApZ4nwyQhR6aYNcuVWjK2U822lKqoL2oRo1+CHqq4CfAaTz1Yw98b20pNXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788000634; c=relaxed/simple;
	bh=8Nq3uyFaCjz05aa2HgsC4E8i7lHzowW8cHTqRWR85eo=;
	h=To:Subject:From:Message-Id:Date; b=Ke2lUZwszk099XiW1mwisBvkczzY5TVRVPqsiFmp9LY8tlXnL/0xUEVvh+bbNVDrpcSu+nc85Q7zUP4QOkILNpQm8/uWXzgW900OXYglcADJsdTl0QxjNh6flVL1OkB5VRNezxdPMSK+Mc8KC5LMVWkVuhk1qj3k8ri+rRQPcws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwZMH4o+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwZMH4o+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A8AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788000633;
	bh=8Nq3uyFaCjz05aa2HgsC4E8i7lHzowW8cHTqRWR85eo=;
	h=To:Subject:From:Date:From;
	b=HwZMH4o+uHQTX44Gr1zj/tKm3LaqJ9DO65iZ890ExZc70mirkGxdubGVRumQNTFPo
	 Pz/3dwfjnYF/w/J9JUQkUNQeXf6acqNif64Woxn8hNglc4NVbdooD3JJKaJyAAhJKl
	 n23rqbdZ7uwiIrlhtA9xYCXBALg+D4F1gmQHTIX5kePxe0TzTSX96PBIDkRkcWXI1O
	 jfQuGqVG2Nmz+NUCsCvXFeH2n4DcQoLgp8OzcZ9WXJkK7ev/QWx2H7bhmkFqmXI2jU
	 SibdZhG6WyX1JNljBRdwJeiO9t1W3g1EYHc5DEIaoy8kZRtFhrJYKI/uPR2cvctE07
	 HAyYjG4CNwUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA62BC61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800063368.9490.10195550872485743193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2359321616c106ad7d29db80567d7214a41ef15effe94e5fd4808f74e70113
Date: Sat, 29 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788000633
