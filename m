Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B66B819
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736655354; cv=none; b=Iql2VwGyObvWZz27zL4XkFpZX6mTguSEKv2/wbpWxaKyu/OHmULMOcV8d0jwf/kU8bwLRYHgaKeAgm3/3tlCj5t7DFXZdohaQFma4aKldfWu2qdC0RMt7IL6HHxLqwhrCQ7A9KgRUrIIHsQpqe691zCLxPaiNDXouPsyZb8RqEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736655354; c=relaxed/simple;
	bh=00vqqAQI2IyzG/dK5X6+do2TbOQ7fjPQabZ9TMsGQ+I=;
	h=To:Subject:From:Message-Id:Date; b=AxXq1lfbJ12GjevzWrL+PdTofsDmu2A2tAEUakqc8HUKsxwRlWCFm8zGeK/c9qo0A8LiT1XV116i5wq47aHFTWMWQC606ip0im2kaWCgZGZSM/5Dc3zn8kLuLvwD/LICAuZ5ndHPDoXYAGFX7O8gcVedBV5XOdyrL+YAxv+1mz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxwP1i1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxwP1i1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB8C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736655353;
	bh=00vqqAQI2IyzG/dK5X6+do2TbOQ7fjPQabZ9TMsGQ+I=;
	h=To:Subject:From:Date:From;
	b=gxwP1i1RVq6ZMKqsG4JcSpVxV5K7UI21qB2nEZQZttSbhcxBZYrwk/CenCrCLG379
	 V2RsR1BIrBJSDnLGu4BnqY2RJxvibq6syIlln0eV6QGqVZskA6CX+nSzzs0E55YkB/
	 w25SPAgC8lGhiSO9BbN93PZ5G5s9JiSH/hoIqzBKsTWSxKQc5PZgGkmW3Ov9Z7qDJ7
	 UmucZLkVypaxIfbp6xmSjYcUVU1CLlsdM8ktttbHgZI9b7GU2ivixmQ5rdETxV4a7A
	 Hgu2O7IsdatSuu4E4Ip7ptLbpet+wUKE6Gs3huFwYYvAV8axXq41qVgwNL5wMfRT0U
	 ABiVrvRLC5ypQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F538E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173665535357.25013.9618265262712145692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b3742d53f4570015b6f51559c4d5ca9e49f42ed60fa6b379e0a547d25f1aae
Date: Sun, 12 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736655353
