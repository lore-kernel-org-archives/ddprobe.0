Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E429037BE69
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770649434; cv=none; b=td8m4SraUBeUaS/KdLWRBS6TOWalvXnvfymKffk7v/ul37l1SjTABi8rzsjbwK7MswenwBOnMM8C64EMad276vtY4lgsjaXZp2uOpQomHTPi8Brjs0luKL/B9WImnu8vE3Dy2kTwRmzrUZgBKIE29lTF1XtUAlt2kU6GI54XDyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770649434; c=relaxed/simple;
	bh=Zpe67CV7hYlxfeqgXNyqmcTqbPGu/coWat5MXJgxdbo=;
	h=To:Subject:From:Message-Id:Date; b=Z3mANuklzb0auXaUO68QROKYxFWyWv6Nxe9HLNs2VarTSIVRvjwXJA52nmh7PogBon/B4HZk/nA4+agZjaEiyu3mA9bpWnwpzM1O+BcdWIEglj0M08acOWrvH10Ytn5ALiZx0uysrylwJHcAgU5owAESUSLlbgNTisDJDJEiP9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSpIvMP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSpIvMP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8585C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770649433;
	bh=Zpe67CV7hYlxfeqgXNyqmcTqbPGu/coWat5MXJgxdbo=;
	h=To:Subject:From:Date:From;
	b=aSpIvMP3JNrYXTjUPveVEDDHmt5aXkt8W1kiYCXanywxNH0O8aq3o/j4jso/aF2cp
	 aH11fHr1reO7z3Q+dhADKNSGukTb7bQD7SnKmkW7oZy+D7qR5BGI8xJyA2bGkV8/HC
	 Ql+A3yFdg2PygOLyQ3w9lpkie1EsQmItqQFIH1wVbg8uWdM05sSlDucNquX2MZG4a5
	 iQeYgNVZVpSwDUv9sOI2BUE3VE7SQrCJdGy557fvCDqDO6WSOdn8An7KI8J3vpKpPE
	 +Mwlme+jgD4QgTgr5+ytft4esVXyLz2uJIMOS5NjM33rtccu89qlP+6U8t3vmMPCvN
	 Jy4D06MkbI7Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FB8E81BD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064943369.30336.2658292113457472061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef98552c25d39c97de7b1004bcc5357d7d6cd7c21d61af6771ee0fe1ad5e4bb1
Date: Mon, 09 Feb 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770649433
