Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D18B11CBA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784509714; cv=none; b=Io7LpIXQDk+2lNo/EQxHZ/UibCTngQrzVibdYP14pFeFg/rRI9i5B6/2yH59w1dm3fI8n9Z1mVUyXFouNBr3KTpc+G6u0tSs0iwRazHv/PM8Q+OfX2i2aoFOyWvbFZw05QyA+XVw1mVhdvflq9nSJIgicR/w3y/g4lIZxnYmw3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784509714; c=relaxed/simple;
	bh=oLzYdMv11n27Ui4PpDePf0wz2Qxtc1UzXGyysSrCJCY=;
	h=To:Subject:From:Message-Id:Date; b=C8Jqd+lfTrNswN6FEf5/HmzYKuHy7n2syzxyHKCIOkni26bEr36AQdMkvVLGtLVvE9aT2OiJhvhIlqAHcH1mpWayuImOq/zEQ5oZg4Y5v9C4yb8ilea5SHkIzyWRa/KjzPT/ND0aV1XzM8Y5J3jrE6YY/65m/4HLtKmmooxKd+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cERLU1GJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cERLU1GJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F57C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784509713;
	bh=oLzYdMv11n27Ui4PpDePf0wz2Qxtc1UzXGyysSrCJCY=;
	h=To:Subject:From:Date:From;
	b=cERLU1GJNc7GQ/Svd6gYwo3vREG5GJ5iwXfynmx83N2Wq2nFo3u23Htm1VMGcYDzR
	 Gat1d3lI/N+Avpc83GR+tVH+w4Td/XUBPzDgSSLp9t8281OJSHo//9sc2BvszpFVsM
	 foKQLYZRRwvBibjJomcKQVy6i2l1D4lnyFWigbl14bhLLAhbVUsyDOFOOv24Ej3Y1F
	 EV8n7NBIy6dd2ik8T4JrRSo+yHyFFlKfs3NHY//NREC70OK+2vgyIq7x/VUXs/WKDO
	 cNeooMy206diPTOsvvo0KCdcgdd+4ftO6XviKAFz9s39Od1Ifu7rTT96sKZktxcCpT
	 1ut72a7dHv4Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE099C44512
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450971369.13037.3961792570002405398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d2b5f4768b9ddfb0d01e9ac4835a312beb944783c2f1b9b140e736244879a2
Date: Mon, 20 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784509713
