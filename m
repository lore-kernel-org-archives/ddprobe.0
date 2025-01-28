Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCE219F41C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738062956; cv=none; b=n7LFr/fQxtznv+CEaGnS8Ss4TFhJg64TuZx4t/nUZ6YOjGrvUqO/qMIw2XAHz9831k6d9imwM7IoZ5xxpu+RdBLO7YXDsnJXgBAogMQvJsSTy7Zkl7iWeMAt26ayOn3qw5A3eJEdaJ3ItGO77D7eKItD6q+bp0TeR3ocZY+VioQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738062956; c=relaxed/simple;
	bh=mizCMHTzbbZ3GWprjASdraOL7FxY9wNeip1fZxxi2eA=;
	h=To:Subject:From:Message-Id:Date; b=Ux1f1OYnIZszddL71rCYfSSmUDQiVB8Tb8YaeLIF5kG+WQ1gERI9UoV+mSvafK5Z07s4LcmGUvIlPKrXoI7g1pPgEWUn3DKuAw0znORmtkrVF2NhfH+nGzj+SNjK2Cdj6Ns50jLqfqcbDYuXLlBLDd4hUOd3Djv0OHFKOtM3W0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui7GpTxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui7GpTxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4690C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738062953;
	bh=mizCMHTzbbZ3GWprjASdraOL7FxY9wNeip1fZxxi2eA=;
	h=To:Subject:From:Date:From;
	b=ui7GpTxmFWI+5jRaHPPN43M00J7oAAKPYE5PBr1s9QLfq75antoguQ59Oms2sBwfc
	 OKXj4xEuVcpD18U2sdwiGiRhInUvKiDWrQh0hSoMrRfyLd9Gqb8T5uJfm+qKwUm+cp
	 m+PZDjFOYTUfRjVd3CsAMsyLwO+qjq/0hEvAs7O+VJ7jEr+IMX5r9qPeBERVGq8dZi
	 /ZcIUR0doQKgMdc3x23wHcNtYVApAEvYJ8IgwAVelnYStIUBMaHVJrDJ8fE0wZoYTe
	 p/Qu7GqfkV3Ytwtust9soZ2yWCx4+pMOnGXXyGDTLyrqCMB8O3o2SbwTH/Kak5ts8g
	 bKxOsgCUXCYhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA3C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806295368.17602.1022423241998966999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096453a77b82d1d4f3484b20b73fa3427af498711b950407b1c1845e8836e42a
Date: Tue, 28 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738062953
