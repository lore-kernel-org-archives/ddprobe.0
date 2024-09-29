Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7A51362
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727637354; cv=none; b=K9nPfC2MvhdIBgYOIPrQRvoKpXDgV9V98PADfDJnZFWqAaDU2+SgYHHVEjzlx4NF88kwr2d5sLYKpwUWFflnNGx2JVO6v/y1RlHqORAX+EHynSDQQmXy77RmNFz0+nhaAZ0RCXEFQeneqW76Yq5BxLl7lFYXynztj6UCmIQmDm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727637354; c=relaxed/simple;
	bh=IIMeAisJOh8etIKIokCwhG6JvmTWBDFASsczbSYkYtY=;
	h=To:Subject:From:Message-Id:Date; b=CvCFN6tc+0E+ZngHU5c7HoxYXf2rulN8ISX4G0+/o7dZb4qZq851TYMUBPZVYp7Vq/pbEo/Kvv1SYeSbJ7foks9KL7Z8YDcVpaE5krDGMx9jEk6zwslM57m01FwmbCa3BNaVZcOtJb+8PxvdWlhmj4BbHXUaBc42zlqBSgOdQD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+uFoFhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+uFoFhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AF6C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727637353;
	bh=IIMeAisJOh8etIKIokCwhG6JvmTWBDFASsczbSYkYtY=;
	h=To:Subject:From:Date:From;
	b=C+uFoFhAHFh660hC1T+K0Od1WpOCBzP98eF1WuC+wF5cm4k+Coa3dVIpwNH/DUpv1
	 VTAORnSlzwnFt++UN42ezQ1uxCAM9wYyeNvl3XpzGt6K4S7shukJwZV5Vh6QVZ4bi8
	 x8NR45pDmUfpIvtltK/qnDESwO7XaJ4aiiiiTgFR8OGbEKWjjZiHhFPoo/IOfNpLF5
	 x/BDnt1BYm5XBzB/KXTvE37JSFlUGnhObSXc51qgOJaGoIZmBWcSoW3KZwYjoyIH5l
	 iU4m2vG39C5zz7y90cEA8MZRiSVEg8j/WQVEL1fzrNWioyxYPSxYpA4uGOpgFimcRI
	 s8Y6DfN5xJEow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB08CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172763735361.29009.17575649524554181592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d253a2cc3ce736b8fcfbfc6847f0ceab89fabdd45434192677145e77ef86ac27
Date: Sun, 29 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727637353
