Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220703E5ECB
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780503274; cv=none; b=jBYtSIojI0S6qHZZjE1jTmxxtYPMPhIYUNsai3nHv4RyPfZxZMxF9vTSmWXON8g622NGp2b6PEtn2bsEjw7PqaK3UMrAV5fFkO/fTJx7I7LZojp33/Yd3QKInN6hPK7KZkdDZ+3xkQoS+8qYEltn0rdoo4cUznmJY5wz06IuvfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780503274; c=relaxed/simple;
	bh=soD+AiFLkhHAmlfZzTUTYRYAyq594Mfw4eClgkfCu6E=;
	h=To:Subject:From:Message-Id:Date; b=b8CW/kj4Xzorjq/+bm9fR9COe+hfBsi2e0Q0q66xvVsYAgETQb+jJzjqXQZDlFi0TY6Mf64U5Egw9l4iTO1rBrkgbHhjtJqPP1BmlRmjDuPjw1VLULOCgrUY5Ll0+b67xH8LpV5gakf2TkIh2D3cnm/DXKYP6spboXy3LsN7rxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0OqE6uV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0OqE6uV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1702C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780503273;
	bh=soD+AiFLkhHAmlfZzTUTYRYAyq594Mfw4eClgkfCu6E=;
	h=To:Subject:From:Date:From;
	b=P0OqE6uVDUv+MqXKthDZ8nOuiCVplNuaN+txYmGeHYnvvV/l4U8TuLbudB3RRPSqk
	 xanSsyHwV3ZERRNW8ieqtSsO/uiY8EgORI7SkILw/ZdkaayEQQNNzSxQFtnXjplr7E
	 p7ZbN8qaDiWtpikVR9ZbYYUDQXmQyQqzpEK53qYLYDT54EENva7b7Ui45JKYeHe2bg
	 gNHEVuPNkVSS6j190tBHuG/ptSb4FUzlJ0+fBZt0Azxi+xJvEtwZPnKmsx/i0LAa1j
	 65BEJK/MZ9vNN7PFZ8KGTk4/Ext5QoiNFaPi9QWKQuo81/Sq9qgnMEKc+bkvMzOp2m
	 /hQ+dBIInlTRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A888BCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050327368.19776.5342616348063524993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c461a0b48d08066009e458bd5312a32211ce7ae078a564dc277a7625ae323699
Date: Wed, 03 Jun 2026 16:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780503273
