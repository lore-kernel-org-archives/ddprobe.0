Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7D0B65C
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716618863; cv=none; b=nrimcDQxaqa9hUcz3joTEV8uIxBQoTxHWMmINx6oe6t5UHua9SgITV2oku93BKkvk2I93zjCz8O2L65vcewuWgr+QshcyVpLlrP8Ek00N60bGrihRfTzdnRcNNkAJFoUIbtxe9r0r9PbdYBIeVvYM5M9UUIOXCeHjjV9giZghm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716618863; c=relaxed/simple;
	bh=NM0Gf2tYk32df0ltaveTFe2PZ/pIxnwEvJdK/FW3Lfc=;
	h=To:Subject:From:Message-Id:Date; b=JTtbi0Q8lpItivcZJbF3i3yTisEQ/P+/EK2boDVgERIdv7Zf4PAJTAPzVBIY4qfflU9qgg7kW8iMPlp+1VlLxMP/NxeTORR8GJoUKyx7VT6tqVrIdf/eADCVh2rcSCqRr6HPWERnYfflOuzArGzW7q5jioS8OuoPAJDoJKU7Mbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIuGai2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIuGai2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49EDC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716618862;
	bh=NM0Gf2tYk32df0ltaveTFe2PZ/pIxnwEvJdK/FW3Lfc=;
	h=To:Subject:From:Date:From;
	b=rIuGai2MaFICFWSLeJnsBKfeDAhdKbnuZg8UD/dMXhj22uHWN5hPWFqTDXUxkqrxp
	 CPbtpPO12VluxD+DsRVMRV9MFHrS1EeddKG1S0sNUuZrVm8TndS8YwkFDRwEXdHMT0
	 rAJw8le5LL6xivpFbYUM4NlK6wTMwes/VxOlidU6ZaGSZ2dgmtcmEeAE/xNWOZgQ7e
	 R9Cpx9gaQeh58OTg4PSI/+3raj4JuBR2Nir/4H2/pPI4DsNzlNmhtZKLtDwvr3jPCg
	 xQoP5luCBxA9tadfUwddDfd82rGiAmk0og91ZJ2HwRS4tDbnBeSmuodWBEtT7tnJpv
	 lOuW3YYPIIaJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE691C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171661886275.15418.6707292314200309606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380ca605498d8524859a2b5dd6160516343261886ef1b49f3bdd706f40a7a7d0
Date: Sat, 25 May 2024 06:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716618862
