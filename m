Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1FB34D3B9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780922674; cv=none; b=DLYN3bEtLJa4RT0BWaDVQk03A0lgdytTjwzKq4TejJyCcDEJZ/VEiFJdkkmbXUXqWORmhYsA7svHseK2iTRUDA+LmLUMfyAE8VKNOzR5TG/sHMS6pyg4AIcBWivvmX5SWPclK4I1GXmZA1ONTcgmpyvtuU8tt9dMHHTJRj3/lgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780922674; c=relaxed/simple;
	bh=K5YFIfanzdLc9GEcNhvEZSuGkoTjkjscQuC8whAAv7k=;
	h=To:Subject:From:Message-Id:Date; b=jm38NncaQplgXZQR2cd5dBhZjP6x2ZFheGsHVIr+8OYf1N8qWONPECHwyzWh8mtC/7SA4qn28GGyqBDwHcfxr0oYSSsqP4kX0thU1IN30NnKjDgfEYqo+nYEZLhx8S5KArsDWMInoF/aoRSmmsXmKgVr/UJ8WMY7b12bU00DsGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzQC3+VW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzQC3+VW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D9BC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780922673;
	bh=K5YFIfanzdLc9GEcNhvEZSuGkoTjkjscQuC8whAAv7k=;
	h=To:Subject:From:Date:From;
	b=uzQC3+VW+WQqRQSt+PpyFclLPs5kT5d8bx0ck1eIOj0oV1LKngV0zXMunagReiB5c
	 xZIlW0M5q9g3oVBvzbau+zhkVzHwXf/AtlLEWJLrvF9jlwnTLM8JdpBNi6zsn43kQE
	 zT/AG+3M8nEeXFP8IIPlPHoAUPPWhSkFdusoKXF0F8bYCRQnAsQ1RGfOJ9ZbqzyIFx
	 oTJZiRTL09+hjvIn6W/jrFDUvYUBeZHkfh931ookZ5bVp8Ts6sRJtuLgdnLPIPM9Mb
	 0/Kdrmbi2GMuYqDcP8QznwVMl7wJ12f07yAEHrmplfy7oEvXKbDhKLq7xKtrA0qlAv
	 yiFCuMhYvRo3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A935ACD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092267368.19379.2015940540949218329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6b96481f7a7774c4db1fa5c59df6d2b48dd1a923b44be1b1b7ec18c1eae8d3
Date: Mon, 08 Jun 2026 12:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780922673
