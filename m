Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE7733065D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773171294; cv=none; b=S4mi3nkMpHmA/y1SSTOrbZHw4v8M/XHJoXrqD2jgsxjhqmoaaBpRIiQSnwsn+PYIPOwh6PHk+g1py4isBHIuRlz3R9ksByO6KTFJxU4OhBQYopJfPNZJR+cfsR0tPmgBQyATn/QhiEC18CydQykHud1Utb2KtwT5EmnEg4UE7XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773171294; c=relaxed/simple;
	bh=hC3/Qg9yPQXqpbGCIcSaS50vV1RP9+DfuGQKX+d5nBg=;
	h=To:Subject:From:Message-Id:Date; b=fqEw6tQdwfcB0cPAu905LNooE3En8Osb0E/hmhjoEX40BeQFrV+eRJMMjLtJhtViYptktUmJPcwNycIi24e33hJFmChak8V1D6P7ZrYDpScaGor5UgMNKXpyqbQJg3o6KbBC168rtT79hzNEa//867x4cKzR//acGXXdW2zUIzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0+yZe9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0+yZe9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E64EC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773171293;
	bh=hC3/Qg9yPQXqpbGCIcSaS50vV1RP9+DfuGQKX+d5nBg=;
	h=To:Subject:From:Date:From;
	b=g0+yZe9N1Z6N5FRYN1I3m57E/50nayi6nPjTvUSlJZHr1t2T78EwL6gvUTRv/7INQ
	 r2QzE5XqAN/gF2Fb7OAqhjM0zQGj3qBMtfOkR393/EXAyqXKktjuTjv3d42Mc9Zw7L
	 FwNwrTzm5/He7cYPRyjI5SvirKUCSl00x9GAatnR5WsxeGaHCTzBlaNGKmlxaKn3xD
	 QRcAEKxv4kW/BizQDb1G6CJwciNnDwR4hzYmGtk/izDlRpW2hU5OEfnbBmXwgaBpbu
	 4ht6Ecg0LPjtGslnDwLDysKioJyr3fJIYuTXk6UpgNpYN+mzIvgR3EcdndUjHFeMCk
	 txmr9ZyCTM/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE35FD4F2E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317129358.10553.11006629246403912901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7680950c6b6d2113f066ef6684ea64b0d799bfff6de11f1b283972f9a8d034
Date: Tue, 10 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773171293
