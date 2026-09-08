Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD7B3A7F6E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788855034; cv=none; b=nZokwXUwhz3GEcBL9MIV+cOYyAVdAmTEDqh20gCxfOqMPvmYgRjUvINmZOI4LmRYkVYJvj6S9H1nc1TAQ9M8NRxSQFuG0dSPdMZEBV9Y4FnYfWfzZaVUaM04ZnbWS/PQGhSRqSnYnIsfvd/yGXSv5+etUxMf8XSNFoarHcv90MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788855034; c=relaxed/simple;
	bh=frxm79B4wuZAtV66NhavaoaGJ03i5Czfl58DCWlw630=;
	h=To:Subject:From:Message-Id:Date; b=sFRZ1G7mbnt+VVrgCYtctfswifQFPsZ36cDmB4NvHXcxKU/1G2aA0uDKC1gw5+mNhnhtD58EQZe7Qx8zD+e5SuRSFvmAGUiGMZiDmm52YO6I6ElHbzQI5PCk8BFW6Oo9NRPVay8qg3tdlL0DCuPS+zT0BxWjCCs9NJs8Q0n76VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWeN5ZVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWeN5ZVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AEDC2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788855033;
	bh=frxm79B4wuZAtV66NhavaoaGJ03i5Czfl58DCWlw630=;
	h=To:Subject:From:Date:From;
	b=TWeN5ZVLG0wmvP8M1yNGprKNN63xJKQ2SlCqYWid4k1nZ4xovDhzKUOXuhQmCPkQl
	 1JJJyOK0kvArXf11JXc2uVG1EmQ/f5zh4HKMfY+e940rTkPKCBWf+fu2nKUI8NXcOm
	 Fka/0n1KOEvts9Q3SrlHXD5NzTmryHMmnNuqK9ZvZa6ojo0nnyJyd4KlYUi1MBZXvh
	 996QPXQX3qnOBClPs8SafJ9XO2exkuieRxMfGxpWSrkTzGHj1sXCg/jRvSgYjCyFvI
	 pMSXFyFPKlJVv38CA85mkZ9eU9ViNTBI7YpRZFb7TNFxNqLk/cpYRSPKde/g+LEunU
	 BPm/VKIPdriDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF86DC79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885503371.7311.9366575435248907598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7604a3498611460edb92fe26751c53b3e2f52de6eccf8b1f844bf2f3b937e86
Date: Tue, 08 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788855033
