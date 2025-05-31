Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4306914F70
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748719194; cv=none; b=U0BVx3ILdKYk4El/Q3Y23SeXwMyXCNIU6PkjdV2yNBQfTsNizDVPOIKFIUA2kX4kznauaPxq3s2Zf8gCwjOA89+jG5cDGs+i8+6f+OiNef5ipV37Twlf1Xxfo2dO+EOxtv6PsOLljT0aP/hhrDuWzk3ycTjNvby/q0lt988G0E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748719194; c=relaxed/simple;
	bh=tdN+4k9BcIgfPmvmuJ9qkuFuPaIz9Gsk0ab5sEUVkTY=;
	h=To:Subject:From:Message-Id:Date; b=TinbLdlPTXCFtPdijjDrpJG60LaiQCquGIKyWJLl8RXTlL0FRHkt2eN5R1ILf9NwOH7B2opbsePM2+5+STv9G2wgvB32dXXOpuNR3imzAOsQ+C+F1Nv+fKKmrt9OHvwjXudyGyA5TFDBka6GWF5d6QxD7TclU7IkMbSnh3N6sHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4dckWYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4dckWYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748719193;
	bh=tdN+4k9BcIgfPmvmuJ9qkuFuPaIz9Gsk0ab5sEUVkTY=;
	h=To:Subject:From:Date:From;
	b=l4dckWYf12lY/23Z3OM3ZJEm8iDXcnA8jl7jJPz5jewlVcvvY6f4tLepzpD1U9D05
	 r7mSaxQvV48HjdNGnigHOipQ09ASHncgQDgK7Ro/OoQIRadQWVo235Kx4ruj9teydd
	 18XDubz8SALHIo9YleGp7P6qXaOD5bd+5/TsDbp3gD7WdcryO+5hskKPDwo0vQN9J4
	 iDY2EqY/eFNI/1ed5fyDKQeVVznZo6ULjXrQKk05VutaMVsmtCUBu/BuW0F8ULtcRN
	 Q8gp5RXNfNZ/adyoS5wB616SBAEcL2R1mghls+9pcePxOEiPwa/puKaPdMia8LtzzQ
	 E7bzc1xf4UnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94345C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871919357.3147.2784868337563686573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe57b99dd9f45678e5a0a1e02715bf2981397fcf2b14986c78acb55e746cca0
Date: Sat, 31 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748719193
