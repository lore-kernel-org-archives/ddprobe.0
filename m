Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B003515CA
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786969834; cv=none; b=AS72GBL5zV0xaEWUlZ8lkhlqSIS1tt9dmuQD0UcsHGBid0DYeLieDQWK0KPotH6wtkaFSzEwzcUah22S0gYMKT+L1rMAlWv3svtPgLDRLyb7gHioCPGcGYK81cWYKOaMEFtyyee5VX94FipDkfaUIjc//jg9YKYwIWrs/UZVUY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786969834; c=relaxed/simple;
	bh=s2U5HoZBHHGb9LHKx9xznfo+Ctw9J7QnyHa5tHbS69k=;
	h=To:Subject:From:Message-Id:Date; b=QDwVtsKPXlpiLwnosYe1aERjw1ocyJGRGXAtxR0mnmHSSESUbIaQVRLogC103/MJIZWnIHlq+W9cqNrVch60iDhyjfUAzPCpU3herTmcrR3V/lyOApWelNqHWwZkY5E+XXBaK0vXCxdE7+yxmvnRxWa/fUbsi81oxMFHTRkbBts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6ClzCXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6ClzCXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CC0C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786969833;
	bh=s2U5HoZBHHGb9LHKx9xznfo+Ctw9J7QnyHa5tHbS69k=;
	h=To:Subject:From:Date:From;
	b=M6ClzCXsa/tTzSjq5r+bKnF+nC6HXdbPLXGufbMO2DPHco+q4LjGGj4aItoqYm7Y8
	 atOrCvsZynG6UYHSnIn/YKhlaDfGnquUVbH+xrkFbcwaIqKKym95P4s6jPQH/bUDGP
	 BCbsWKuZCH8SyBVJ2LYqrlH4AySYjM9R6alvc/PcO+PM7CIMBOgWynZvArPaM+faew
	 MeH8PZ1BirX+k9l3Bi/0kG98HW2GEVJp4M/XIobZwFPh2CVGMPnc1F1zR80RSgRk89
	 xAILj1ei6sQA22ngfyoqODhyAW7PWpb+Z9bAQ5MKu3NDiOz7iXdHlLPUUXZtjV9F/i
	 ZR3KHhimvXfww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD356C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696983368.32760.3828200340976746242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982540c49f3b8be241aaf05ceb93e0069b438573dbf0bede84cd688ea39c2cc2
Date: Mon, 17 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786969833
