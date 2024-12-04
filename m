Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8376188012
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733298354; cv=none; b=eTTpupHffixNSXh6DTmc3IwTHhI3VQPTCWyXfZUyx2Li9yGKy2xZlfhNolFNlbNJ20a3wwnjVVVm9VjBYBbvX3lgjIvb+PA/hPyzQQLXNN8wGuB2WKQ5pz8A+YDLW4n4ZukrIolVIdetYdLHu/VdQYJ3rrqvx7JU72Aoe51D7Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733298354; c=relaxed/simple;
	bh=2W9GohpqmhJUzkbenA3Rdtx/Ud4FRghodPGX/+e6cXE=;
	h=To:Subject:From:Message-Id:Date; b=QuxUdbr4OIBc+ZYh2OW+hBsz39LvUjK2oHA6DeY8bO1ITX0cD0i3IbwcnDjl/dV8lBChcMz9f5xgSMbycV4a2x1IublhKuq6Tx9E1MX43UtL+pQIeUQicxBze2qAK4b7RJCubIMHPQGCgytI8UHkTJhkvj1rl15iEfDTNgM9H9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J//2i6AY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J//2i6AY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F28C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733298353;
	bh=2W9GohpqmhJUzkbenA3Rdtx/Ud4FRghodPGX/+e6cXE=;
	h=To:Subject:From:Date:From;
	b=J//2i6AYBw8P1deq/Lws2k8t8B0uXo1+3nRuNVdHJz8fCqNimEiImWiWV3fRao3oc
	 FkLPJHPT/tpfYMFeddUT8hHR4SSOW2UkNZ8jBeUnlNEbPuPF7y6UeBOlY+VNiIbKky
	 uynCkDrkLmU8sjDwqwhj3ihX9aBVpRDIryInmiEvWMiDWfc0aGaHJNYxio3V4mEtzl
	 REhQzzPjeEvlfK1nAidg866/3vZdIYubA9dfQoP5HfWXsarjZyEfwpxswcsSEH+sfd
	 ANrmth6hy1192cH86lAGR6Ov/U5QNt29kS80pB2cZ2Sv0/mDnbJNSTOiKsJD0jsls5
	 Prd5KW6xrhLzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90113E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173329835357.16821.17514450743360736006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e93c382269b7c7047186e4b232f954122d59a23c0e92f410c4601351745b169
Date: Wed, 04 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733298353
