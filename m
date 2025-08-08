Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2742026FA4E
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754647194; cv=none; b=NrCRmT4yq+U4EWU9iPmg3hobu3BPiilR+axNmUDjAlrI4PQcMufhWfVc+zihzZS76aN+JBis0w+Worgpn8WoTbLAE20jS9GRwo8rCnrCQxII8E+gGOjKKnPx5r3qKbnvYlgsFYmSPcaPbBiT6dveMRlHVBIcP3qckBequRDBdZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754647194; c=relaxed/simple;
	bh=5GOLfYKx5aXr3EHed0j2qQ9tQdL0ql1GC0X6yVyp1DE=;
	h=To:Subject:From:Message-Id:Date; b=dWYR5EYV5T/GkewwIpKT3k0cX1E4gTUAeByo3L12r+x/81jzg6QXjZCcxwzG1TT8CWmo2yWm22ltF3aW8S5pRP+wBKQGd0SSWQhQlIvKjTZSm3/q4mWYl6bY1To6jJE2csezA6x82BLjveGcTp+MZy7gtujhfsxQsn0USlaBdOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqDuPPWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqDuPPWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E2C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754647193;
	bh=5GOLfYKx5aXr3EHed0j2qQ9tQdL0ql1GC0X6yVyp1DE=;
	h=To:Subject:From:Date:From;
	b=pqDuPPWs2yV2EOfDHPnbKwiVsL3QIsUVPLbNO/Pk+6V5Xq3L7Ai1bMCbNMi0a1fAT
	 bbUvcUrjLHcHXHvT0seFw/8A2TIlrFHuv9PNjJWEQkpHbzrYZy7nq2wlIJOSVgUmXD
	 euhkU8NJ7a9HH7zAYKbjflmiswzFbuCB6VO3rHE4LLSZu59jHAfA8kyJdChHXWHyem
	 yIfRmzbLLGYMjHD7H8hgQSGcNr4hg4Ry1mcuyV7GTMxcoNrnoIs/utIGFj+yOrzDg+
	 6psp0ZVFr9iJAvWNo2bWAdphXsiIK/Efm1SryOuSaaHM8Ytx8PzeQxG+9XYQGtysb8
	 VqxcQRz+zKBpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED6C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464719357.8140.7842122533649577628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0fa8f12aef2ccf7d81774acec523be7fc6ebd1c3e947bd809ebe51268a0f8b
Date: Fri, 08 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754647193
