Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543B9267387
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741869534; cv=none; b=FvlPPp6CF8775yBAkEte0uE6XuX3M3wx403WKN+9kZF0ekSJAHqrTd696jwNy1pxWuLlBujATnAvmuSLtl/L9h3DgPxLFrKSl1ATaD0LwJ4lynmFK+3R1aoAn4iNI3P1Ab9wwE5+ufhI7mE3BieMMi3w1TxkORQXGKnu+4ZY/Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741869534; c=relaxed/simple;
	bh=uGSA0aW5fAgVvGojFdiuSK+FLg9AnZdAgOS9SoeTAiU=;
	h=To:Subject:From:Message-Id:Date; b=chQufba0vTK9AAYHv7fZrve+MelWYBSDJvmWVNzIJ2n7DYF3keBcLVnu4GUrE4in+vPE9U1ba7vKsUZUyFTqpUbyQkrfyu2WlH26B03CIXt1H+VmloMe64z1tfb9ES0g31Q4Fy6574O9mprb6oI9QHZqAmtWwuPhlypiHqa5IwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcxTGVfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcxTGVfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8B7C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741869533;
	bh=uGSA0aW5fAgVvGojFdiuSK+FLg9AnZdAgOS9SoeTAiU=;
	h=To:Subject:From:Date:From;
	b=kcxTGVfouW2BO/q9x34GUbBkdK4aVnUhAs1l3zHkV6zMmmrW716q41hSQnDFx/p1z
	 E9GwrL43/meRyASlQDiU+GMfO96J5XSXSZjPo1fPWhaAJk3NjR7YQ8OqGZyv5m2+/S
	 dGxM0UupwuVHxqwpksnZrq0WReFRUCioZ+usvbtbU+8s0o95tiey1l7msifWVVlxdp
	 fRvewgt9LMP+W/NedjTYRq55Xjv8Ro2r62+QbnnGc9qgCSh3NeDIzt4rnZgcjDKGWR
	 Fiodi+pznxLf4CNnCwt0nbTfqSGg6Fo3WNmWq1ESuAp8KuwchHxFb0UxXie3pgFfNe
	 XACDW0rnCaMoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58DDC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174186953363.13493.3624491246911218195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f7b199752d1848e77493f39ab2b438c11b74e19d885b95e1390fbb9d703f49
Date: Thu, 13 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741869533
