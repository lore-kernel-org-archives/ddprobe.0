Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E5D31197A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770139434; cv=none; b=IMsW4exT04aoGo6GDp+KhvRm+/TGKZ1rGF5J7A67Xdb0l2txZDoNOcj2Ho6b+ltW3OupAVW2iJ0B+mq+J3PTNzbuFF7LlxmahBb4bmz+jhb0LOvY4sHvSyNFKmACkosl9NubQ0+W4opS5JntSnFObFentY/q5UAdZ8aYwhByM1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770139434; c=relaxed/simple;
	bh=uCW7qVvx/lxEeJr1l5WN5ebDugNsgqZsqXBqBtzGaGU=;
	h=To:Subject:From:Message-Id:Date; b=qY4l9S8o6UCLkxTQi/9qzS0DHojJ+9u+L0aIPt7Vi2H/Fw3PUBLhJr/NwbB/Nw7opV0hEIjbYSlrEE1rM5M+bCoEt/l0OlnWlPtYrOl+d8B4k5H+Qjo34bo1jOA4j742MNmyA1P30ZN20mwBOTDCnWZmHYMpXQk0m2QRS+qkGA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZOUK16r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZOUK16r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB3BC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770139433;
	bh=uCW7qVvx/lxEeJr1l5WN5ebDugNsgqZsqXBqBtzGaGU=;
	h=To:Subject:From:Date:From;
	b=DZOUK16rSPgefY1i3knVREKV0NHY5rx13KIr+/hYB0XpMIYnKshbfN57HKRLobOxE
	 PcXD7GegEn35rnhWuNfXYptdgq+BzToXvyu1HL+XCMKUoDRVDboMcS4QSXQPBxIOAl
	 3LkAwuZQILiOg51wNElv+CIa7yFmMd1jpL2fhhElYwCMH8Fbrf7kTR0L3w7yaFfnoR
	 HD+Jc4r91DqKMyTkEQMlWv3YsYbnKPK01k0j54CgYTAe969NmdGPYfzuYI8f6yg13z
	 DJoJ9IbD386DTVP8h/xVDTXRhR4RX/ZPMKnE9nYv/ZULnbl63dGevJr04/R5QAwD2U
	 S5XfsAamuQCUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B346FE8784C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013943372.5511.7727001172700042486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7844ec13989a7b646b8bb6ae3be072e4927b03417aedca3b0917c5ae1746554d
Date: Tue, 03 Feb 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770139433
