Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A381DDC35
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782349054; cv=none; b=Rd7hSvGgOZKAzRPFzz5J4BPnw4tp+UN8u4tmHaGFB/Ej1O4jJXZ2+JbAo9J7O3DNG/eNAY+ys4y9fjQdWWF3XONPio9dv9MUNqBe7kzwmaQwWvHiAE00l7NWrIVqrvcV8nrCYPanYwIYwqiUeHhsgTflhj7CuNUW3G17dwh+Q1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782349054; c=relaxed/simple;
	bh=iG9vDNN7rNYCQQFxzFscChIzgzBdrAOWMPEPNGO+CE4=;
	h=To:Subject:From:Message-Id:Date; b=DoxW4Jh/LaXM4beHcfd1HLK/BJ7tIGra/BCX3ALuaAXbw1XnAA9u5XvUQcF/10AfAl0PGzE/JrzVPCdZRrcR8FxbZqS+3jLTn2gbO6S4f2Jg/iUtQAckIN3I9iEHEy8GB3ZCSs27+NIVlFMS+HJUMJbZ1DkknmyRlzOiX1W9S74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqF4ioH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqF4ioH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9B2C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782349053;
	bh=iG9vDNN7rNYCQQFxzFscChIzgzBdrAOWMPEPNGO+CE4=;
	h=To:Subject:From:Date:From;
	b=FqF4ioH4WP2m0FEkvor6hh/MjLuOk1BMbM0oTr/PD+fs57UTe2wGsqQitZsVtddf5
	 qFengiHwC/q5kadEz3k80xxiSr9wx05KkLyxR9GNkvRKJ8FrAX2SuXcPtOPfqtw+kZ
	 QcVA1wbFqkFhmIp0kdu6Bf6jOznMv7mUYCacCJ9Vafbw706bPaVJHG2Q50/VRTHFjq
	 0DscSf0Qxyf1DXHvJahTdpuBC7hr3IdRZ0vSR8Cil9HllCd4ELJLCNAEgCvv3zqs6g
	 a2LvcUtk3TvvCpPPpBbb6KzvPUu0oR/WT5pqBgGoyDdn+OLpgCDV9l9IFnmYM6sPRy
	 +uWVqOtKltjpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4815CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234905370.17737.3688785871756529587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab48b45c4208bc1e206d69c10a8ac44de5ac358d8d185af2afd7c084b1d014d1
Date: Thu, 25 Jun 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782349053
