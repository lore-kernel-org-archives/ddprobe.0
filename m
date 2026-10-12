Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B60456E03
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791793834; cv=none; b=c/KrZyCR/eY1vEI4T9hV07J3oIXDilOkuLBCglNfcnmF5mnLsmX0Q/EGaUfWH42EcCeWh+pNti7DTR1beU0LD+adZgTuuXYmus/BW4K3XajRIjCmwHKnne3yuzZqbOFWKqa43IskDluU39FGepQbVu93ga7UzOn7VoiWQaCmEhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791793834; c=relaxed/simple;
	bh=lBaGsGgIpt2rQ37cQ5/eZSHlnf5dgor6t59fjgmt5Os=;
	h=To:Subject:From:Message-Id:Date; b=AJruniQDUtmnlngHs/I1ry+vDWDLDpR+7hZ+/aBdmAzH36OuZGuNYrdVTOu1JnBmUCPCfUE3+rgxogx9jaudmuefptfvm/sdl//XBmPp1InLgfJTr6j+u4udyeYhMLJ2q7kNSOtjDC2YNOyYBy6H9MyLEu48ofnjXX7qe9ApUks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hp0aefWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hp0aefWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DFEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791793833;
	bh=lBaGsGgIpt2rQ37cQ5/eZSHlnf5dgor6t59fjgmt5Os=;
	h=To:Subject:From:Date:From;
	b=Hp0aefWGGp42MXhiVDq6vKNdoN1lDrE3JP3EtDHeXGhKMgOHtKVNYM8BNoXZ6Z1jX
	 vnnMj7xHmi/UzYk7htPZ/e/GiwOYsEUzUlfiIIsZIbkpN/PfBE4MxBTrX5rcrbqnIU
	 /ow+mYOVckl/I3EPr+3x/Zx4+JkuUB/hcJ/k0C3PINsUMj+osGUtcJhUUZceYxNbAi
	 mufRSVHZdNt02YsDWunyharBtbBhJaycm9Id5fMClQeaUHNiOk0wPxSrqPdEhbnwg/
	 18wcTMaHaRNEZAnV7p8GoC4RhCAxYhFXuiTIbi1z+9UFMfnooR0tD37uxrdzTV4M4P
	 4F1N0RxHMXoEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF96DCA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179383369.4825.10352118102748872907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cebc4efc49fc6a65930477f99f5caebbc2e217b1040bd728414576b7b7dbe8a
Date: Mon, 12 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791793833
