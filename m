Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B4E12E48
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718002643; cv=none; b=MlHyn5p705a4/z+aULGAQvCr62g0s4K9B8Te3dqIPcXMp2GEp65AinPEwUvPk4l+fQXk/UOVqKbBBIbZb42lwpET+5M6Ns5zOB4KbsYpmiT5MWNMzCAR71v0iL35/dIXklFudrE+qTas1SHp8rdNb8dXpNVEd0LJSrEacdpMHTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718002643; c=relaxed/simple;
	bh=4NOPnpzuzZ2vKDS6abDcIDPIDYoAeF7xV57eFW7/6es=;
	h=To:Subject:From:Message-Id:Date; b=L56NdAXevC41JCn1IjY6CwEJm768KYgSZw5K4zcE/PvtvP9dOfGxxPpt0GSs/oiTxYAor/uhruQ92I7exvcXZ0KyVvV7ZdZIP4tlDQwld9LfA+m+NfnCYgksMeyEK8vLpYW6AEpQ7exJaJHEp+v42B8X2I8zy5r7HWziww3E0ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fetIlqNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fetIlqNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC697C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718002642;
	bh=4NOPnpzuzZ2vKDS6abDcIDPIDYoAeF7xV57eFW7/6es=;
	h=To:Subject:From:Date:From;
	b=fetIlqNCSMmBeDgPn6U89ysMySm2ltjdcDbkpeKTF2jVAfphofpmLcGFto1Bbq01c
	 5AS0FztgEa2owCVMiP949bl66d293fCyxwAJXhiwyapIkp6Z2byIqNq7hV/c6ofguu
	 245Ch297ZaUG5jdkwQRQxAQoMdAoJcnpUfKCZ3ytns7OgFhK/Wu2WtBKqRRtmmlzqL
	 0pp7uAPIIva+O8rbrGHBM6eAe9HWcHzNLDhp2ybVbUvW+SE6APVnwumf+WSAvaV1jR
	 eX9gm7tj7I3rkyOoxoF/uWT2Lky+mBJuy4G6XyxEJfNS9C2QakIsALzsg3bNQrOIn4
	 dH90Asbi/5b+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4F3C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800264276.942.1625855515961148142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0417d7d1dd83db57ebd2b4e46db100378776114ac9070f831e73c102a4c23880
Date: Mon, 10 Jun 2024 06:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718002642
