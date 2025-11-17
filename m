Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2779B184540
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763386914; cv=none; b=s1+amcI0nJDHgzg6g3qALaoeGQz/0mu2ecx7vsIwVInD5A44L5SS6MbdVIdDe7SI2mxr5GSRq+h/Cd7E2sTwS1O7c0VUXQNrKnM6XoQEgfqlt8bOs+cWVlt8tjVNJ3myqAC4kMjgfFNvDIaKHmW7Tuzvrc04S6IjLC996BEeo20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763386914; c=relaxed/simple;
	bh=xhewtFsy1by9g9xKWWUpita12fjcBKJlnJ72rKoK4H4=;
	h=To:Subject:From:Message-Id:Date; b=V8LMYwgJe6Chu6lXyKrTuvis/DT5Y97Wq4YY8VDpL18FMsRMSfkJALWyHKQxlMwXAFPfp3VLg61+yYbd3yOUEvqpCfL0YGTcrP3C6x9/VOwAndGFrE3pEN00MGNQHspxBInY0a7TmeAnXRZWBxvU9jnJo4TT+9P6EgODJ/Hws4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+sk+W/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+sk+W/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE26C19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763386913;
	bh=xhewtFsy1by9g9xKWWUpita12fjcBKJlnJ72rKoK4H4=;
	h=To:Subject:From:Date:From;
	b=I+sk+W/W5v8l0glZkmPl99n9qglUcU1Yj+1yGawBO3EPnVD771zYCPO6AMfK94YJL
	 hW02MEQBl61SS3wtXI9Qm3Xyfv3h8C5LZ3xlE6CceeTbb/NZvLpV3P4BCYvKzzsvwf
	 PbL1EbTHSnXWA73kXO4C9JeSwFAMexqGmjUKNaYTCpzUUat3IrTE1LR3gm3TMNJD9B
	 YEcavMksPOZtAbgplfWERudyJym279Ckvpj/fLIwKCDAw9g4b8hU8QOtKN5S2X+Wdh
	 hJIGIhn5yuIVYkJU8MhX/uUz0FfrZM5t95Ot0vxxB5uFLtBeJbfUa2gHTVyl5enRlu
	 2okMT2Kwh5bvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A46FCEBF91
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338691361.24379.1184370344703425086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74826f7de44b2e0d9b3b289d8ace68696d4e4c53cc0b01e96dfb8a3fc4e4484f
Date: Mon, 17 Nov 2025 13:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763386913
