Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AEDE552
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742366994; cv=none; b=BRyeGic0OB9xClr7hDfghBMTZCAtecjemlHk4wcP+qFU3rdFxWoEwUwExAg8XzvFNnWVGIJV9cuKPqVWwl0dV/4gEHIKUKsbiGkGbq5SVnlsux0kUQMUbZ6EQsyVDVvafEgyWgbVNbUsg8KhG7yyFMBv/7eVk9eM/16cclB0vAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742366994; c=relaxed/simple;
	bh=K7qVVp8pK93bYgU0GjKRrrsUoh7vey8iFeJIdngMqIQ=;
	h=To:Subject:From:Message-Id:Date; b=nwblP6tgXOr8WoOciCkuMiJgK5X0vtIUa8DB5a2gmM0/XkVtOvnPxTnX08etmPUDFaJZd2sx7pdjVEdj2poUMJWpAMyCXb4mv665TSfRF0EYBpzlcnSuC5I6qcTM8Lp9ZjhYRiFlmV+qbuLE3fsWKjOp10y27IZ4K1iTfIgzcJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPryZcm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPryZcm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98A1C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742366993;
	bh=K7qVVp8pK93bYgU0GjKRrrsUoh7vey8iFeJIdngMqIQ=;
	h=To:Subject:From:Date:From;
	b=GPryZcm1yky3VJceSnSI/U9FsScu218fADd8kKInyphPlTpMW1YvE5VEEkNc5+6uO
	 1ZhR+Kjv0OBmB9b84sieZhGli8GZdQmeVsD/FtDXXkm3hX8hnP0n2Sckcc4Nv8YL5F
	 pX3I3R0WIzFEc6dSxagdyaFkqnl7BxV8ssopjh6gSaVdVJBV9myEh3IyxEAssP74t5
	 L66ACjgfFIQN8ndGcx8Z+curzphDbSDWjeQ7iWIrHhaJEC/pIp7GFi9z4l7zL4Ej3Y
	 BIdTq5QFPyrjNPY0PLtzndArjs0SfWksE1/v+/4g8pzY3I7BpFkIUD1xh+gNzaVHsa
	 OL2Q6IWZgAI0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1DC35FF1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236699358.10309.17691378443918576241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398a6045ec01a1c35099c90a50bb5e148cfb0bd90a8b82f4b35ce2f5ad68b600
Date: Wed, 19 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742366993
