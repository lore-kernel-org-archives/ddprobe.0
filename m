Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A98428D8EF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752073794; cv=none; b=QrZ777QDdKXWcgQccsiYG1UeZK3HqDuyaAOTCt9b9sTfBwYRj558GrJnzFUpDb0dAnhu6oU+2wOiiRekq/DSgbfrN6yNOoTbPZoINR4R6XBD084eBKTPU/9qaFYCD/xGf/SPAW/AL16U4nwgOgg0yVnTg+Kzmpf1Z+/sUSTrikg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752073794; c=relaxed/simple;
	bh=GmU8OHDLWJKzlcWG5PheqreO2s+umH0ekdUtckd2wR4=;
	h=To:Subject:From:Message-Id:Date; b=M+o3DxBoM+lL4uQfehpYcRYyRNTJxmNsmy9NgrAJ5AxdftHTUFgOXzOztcGTBrktk6cMTNXvhNbWIKO3DY5CHxqy06+o+R3WoDoDLTACjzBhW+nsS7QU+PuM3ijYlMuoJEXzNmL+bqHosCACcVdFzKEuDzd/pMG757gnhOCWH8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgemMhTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgemMhTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9F3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752073793;
	bh=GmU8OHDLWJKzlcWG5PheqreO2s+umH0ekdUtckd2wR4=;
	h=To:Subject:From:Date:From;
	b=VgemMhTzrhMDix5AEg8dYpL27Vz5E9jpuZM3PFZQdt/s86Qbr/LIggnyBQL24FjMY
	 oh8em7yGglV4BjtFpDNR7Z/aur3YdeeWLwDwtpghOtbn4hU1doyCKt92o1noShNWdV
	 pVCM25NmHirx8ozjrfOHvIt+FNf/aspl2GE9LekBux85va4FUJCfK7KeMY9tML2qsj
	 SdYieugdpiNr6WQVoROrF7XGox6Jifj7SS7dLiQ/2jjT6Kcq/2UhdG+4o+Di0aSJpG
	 wtQan3kA0YrpfklyU9p590SDyAZayvcbQbq9aQ2qgs+YGCns/PN6hx2nkZN+t0KBfO
	 /dSencwBMQeKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A25C83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207379358.9609.15892709785095589648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbca8a9114b6b5121362628122fb05cfbbeec9175396c5cde677d66a544a325d
Date: Wed, 09 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752073793
