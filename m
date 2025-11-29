Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D11A22E3E7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764422574; cv=none; b=PzOJOv+yDVdM2OezTdT9PDLGrKkGXTg1HQtC1Emc6yE0bW2zLJKFe0STdrpyZaxBM+MWtbWnK4BpCEfdKE7iP+BNzyAatGgMNHRTMC5QW7lz98QLNZiJeksIYmyYVnJBJxZsXg4CFwxU+yAh6flZwYQEHMy1aXKPlEqFx+gSgPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764422574; c=relaxed/simple;
	bh=G/Xtxz2S6eodiDjKyU7NRKxUwfyyrjez7fdsglSmw5k=;
	h=To:Subject:From:Message-Id:Date; b=oXiTUlx2dAKKzC5UiT0irC63ddDLaEetXnN2KNm+pz83RhDTwLAsXtHrARjs2dmnxZlq5xj8QoPkAaNeNrDOPYbGnto5Qdb9f+1GRrme2ttu0Ofn7eYEg8iVLaz3QwwmvgYSq9ZGcKuLtDScoxgN5lhwHkaLm1E5Jc2geLVKz0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSNgLrtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSNgLrtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8805C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764422573;
	bh=G/Xtxz2S6eodiDjKyU7NRKxUwfyyrjez7fdsglSmw5k=;
	h=To:Subject:From:Date:From;
	b=MSNgLrtqj5U6HF81PaZiQ6YYhHcd+i/j77fZbC2RgTQdVwhuEPPprlu4w5mawiYZ9
	 ZK6jLWfOyVqEk/G4NkNVz7DaT9vjlV8yyCZNamVNFINEhV0GADCenTrP8IMwdTlyeN
	 cjV0EdgZMctPrIiefcuZBxctPE/G7FWoAgb8o8+CzDWnAg+Vxn2z62OLKvrIPlQxWX
	 +RQ1wF9xXr8RGMK8NyqkfG4GmDm5GRHRHIBKuJl4SC/fljaqDatXhPexu0RgEbmbbA
	 AsVlPcihlmZtNJnDmGhZR1rEDPipaWtx89Xt3io/+eh2L5CFM5dI9+KIi4jKMP6JYn
	 5ZGaWhtKcRuVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9662ED116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442257358.8131.17267747184220730477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b7284e8feb7917e382157c808fa32a7217c5c86eff6367c43c2128de48561e
Date: Sat, 29 Nov 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764422573
