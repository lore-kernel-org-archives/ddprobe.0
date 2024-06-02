Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B84413ACC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717318523; cv=none; b=HhyzWalOgZpClWAnDKBWn/w05510K3iC5/dqAcQIA3MI9CUHspD0Ps40HwrfwJ18D2U/R+la8CR5Bh0nEgmVETqSWK7+P+QloP70bddULx0WH/ZI6NEB49qItW82sAN4/RWmwG8rExMy+KRwyUH8e1I2LhHCbfIPQu4HOscO2ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717318523; c=relaxed/simple;
	bh=IVbyiPLupaO2VwdecSUdB4VsSbn/DBad8GHMLGDkiKo=;
	h=To:Subject:From:Message-Id:Date; b=raj2JDbZp/KwrRNvQmNl7EFMMIdAoRR1CZmKSMP5dTQ9sDYYH4nWmwA6LccO6Ut01ZvRjfdZYAeJrFtUiPgZalmYd3RBrqE4+8itN+9sAkaZBeQ4L9KMGMBFDBgXfmAdBbZtmLjusbWckVhnIbMwvizj21+/pkwwV55kj4N1xSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3leLzN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3leLzN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35A1C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717318522;
	bh=IVbyiPLupaO2VwdecSUdB4VsSbn/DBad8GHMLGDkiKo=;
	h=To:Subject:From:Date:From;
	b=r3leLzN2Ua6lQ3tHTEl4fPChoYrUOjSHE9S+Q7x7KvfdQieNsIv1fngFj/HCcL1RO
	 mLmrGZlSatLAQmn4QUCys6H+E5rhxtwcI6CbrDsFAXX+L0lmor91XWo9/+Y4OGO0xd
	 pQhB1Et3AN9G4rczNXE3YEYEtnMFV2on6QzqiSuyhfeZC3orRQdVXQIibA6zSQoqfy
	 8+l3x9k+gfizziZI/vGWwNJ0iehXVik+EMP+v6OK3FmNKTjcdZXwFzw5p07QmjlFWh
	 1k10bJx1ffWmcs2gZ5Qrk5JMeQblw1OTa7VqBdfLneg4GDhhRAxTF2ZvDokYPtsMzh
	 k1MxNuImiCxBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF09AC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731852276.21415.13081695182716620113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b91a32111e0c868c39719eb22c19e5db8d670ec690426ad7693280cfe30889
Date: Sun, 02 Jun 2024 08:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717318522
