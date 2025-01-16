Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A4E3A8C1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737060954; cv=none; b=YMXFma9xcbOkhzgpS41GMw0Vs2GuA0cQflb8XxoyTFOuYxHv0pH6HlcUeDlJfznopcWRrS//OjegeTW8+rcJ/jDqLEfewa52MFp0g/aE0cyBfmsbtxgBHkekXpQJh6IM6UNcZGglRttr3wM/rnoQc/EAGxCpFtFXLpgU4ujaEkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737060954; c=relaxed/simple;
	bh=chBWc+lGpauPR2XHgz1g4ml0s2sp4i3ob9SynlfWE8A=;
	h=To:Subject:From:Message-Id:Date; b=Z1SzCuzGRUo+9ad/8nqXhRGa2jdkd3c9yHBEXMQOqVoohXX87HqDZ2WNQUQcVWAqGsX9VfBzJFp3/RvSRtkbCYRfXzTpkI3YKg4PWbz0JUTJ7pUqRmrRsk2Gnu26QWsG5paK2ESst8/17VaHdX+zJLpM2YIkqbW8ChD/DHbnylA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdoRuVld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdoRuVld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD18EC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737060953;
	bh=chBWc+lGpauPR2XHgz1g4ml0s2sp4i3ob9SynlfWE8A=;
	h=To:Subject:From:Date:From;
	b=kdoRuVldwiGQmsFEx1miC/F7bbEkofChJkAVHsE9FJMqJsxq86clsQbIHMdSCGTpV
	 olYlAaWQrnnFQQ7UnxXrgziRmZ2D7cmIhQ2NZbqVX7IQgnGk/qEX9VcbO1Xp6L4wC4
	 6V6z844sDvlVA9qCaV6Z0FX1XkB36tFJhIys+gq38vJX4tWBISV6+lI8ddPQaBCzgc
	 DXrCV7hRlxHeYpEc9I5KT+JSP1EalC3oRzxGC2dLTml0kXaFFV4sLyEyLkRT6bsb9M
	 RdwgF7XUsJ7g3HCblltgkoCOB/DKdxCJJAZjmgSK0ga7cQC1BLJZ8LnKE6cVjFXlWc
	 6/GigQtSSgECA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DAEC02187
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706095361.31871.5688772364259123620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e297440f31b4d99923db986b075af52f2e2e980349c7a5f1b6baa8dc39f7b6e5
Date: Thu, 16 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737060953
