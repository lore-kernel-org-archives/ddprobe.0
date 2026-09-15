Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EB33CC7FF
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789437634; cv=none; b=eYktaelgrDlwOBQlJUhSth8i8M2HRXMyVQGBzj6AUfwyYmuX0G02B9ZPu5DVdnTvM/niGRDBLeK0z5GW6rMSublujeq9UsgQb12POEf1koUKEy8NtvkwmOPHI9Ea7OUamyb5NvPsu/cd/EbXzbqkCdFeVp5j8CVPJKEcadJPGts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789437634; c=relaxed/simple;
	bh=KlXaaQDhgMpuwRsbbsnfryAD7GxyggMFkeG7b8n0/XY=;
	h=To:Subject:From:Message-Id:Date; b=mvVS6WwhktW7fb3/NWC3brzrJxSseeYYy8bN4Va9pCS/aC5/seY0/z3RMacPi5ZuEEFupJvTw1g3QKGbW0RP4aMaIH/UITZd3n6amz3Ol2sVKTFMtEkkEmWI3yDjZawQnGczZctcwv79GLCcSMnC1EZiscxSip/I+yCzOITWQQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jU7x2ou9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jU7x2ou9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E7CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789437633;
	bh=KlXaaQDhgMpuwRsbbsnfryAD7GxyggMFkeG7b8n0/XY=;
	h=To:Subject:From:Date:From;
	b=jU7x2ou9+je0kBjSbqamcG6tVIB7mcJucU6HrxyQgekpfubtqcLOh9FxHqEGUioTv
	 b6KluQHM6yUBYCemOf5VO1KUs68rFXz6xHp9FAJS0k5KUOnstedhoLzkKQEWVfpV6Z
	 e1fAYj23lT7OnJV4RE6zR+jKG5BKyQfDrF9FH6wnZtQ6EvMRydI6ILMKvHK8qgaosE
	 nNfl8kLVVqBilq5T20wwTPouevVlajh6MWNY3v5uVHon+GfVtPH5x5Jr+KHkeCbo19
	 +TpOif0TVIxetsEo6Ue2TI94Kr6W1l/LHBts+cPtGXn73V8n0lGLVZkgL1cqipi5ju
	 l0wZPgCHbd31Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7F5C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943763370.11966.1741018806941277757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ef3f2e39b7fe907238be2a3a0890e510261fce2163c13a98ff90fd2f054ce5
Date: Tue, 15 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789437633
