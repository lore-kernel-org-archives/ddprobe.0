Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE113D9522
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787901633; cv=none; b=i7C0wVKUN9nLz0VY0pnRgoOuEQnrAWpSboAnjmgNIFdLo+D69vSIOjulSUYFeSTkZZPZDSGZ4tEny/1TGCUn0B1lMpHinYH5xbi0wI4HraQ6xpvZOGjx+QoNgWaaFhQFGYN2sOhOKOIDiRBf2JGapjmAm0A0Nu2Oz1RL/qNCDok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787901633; c=relaxed/simple;
	bh=8PHXSpukVeuQ9Zix2vBTYw5okWO434yQty5DuDZVnwU=;
	h=To:Subject:From:Message-Id:Date; b=Gm1rXJGGJdh4iXu6Mw+njiXKgtB8xA3R+FK/lJb5kymmFfG2NiGSSuF6QY8tSlzH3l6wtPgSy0a1iW9EmsfvpBeErsEg4QoYqkV8u8uebMK+9JRDFBErXaoNwghilLEBvNRs3LRtdQqhV6VOQjvV5tPbVnn+xxcBD5SkQO7gsQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E244MBFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E244MBFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACF2C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787901633;
	bh=8PHXSpukVeuQ9Zix2vBTYw5okWO434yQty5DuDZVnwU=;
	h=To:Subject:From:Date:From;
	b=E244MBFg9FTeJHPJGEPD4Ub/iN+T1YU2FeIQ3lO0vbRTzkQ2/xtcJmwa3lyhhSQlx
	 f/8Gx8WMZ+F8X99wZHyjd9cHRRoDyPxtpkBGTCKoudwEdaMacLjhykR0BNUHMLTJtx
	 jl6gLxu+GOsykjw+4ext509chYgg2aUtdpoy7icT9h8X9eFfYwJ1IKFpoJ6nJugdhp
	 Ryb7zjHWqThbWUz3UPB+TSpF6H0SemCtDwLvGuiLiTeGJXjkWA9GQTdWh21Wjr0KIp
	 iIi+EP4kvxNCMxBPkfoCeYsSifla85G24yt4B1PpfOGIms2945LkaGZrfuQqWQbQea
	 mIUIgM+hZ3Ygg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C1C61DC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790163368.15050.11135247484627174295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b074838ca32dab7e3d9c6c3d441c3a8ddd471930cdd6a01763a4f1795cbf61b
Date: Fri, 28 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787901633
