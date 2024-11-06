Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCA91E1A27
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730898353; cv=none; b=EIb0/BWDVkd4HWCkJIUan3rRfM/szx13ngCim8A6Wkmv1psl877yuCD/mgBY2QDe6NFtgo3abFbPgH5NjcIIo3zrwh/wBvGiMIv5zZF3KOnuDdl/en1FKBlgg0ILrCbEQwtXjfRQo6jJx140U1W6R9M7Rec6/rUdAAKI6RffV7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730898353; c=relaxed/simple;
	bh=OzXAA8SUEXUkph9ABDYmL4VdWJ4WW+GAyXdOI1qTwww=;
	h=To:Subject:From:Message-Id:Date; b=IZ06L4qopASl/WJrZMv6Fd3kRtKDOHmuUIq291dwpMHOtQE1XmClkxc7ckWouUh/aWHe67z3pwSP5b1T6MCv1zBtxXdIPBMoo4Ds+21O9KWgSG503r0N/R+aL6LjOVjh8CiiX/Ggd6aa1U0801D8bfQ0IRGlGegARcFwsRqOBPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXl1kH9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXl1kH9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01B1C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730898353;
	bh=OzXAA8SUEXUkph9ABDYmL4VdWJ4WW+GAyXdOI1qTwww=;
	h=To:Subject:From:Date:From;
	b=gXl1kH9wkMOOadQXgmnOYtnemmsYBj4ZXwZATDXMMUdSyVoDP3YssFd7wsciNwQDR
	 T9aAbE0CPzLw4179CYVL1SljKAEkd9Lcz/VR2SFxWedokx9hJacodrxNS886bGwTKN
	 TpuFiwcG2UxmKbqd6TU0EugATv/BaBPgDv0LvCqcOvZYchRENDjAbpOLI0VoMSAI3h
	 mN+6YHk2eIKOMa2fbGN21fL7BLpKSSXDyNbedH1R8Hz6m6pK+OcE52zd1W9xFkjlDR
	 2emmP/eTm3MGu+RKeyLHdGb+p5TBepCUwsFshOKJ+zTxyHcdDSYmGBXM3E7dI21LI7
	 NkLJ3T+wvFO7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C7CD44D54
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173089835358.927.10173880999302874678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7485c55f0570f6b7d947d6abcd34f55ee7ed43a5f5ad1c2eb276bb0f4e252d
Date: Wed, 06 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730898353
