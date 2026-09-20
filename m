Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BF92DECBA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789930234; cv=none; b=BB0QEdJhzMbN24POh5/W+4haOp6hWim/HU38kjZlvehTsn5f3xsfXaz1gMw15oHj28buWs3+nzBCjKRV2SOqRWwjtA7oRaz22gW7kw1HViMce0uNCfV6/cliN4YAXEvywB3Nvlbu2+x6773SS5KFl8wPKTZdZrCuNYd/Kl7KA5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789930234; c=relaxed/simple;
	bh=k3vZBlX212G+ThylwRk2A3nUNSs0ddYWRdBOZPD//lA=;
	h=To:Subject:From:Message-Id:Date; b=byDMoxkroQO/MrJ5PHk+/s+9QWGRrfOPBS6pJt0/4pym9RLqUzfD0gtP1cyEkFFuEYRjMMETyl4+QmMI0AV1gkkYEG7RGFqErC7uq5i97vspESt5FnDH2Bh0w8PtA/U+KbB1Pf7C6vY8SelQc9wiXiQ0izugSISDUyfx3zx5P9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Spv4Tl4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Spv4Tl4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3697C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789930233;
	bh=k3vZBlX212G+ThylwRk2A3nUNSs0ddYWRdBOZPD//lA=;
	h=To:Subject:From:Date:From;
	b=Spv4Tl4MbvtMXEs2TgDCe3WXK3KtgU2/IZILCJCH8woGdZsKBgTN3gNaeg38vBIIy
	 WIYuYasNyPTglO3L2dYpZL9hGHc1hvCO3VrCzEjJL282wlngCjd4mpH11Bphz+SdIa
	 x2NluuIb2d9H+BafmOvQcfzivLZWxiP35cYAkLhUTKltsi8rNVjq9gdZ+F1E1leh80
	 LODAYlV/vLh4zpO6VcTwQvFQrAfGX4urhRI4P9s5JxyA3TPhXpkzOhkFjjMm9b5hGR
	 qv/whqEf5WlWcLMP6kSq9tl7dQcSTJW+ek2MPlq0jlIUaTcING2JgA/UOXDt8B00H/
	 ctSWtvmJwUAPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC835C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993023368.11140.15891141949664863832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a30e6c5c58f189e1fb11fada87f9c779ab28182c74ad3564ca396de99ea2fd2
Date: Sun, 20 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789930233
