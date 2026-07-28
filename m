Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8093C43E09E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785245434; cv=none; b=boku+U9TR2L0aHKNdieUE5cT3ydtWu2Eu5D/J6DC9MR8d0EB4z5Rol5hsaWPrOTbAHBohCCmtp3UawQm6pk3h546ppBR1fPpPSImjLNpNTqSmLatIowo7vQU+BmwSJuSVybPzjMvkRXMt/jtm0THLwXIBhmGmbjrFOhMO5iicak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785245434; c=relaxed/simple;
	bh=W/HhCvL5BIM+zILTV+z6H4h0tvKA2e18tKpJugGKtQw=;
	h=To:Subject:From:Message-Id:Date; b=jleB6//m7+NVnEr5J5+yHGuvkIDNXhYqqsVsbJc+Ymc30Ghfomxg5/J2mB6GVPcMnQQ/lJ1tDnWBwGQeYoLJS7X/9EjQ1qS6qdxnqwc/z2T779OTiqJYh/t05CeS63xP03obD+doJsLFH5MqptWhHGPAdAMhaDNmDYldOuqRU/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFn/dyum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFn/dyum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC978C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785245433;
	bh=W/HhCvL5BIM+zILTV+z6H4h0tvKA2e18tKpJugGKtQw=;
	h=To:Subject:From:Date:From;
	b=GFn/dyumd6hTB/XdYJbLKrywJpvdKlY3NiqyamUHg8TtRQadosMKSN5lbFzaEMYpw
	 KmfCOfeOiUkhUTHTwfLNevhte+E8ZzKNfPrsZyw65eXlF9NTK4GMol/E8MH5lmvMpa
	 lTdZXUK0XNXXS3s05bmeEjNgY3n6ZymZ1lMLOP9V8bzFOHYOz5W6rKGvtffqG4B10u
	 +AZqAXd/k3Ia9/NMMsIUK8r9ojHk+zBIfNE2iRrm6PePAaCZlqC1pQ8O0gkRdSwxA2
	 Dr2SIXmfhD4ntZ6gLw3yj7qPmx5GKxkCypUBHER4PnTfGeguXPF3clzpDEfVKO1sCW
	 wfDYrit/dZmTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B78C54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524543368.26235.14755101980752287036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5874f18c9a3ed5eeec2aed66dda6a8557974fca64f7da43d9ff618abbbfd1e03
Date: Tue, 28 Jul 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785245433
