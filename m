Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF801D88A4
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767542034; cv=none; b=PAlTF9bvSR2CsM4okxPe1wQywQQ/Dc1rMNUMXxAR7fppNLEXWlw1hLtRBHyTWiCmjzD/RfgniCdmN0p34ht5VH7LEH30a8ME1EJ3Aqkp16ikSXQif8ybwxJYR54tgwWp8f72jPKsMWdCKlzYDY40WWtFCoH0Pq6XtIP2fwTyDKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767542034; c=relaxed/simple;
	bh=bKAWXLl9C49fksZmE9hXyql8IrPSxnVIm7QnI9JBwDk=;
	h=To:Subject:From:Message-Id:Date; b=nhPgfqR7zOnoMYlo0pzBz3X6qoc1j4q9oLzdiNRx6CFP6C2LOKKu3MbyPs7BVD3gxgvatbL3nYCNVCUXtWxuI4eUENNNsWI2flVBujHn+EP9vVHzIfkdKxEgT5eD4oOa80AheOa/yPjLVbbC8okwlpI/BNsZNKIo2gJleCyGSEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxWnD+6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxWnD+6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767542033;
	bh=bKAWXLl9C49fksZmE9hXyql8IrPSxnVIm7QnI9JBwDk=;
	h=To:Subject:From:Date:From;
	b=YxWnD+6+cBnLQLEVrFYN3c9cK2QObcO4ShMB+e2CNWSbNIv3CYc43KTDgmABDX9Ng
	 QIy00uxbiGgk+YWqBKga3FDsDDWQqliwNqdirzFAb4O7umdEnPE7bab+sYs9eqLVpk
	 i9rwpSo+mEbJOHgKGC5G4TEc/4SDCOuUcvJ+CLT+vy1xdzC8UPkJqCMSuWvONvPF89
	 A97so2cj8MbbNB+puCvF+0DzJG/jQJBM8sqrF1FLBhLO4fuR5TILFAFG4comjgukNx
	 IYMIhCQ2rTmOr3oDNSLUmgeUMRJiwBFLqgy0eBesXnA9NBJfas6gNbVft0lgw5joqs
	 Oh6Sv7TSvYE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E5AC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754203357.11793.4654377560538877956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2959a6b7697bfe0d915488554c1eb8613c9cab206e8d9d8279ba9ac1d03d5b1
Date: Sun, 04 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767542033
