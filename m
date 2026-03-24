Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E53D38237A
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774331694; cv=none; b=TnhKO9RucAKYLaH0VOgsmwo0HgcWRzPs/ADleb0YARejNngRzJ8pxYcf/qSnV6gllQK6Jhz4hdUK4oDILi8v/7pKBpDQEncr/a+gp1MLwm1a6RZ9826bTqEER8YUNgjSIEvxBUVliBdCwTHuHutmN5TtAcgLXmhBVxpdDfOyLlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774331694; c=relaxed/simple;
	bh=lXzGJTjL+Q6RPbFY/gpePQzersZzMnRpAnLwYRIa+GQ=;
	h=To:Subject:From:Message-Id:Date; b=Kf2GGVPr1O+mjSRio5SlNyYXkAjqjd6hsVERtCrZfkQ9H5SLVz+/BU1usMUPHCPQHm2SgxpcJgQpJikRM61gDyGHkO5oJEjuQW9tG665dAo/IfGmWuU9OlvaZ0F7z4vpUMkCM8XXXF902cXvHPOznztCploZjL9IEVqeuiHimiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ah/llsKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ah/llsKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3221C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774331693;
	bh=lXzGJTjL+Q6RPbFY/gpePQzersZzMnRpAnLwYRIa+GQ=;
	h=To:Subject:From:Date:From;
	b=Ah/llsKa/tbkwcusJ04h+y9EzZHymxRjJTcuns0GfMxveYczvYoPdBU/GNL13QQV0
	 astb19r2Zo0zxqVtsgL8BGQx/Zj6pzBxmcz7L2YpdJZnH6/dPNqXDwG4/AZSH97Gua
	 iER5A75v1/gm/tx4L9XBrAreDvaFD3etRadIfseCNRK5HB0RANNa+zyQ7RT/Hzo0bj
	 5ORNnKtiyYVYWftxR1rUwWIvYxxethzO/xeWbUFiHIUGI1qx3pf5MBvEDefUHKZwxn
	 er+zkbacGZ/S3DgIdcNE2Eu1KJ4BTHIoOxgXcLM2y34hDo+mku03xWizAx/LJGFgOn
	 uZF5bbFKQ6G7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087DF532DD
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433169358.4763.16353172377256561066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c16ae3fe3aab1b9cc2b48c80dc66c975bdf8222eb2af0920ed699f60ebc9d1
Date: Tue, 24 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774331693
