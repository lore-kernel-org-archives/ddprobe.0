Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1A937A851
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783760314; cv=none; b=VaCcPU7OTAqWCgJ1qvQINaFE2pua/Q8vBgLp3dWCQyZ29znY6hCDqR8n0MUUMHYcM70GjTAaIUaUFfJx9CJpB5h+ZSYG63QeNA9Gw8W09tlE1Xtqu+hiabRpVX3ZrHIVXy+2YjbYB/9C+J4QmbVr6khm1d2Biu3JND2EQcS3Gzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783760314; c=relaxed/simple;
	bh=99ue7X9DtViPN2rYcO1gv7w6FgiVio54Q/rdm4s5tnc=;
	h=To:Subject:From:Message-Id:Date; b=KDflfxxTgzPf80F+2Q/NR/E3Xc9KYN532JvsMJQI884cd55zZUy/C4JjTPs8nkxI0ISX9NbEia5e2R/jWaGza8HsjNqW3RihUbEvpWjhi7numOEuCrkgAaBB9xtne++CKwiLmnMyquCXWdBUt0aojxBAjGqRbaak9BOHjgVSqMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ac4Ws5n2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ac4Ws5n2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB85C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783760313;
	bh=99ue7X9DtViPN2rYcO1gv7w6FgiVio54Q/rdm4s5tnc=;
	h=To:Subject:From:Date:From;
	b=ac4Ws5n2BJeekMy5FaADKeRlerOBYoiyNwpMxg0ybMNzmPGf3fGRXA109ibS1MGZs
	 cntz8qgNLXn33XnXHCHdmLoYTbqPdFk2E3MA4Nk+IEi3McSlMH+FKmQbH4zJs5eAT+
	 X8giLDkDEkSTWr1bCHNTP5litHhhkNi/CdLJluvmA9QplMfqf++HxvTCrEOnhEQv6T
	 Ujac9OsvjEtwLrkvcU3shalBdzmxoM+T34aZuugFa1A/KLpKkR7A7TlPrJwFApGPer
	 iedWW2Onsu5hyqigb7s0BkFVjymSLoE3jruPoL2gpwZ44j0ZV+AwYQJsNLJFFrd5yV
	 +AeypJp5dz0+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB824C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376031368.22274.14784184851905303239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ccbc3e66eab30b4893ebe72cccf41afcee0b24b1393be73b67a1e094d21e7b3
Date: Sat, 11 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783760313
