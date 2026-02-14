Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C40329E70
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771051494; cv=none; b=QZSW2gE6w2l77FAVVeljTXMsyNlNHNy1yyD3x0TjeD90EtSCL9tYKkGbdtBOh5PSEmsv5wyI9CqkSJh5c2lObOOOww6xXyIbERotuR5S7KqLz6svJ5bg8hPovAE95qshQAiQSDCbjBBastHMclwid9htk9lnuCRv+b+x8rNoviw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771051494; c=relaxed/simple;
	bh=0QcAAmawi6uoswwFFQdfeJgMQ4HzNGVnKNJL2Oi4C3Q=;
	h=To:Subject:From:Message-Id:Date; b=aMMqeDXSAQlEtGXuIxjhBkTy3yvKSr50slZHZM3EjPVmwPq7idQJrbmpKy5rgcEQG3KrYCEEKkTUuCgp3CWWjb9QxTjD2j1sWJhCgxf8EIvupX1rwyJ4xGiXmIuiLmR++AlfBmHiuLJRrw/sPtBno2pfd5OGeBYXeJJkxvgnWus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGvx5avn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGvx5avn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55FEC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771051493;
	bh=0QcAAmawi6uoswwFFQdfeJgMQ4HzNGVnKNJL2Oi4C3Q=;
	h=To:Subject:From:Date:From;
	b=XGvx5avnQocLmqzhNMypXLzH0Rq7KqlXQCKmpcTfGp/VtusaAaZwZVuwUlGQZtV5E
	 3J8vg+of8Mv8i3R8cNME3ZIOHyFq9oCtY8qIUTHO+vcFcAh9PoMHjYRferUh/at7+c
	 f6yuE/sjNFuj0y9YvF072KxlB45UEmDow/gI6nQn3TVWqAlQv3cDpXVBf8EUBNVCRD
	 n8n3QbUviln33i0LK7KUuDoqYCFTPo2qTDKcORf7lSOJFU+vjno1u/rClUyQdceUne
	 yyi7qoqWuYP/xpCdeB8+OplhGOx0g/kSGIthG9S+z/VnR4cFqpLoAAO8icMjcZ/vNI
	 LiS6wojldiVhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF88EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105149362.25946.461716795348512724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1643bb2909b46e9f15a76cb7bdc0da43013a5ab507e9d61ef8d82d89de02060f
Date: Sat, 14 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771051493
