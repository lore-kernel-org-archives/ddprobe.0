Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC31A2E7F39
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755092993; cv=none; b=qlnDggS9wK/bZKq06zUbzJK7L5yEjLZ+zKHcGW3P5cdNxKfaVZyjsEoTv/9PEau6vL2U8YQFyY4Z4d0YjXCBiXMUbZu+5B769508HVoADp/1ZBqiS1qUW1bbUOjNQGq9Rl+lpO7LwrM96t3YOsmyRMzEmMe7y+oIQsAKrs1LL/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755092993; c=relaxed/simple;
	bh=bsh7ix2KYAsy1A4PHJmEcajaFpBz3qV3d2qmUKlC6+4=;
	h=To:Subject:From:Message-Id:Date; b=OCiKIrU8Dvxb4cgc9G5cP3jK+bShiNYpPn9RawWC3dpVyT8uPMtM9sn7Ietfjz7Z9oR2K/Qk1Pr5QSZHPPA1YoeDDIUJXomoAO9ytDHhOHnYkbYDYR1+Kk9ET65J7SdJlWym4/7vGC2gmgGLNX4PAeUHx4+JW8QyLzFeu9BPOZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFD5Ytj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFD5Ytj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1FAC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755092993;
	bh=bsh7ix2KYAsy1A4PHJmEcajaFpBz3qV3d2qmUKlC6+4=;
	h=To:Subject:From:Date:From;
	b=dFD5Ytj9wBXs1dXNhiToBzQ+zTfStl9sPUcBFBLRCsr1wW1vM1W2gMf0tbZL7Sk2s
	 GiwcIv5TCiGFq21SwoXOD6SHW0554taQfkkq9fKXeJiFmnScs/bOBpIGE1+P+NltAm
	 59q3zBD9j3jxb/CLntBMvwUtT12FUBzhPhOSoa00cIZbQlNqeZdHzEhfExumbhQ3va
	 gTMR5nkX9Lua2klCBmCauPMGDR5zfUb1SV4Qos/qpyrFNvTaQAGrorZEamplpLlqtn
	 9XxAlbF7Il8IcmgpT9TtH2QAl9+CSn2t9KXwsex//puh3AIX/RjLCqw2dQWXs8uUNa
	 MP7oxPQcxwGpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E729C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509299363.29260.3090590455931127979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1d78d0103fa62cbfc4c24d51d22bf8cd4efbc8596111ee885b39a336de95c8
Date: Wed, 13 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755092993
