Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F0D1474BC
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727112354; cv=none; b=SpeOJCd28zm4R4yFivJYq81cYzJUblYAGWLxPT6+8VXQXefNo/qrgta8cPzLtS9PMR8UViVznTqulvzErw397MOeJW5IrWcLoxmqsTmnlg97be6G46eAt+6fLZCPtjzV93sJC+Hi/62PC29ehIq3shLJlQ4Lmw56063BoC7xE+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727112354; c=relaxed/simple;
	bh=asJL8SAaJxO8v/SNFP9/NeNAqqW5atRSk113ELh1YE4=;
	h=To:Subject:From:Message-Id:Date; b=VEQKoQVmPWBQRjv7qeac6unyVykPsX8KwdKW9mOPLCDxcibH3/b3LWrv8cwM6nNsd6HDeNFF7oAQCOM486FAwlh3LQ+t6A8j8IVqaPWOEJAKBSFJEhGOIz3gkoLqQXvuY7t4i4VhzHGuRsaiYR6tgTb3NT+maqKJdGUhCU+y/Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWZJIlyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWZJIlyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24A8C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727112353;
	bh=asJL8SAaJxO8v/SNFP9/NeNAqqW5atRSk113ELh1YE4=;
	h=To:Subject:From:Date:From;
	b=kWZJIlyVS8ZtSdUPjho4dNr7eDfZ5xVHxUyKULq42aFD5UEhqsrLEmIFPpuPkFS4K
	 ghzOSdTXO0dU3cIWDba87pzl4zMJW4aW6MOfg6njvWrez8niRWFGpeVDM2csTFsfdL
	 Ttg85A5A3eARr1RM8fgUJgooKNGGwWDGgJahMb6suyzU7qxPwW4b+syJejZV4VU8MM
	 4lWozVmFnfKDxHCqQ6YTxKYvciHgcoobzPizxIcW99SFZdYaYMYoakQhB/aLS7Yz17
	 zg1Xf3S+w/QJmxbUXN81VO8a+FJcLlC3bIuTLdWURm0B9lE4UdNI+lRW057REibRgb
	 KtOamiXp1SNUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE0FCF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711235360.1621.7748623369653028667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d760aada6c0039dbe80881c1ee99dc92f58f60c551208fa68c3cda802d5e0a07
Date: Mon, 23 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727112353
