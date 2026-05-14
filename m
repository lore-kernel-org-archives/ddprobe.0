Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFBD38D686
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778753434; cv=none; b=OufX3NLfKGuLQvzkAj3TeI+Xju5YFLqZew4FfAkfB4qLUGhJO3kprqe+4/sPM9BQ9IZt80DKhqJTCiOKIKL1KAtH3tNYfG7HyKHNoOAJkfPlWabIbu1csFsRf/N06O7YSzYD9vSZmJvoljLsC4e71KEKASULSrb6tX1AF0xd9Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778753434; c=relaxed/simple;
	bh=H7CxFEYD6Nszp0cGLlgiQDXHJNJYwyVNqaMceRHLI4o=;
	h=To:Subject:From:Message-Id:Date; b=SlNwr8ZL2JRQoWfX6C2SgsxO3Vr/2tC/NFo7nRUAuYE0C5ImKj+GuqFWyuuMn3bN0sViwnJ31k5Xf4ku7Xt95S3USk25wVpfwH9987/f/igBUSuFy+Cwk502dMLcgvkwyJn7qRGzSOdK6U79TJj/UJorbuO8cmagMaPwPIA6ZVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNR0G2VQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNR0G2VQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC87DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778753433;
	bh=H7CxFEYD6Nszp0cGLlgiQDXHJNJYwyVNqaMceRHLI4o=;
	h=To:Subject:From:Date:From;
	b=NNR0G2VQww3+a2UPA+VegtjuhGIe/8xe6FVu9cMt96JFrHRAuJe8AuIhG5aVL1FrY
	 NoCdH6e6MHCSwpz6quM1akSc52v+4yyGx6qkfLZAhBOoOY4ry7Gfo5AO/9/hqw5+w/
	 YYku/rIGqK9hpcsvLw5Kl3Q7YlQgHraR9kzYSPerVE9e/pSyLcN9MZaVaK5Y9PPRq5
	 zSUCnqI2bS9HUeMk26S25MqViPXjsWDiCcjg3RTC3xNmNH7mbX2MOgotLgKzSOxu+1
	 KJqAh7QsPX0NBsESsU5qiChgw6x6DHPVjmlOL7Q2PyyX6+rkRR9Jb98TCGMmNas9ak
	 ZuY70j8Iwfdwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACC1CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875343368.7845.10272808431696375654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52724fd20a94d52cbbfce51298fbecae4b0c86076b4f1610eed389273de2b8f
Date: Thu, 14 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778753433
