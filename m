Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300F5BA21
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767845034; cv=none; b=Or1w9F1Mrug6gEue0myZPCBJJRF1fs8CqWDE0REV4dvt6fwscOyAb5TvX4j/NwLEkL2+Ttnm0wpyruXu3OarK2uZy3XOUQ3r47j5CnjFL6yT9HCeTA0WHa3IL1lK+NpE7QdVfFwBl5H9YoQzeBelOd0mirOElFRBpfK0hBc35uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767845034; c=relaxed/simple;
	bh=hVOhl5XndvxnFc6AC03cCClx7uc5SdFYk3+fo2uYtMY=;
	h=To:Subject:From:Message-Id:Date; b=Zxbj50Z5ujIAkos4HSeDk1oso2GqjszdKXIT70HnH9zin6oJacpqgCY+i9vmbA4iYrYRygKi22oDrPCPjTqlFq9/EoCrq792h1ymuh+Zy5tUxxGYJ97j2GwQN95c+B06CaPehtdn2VCzxZ0vKro+88e0GVG+Lq3CJTK8Av9PiGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7hbHGQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7hbHGQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CCEC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767845033;
	bh=hVOhl5XndvxnFc6AC03cCClx7uc5SdFYk3+fo2uYtMY=;
	h=To:Subject:From:Date:From;
	b=L7hbHGQvhxd8gkdrT9/y7l1ETvjglwqyLMvG6NWB2KGRkaOP5s0dDArEOv8XZF4Dt
	 GSlIi78cl1vjfNn9b0XF0NZnMxM1haevozcdycrKyhrkxVnFJY2ZX746rvIuv68LzJ
	 4OsOxjR54CdZcSQPBNYTqlYmn65Lpms+dQhklVP+zSf+ivZ9TFmsFB5nqEmyJa784M
	 3fd8EJUpdMgAh8qtLwvdqlM5kW3if4QrG/ugnx92NZS2aRGQ1B2wKMViBMzEmqV2sf
	 Fw6pqblrNTPNumXv41Iq9LN/3HCGGbyoXwk3qcS9xFjovcqdw+ZpgV31qZKlzuGt7k
	 NN6XZbxwpc4Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D9D1489A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784503357.9777.1739696277436441800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac4ac0d51fd0e1586a9d64cca66c164988fb73af3baee7964eded8a4df63214
Date: Thu, 08 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767845033
