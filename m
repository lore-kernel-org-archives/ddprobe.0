Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488B026ACA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718370503; cv=none; b=Ut8CRKOr9HjjmGVSrklOd1yoJXcK1Km5gguNRlWnTupM0pR1qb1hh9plxmZbozuxYtmBs4TSt0GjKEicwLAEliH+opMjGCxVgUcWwWx6VHBIpLLMezGAxoX+e4y6y2BfaVARQvqBgSixuoQkHk66xb3Uv2601zlaXd2/7AyUONQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718370503; c=relaxed/simple;
	bh=QonxA2q/UUX0D7i0YUxcENkryDXWnxfVjg6WvioNOGI=;
	h=To:Subject:From:Message-Id:Date; b=TEPPFm1GalcxAlSpxVBzIRLnMqIIobvAKo24xYokkv1dEUiRQG1IEm+Bvui5cbXzTiEHaKMwitpcPp1srDqVQ7Tp2LFGl3zEQYYKemjgcoCM7avMtMvbFDK67Ti5y53mFTpH2lTUu/W9fuuW2UwcZtQrD7VDxzLKpX1jUkraXgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvG+ooaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvG+ooaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BF5C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718370502;
	bh=QonxA2q/UUX0D7i0YUxcENkryDXWnxfVjg6WvioNOGI=;
	h=To:Subject:From:Date:From;
	b=jvG+ooawdO8Ekz9Z0bAsm2r9KYGowzw58MIICFAeV8BPVoCGqKZtMbRbRuH1WiKNy
	 GUD/zeD7WX8cj856B1TSM8lZWkgu7vZ7ZYLG/xEH/BziZBZZAxAjclGw+GhvJr9Ol6
	 Aw29MCh9BbD9e6wR+w93shwPOx0XNNSJKxn4XIALUDaXbJ4/fJmfstN88w1L2LS15D
	 GhUDarr2BQdmTIoJx8uwuCcjJgOgDxykFNqee/6kp8C0EXd/AV/WI8GLFNWT+DXhue
	 r4/jgmxixb9rN+cm7a3Pj9AWp+4i0jrp5Z11BNXVbSTnyV8X+Of0LaBtqBBGmbLA2S
	 qzxe1ZKZ8AqqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C094DC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837050277.3961.10728096431863685865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2e11898cda2b42e34e84330acc672605902e978486797c2ab3574b6fb16a1c
Date: Fri, 14 Jun 2024 13:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718370502
