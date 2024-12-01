Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDE72CA8
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733045754; cv=none; b=EHXeHowO3MTUlNaX0vCAOdju7kKfdzPcKyeoFYSM0kjFmzU7R5I+Jcc5nY+ysdifllW/jcuFYdu+8VQ3gb/tJiohKjIuMsTWgxDNUHjpqKxvhwfsEVgsuvHsGgRJsWI5ukeIfJMJYfzy163QC15FNORABF058Is/rIvFZFEPEHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733045754; c=relaxed/simple;
	bh=SI+U4YaCgf+Eorj8D26F11tQeb5LtB1bY6FWhuYSvH0=;
	h=To:Subject:From:Message-Id:Date; b=RQKNJ4mu5mwgQPEQfLqTybY2ZgSvEE32bXLNALVil7vR8fUOEUIO8PBvOiC8OC3Rfu4yxY2fUVPmh5Ys4aXeUDrB0BI42gxEU5dPFnsmKsbrFppQthFjyijKst79MnyBU4tYrpvUJKT6gKO8ym7HX4O5e0eO72YL/DNUZrb2wO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSKo6w2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSKo6w2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AFBC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733045753;
	bh=SI+U4YaCgf+Eorj8D26F11tQeb5LtB1bY6FWhuYSvH0=;
	h=To:Subject:From:Date:From;
	b=JSKo6w2/BFSkkZYNIjVOg0l5bTHUPm898TsGaaj64OD5HDKFnAne8M9Amom5hN6EU
	 mhuFkC8HvUKZbqORjlTquxPFItjKBKpa0Bcdreoheibe7j70ZTrzd6vkfk+a1aJ0hU
	 duFN3y9QLvQZhjFV4WTfX19JKULlBaBS08/7DFNqF5JReFJldtEstS1/5xXLwYS94d
	 qbHiv3X6VTMRq0cNHvDZ233wESHp0sGukdRfXZEDDxViHusvDI/FYeft2FmODkT5dk
	 8t9ENUnLkEbSzYTWVIY92e0ITr2SVCcE2v/tAPAi0s8S4TyAMyNAfnXPfj3ck2vsKF
	 5uGXeQzTfYn2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD7FE66897
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304575360.3116.3559435988496052280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a770db9c34af3cc71bacf20f68aaf7ffc1c76e96a6fbaa712c92692ac681ad23
Date: Sun, 01 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733045753
