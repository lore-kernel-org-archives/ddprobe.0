Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043DA1DFF0
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718230703; cv=none; b=RZXTaAdII5lbb58QWfk1/af+OGNolUgy0qHW3a1aPy0gL9JT5VWe0FdoEiyHQU/jLSGfDn6gYiL1N3t5y2pfVjqo7VcxGbYhRyxcHqUbHnyUuhYbrx/xSFk2gKKEbWGfoHbuBp9Jf4bO/DcnVNzF1H5+z2b05mwQ1W9e6RKb7gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718230703; c=relaxed/simple;
	bh=YPOF2GrJ0BqH4u52c3tKAVJxpoRegKmfjvWrYHLRJUg=;
	h=To:Subject:From:Message-Id:Date; b=R3G+9R72ED2nXMmnPILrS9iK0x+88GYMmQde5Ibc89NgbUY6UPPxcCCm6OTRTpoQNhFGGa9B4x5kWKem46NiKxE9JQe+5GWpaEnc+TnzIHQaoKzacnGRRr8hM/xH8HoUm1MpeqtrSkuQqaJhpg7WaxA5x5yBIGl3WQWsUITwUUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L90cYQ72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L90cYQ72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F07C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718230702;
	bh=YPOF2GrJ0BqH4u52c3tKAVJxpoRegKmfjvWrYHLRJUg=;
	h=To:Subject:From:Date:From;
	b=L90cYQ72EimzuniQihIFm2hMcfL7u5y7Jdv897y/hfrhc1s1NtS13UbjHKTGPLIvZ
	 UI55KyTBUp1N9R2CqaWVqrd+YUxZTXUJwb4zEL94+h3LiRB4DwCaQ3L4lO4QxVqumN
	 Vs9UiE9By9w6xFIdlXE5rGJvkNr/RvMzRWkJoZQRIoZIK88VdAqveSHTwDMAoJpZ9r
	 E6wt/3vVemopcvUuMuG4Bab3Hekz7GukU40eirAU/G1QtgE49fs+zD+XR0m+b6wJNX
	 VW6XZhGSa6kV5rLKhM7gI65WUUiF1OKE3iQUCK6BVA/cmPipDuJip800dovgOo1js+
	 29yKYlHwr1hIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6579C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823070280.14646.4819519615389815308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49b00bb11c31babc276e069db99fa7af5478277433ab8055a5aa2c07dad2e1b
Date: Wed, 12 Jun 2024 22:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718230702
