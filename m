Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2460124022B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736798154; cv=none; b=teM1XpKbpaFcjvx5bKKEDLIZMbRHxbkWaGdzJaDVEqZIOvxCiLzN88aki88lsOlry6MbYIMjdGznlKLDO5hY9QxwcXuw77yJd6RcLDZUHB+5HBVmyyMPE19Nllo5wgGUw6hGv44hDdldQIjeFOV5Kb+rD3leeMzSELYeJzwYT5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736798154; c=relaxed/simple;
	bh=ETZy0ShglSW7kmch7DynI+uFlK0Qy0vgBvo94/u3LLU=;
	h=To:Subject:From:Message-Id:Date; b=OklYYlvoiHgzMJSnRaX1dAkzBnI8kTXD/6SOvB4gU8f+9Fla3CFEuUQTE7ZAENWYmqRN+NBreLGmXGN/p+fPEQGanxCe/WrvaH/4wVsSLi3OhHg/9xxEizsIUsWeEaLrAn2Dqsbe8laVKrzsPgrE3ONy+1pVbBRqFFFWpT3kT3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGvZATRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGvZATRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DF8C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736798153;
	bh=ETZy0ShglSW7kmch7DynI+uFlK0Qy0vgBvo94/u3LLU=;
	h=To:Subject:From:Date:From;
	b=VGvZATRiHG3TnNZUrGkYhKZsOe9WucxRz84MdV0MZqRiRuT4m3glE3ySmjr0+u5Cu
	 ueyjQeavTkTHC9C5gtYwfsXS8Drsnbbmc4Blu7WEFKPH0qPB52wtIOY2kEbWrB25Dc
	 YvAgkxNc7l9ndKxzP9SC6L0QbATaxUWAYJ+g8aVHaOqCYyKA9PK6phu0HDIlSGAN6t
	 RlFZ8X89+Pl6dKeLXYMjt2KuWK7Gq9B8+xD865bM7Fw9mT3uHYuGuBo11Y5ZdF8Baf
	 BMfMuq5uCgl5bQfAh8ZelYZh0jwJ/grbOo15YKhe71q3Qdjd5RPabizfH84FVZ824Y
	 6UiAieo6NFuzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92059C02183
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679815358.21691.1256734809054361841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac773d98f835b7f92e084861238564e187fe59aac38606ac5e8fff517cd605ab
Date: Mon, 13 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736798153
