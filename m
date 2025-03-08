Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4292A156230
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741458534; cv=none; b=uBRcqgQtTTeGqkmXBUzZ8L6uKVm1jVx7Jh5X9cLB9fwLzOmSDAgaCnNUjA2Lc0u3sPAkY58fuGR/KQCQ0Yo8TVg4g5/bd1Zj5V7khkNL/3fnQ9zD4rxnN5ClkfinAlXc4dKhbES+ZVifO1YjXOZnhK1HiI7n5ypeFvMG3mq89T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741458534; c=relaxed/simple;
	bh=w4zo1AyUdxkKq+xzsrLGOPdYCV0Lw0+eZfDC+VxG38U=;
	h=To:Subject:From:Message-Id:Date; b=aV+vg2gZazU5myfjCNmz/uf9GfEnwzvavliA9dXCu3muB6iz3UEaUVIv7nVeAkpoXNjBLq7y+mYhsEKrHiqz+Dp3kaG7EUst1qaEVbvVvkVi4Wv6Kj2eUaOTUd2BIKUB24lOIBj6dvTadHwe4CEW9Oon6rtdrUlOafIbzHgV17Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgQYoElZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgQYoElZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC09C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741458533;
	bh=w4zo1AyUdxkKq+xzsrLGOPdYCV0Lw0+eZfDC+VxG38U=;
	h=To:Subject:From:Date:From;
	b=pgQYoElZWU6jMhmbsBjvZqQGTDIHgh7v/k3C2AMd3woj8A4d3f871d2VlBwZ6Oocm
	 cQf/njgkApjvz3nnBYgpRECgyUYKBhODHKl8nhvAxB/nvuh/TQtgmaqyEQkW42la2k
	 dHcP4JGFMFNVcSV3y842yW2z053uDjD7udkcJ4IBCFKrstkBlFrGWLVjUCOcdFR4ur
	 4KhCxqoWsApDzBwwcioFENOOPXIKGqcBr3vOQqApoF8e1wylsD84Rkn3n80bnkC04B
	 soGm4nrw8ciQbI9Z3Q6PI378hgSc3lOtDKgQyemSe0X1vJxZiz7pjhNEw+ZBHr+Z8s
	 y6mjqOXacNkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D7DC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174145853360.17236.13551616717818138266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6830bbde88d5e23726faba35d48f3a484ffbee2c47e3c5025003baa536b3197
Date: Sat, 08 Mar 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741458533
