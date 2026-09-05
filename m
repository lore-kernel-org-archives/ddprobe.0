Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A24E5474E
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788651634; cv=none; b=SEmMrSqhlWBMoSxBo/oyc/aEVwfCMzI4SPL/BRp+4eeBS3x4NnGi2E9EWkaoW3ZqX/M+i5/5+rEQKUC280NenRBgBwprJ09FFIfQtjhznpEEYIyuRuNu1DsLAQ8DDJq6wDHivkyD8MBb2VCK3ewyw8k/CVR5iMi0PzHQ4ztEvms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788651634; c=relaxed/simple;
	bh=ALTFhhUvqQ8yfXNK4qYrJUA5eBQ1l6glPhVxS8ST93c=;
	h=To:Subject:From:Message-Id:Date; b=QLUmH5HUvL3bGMUy1zP1qn0y9425t9cGI6QbaT8rCgxToedTJRmVG0kUfbSZuzBDo4sKCUqLlbBX8SfHYHsIhSfY/YSEh1INc4FKgjasjjLM8P6UNedWXCi78COfnWFvzJ15x7p/fW9rsdagG4jA9foXtJpYy5NWap/8FY8BfNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvWE19bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvWE19bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D292BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788651633;
	bh=ALTFhhUvqQ8yfXNK4qYrJUA5eBQ1l6glPhVxS8ST93c=;
	h=To:Subject:From:Date:From;
	b=AvWE19bgwPUGu+4jZg4/fva2fH5xQOs4EypX1qxCnsdp8QSiGIeibNHgP/QfpBKj1
	 z/AxbwLjNSANrgfzsVWavloEmk5JZNr2AVJ9pdr+pgUBUq/j7yf9ysdGX4IsdYgo0S
	 30P5omXMycpDkki+omYPaERbwS7c57BlUPeC44Qux/4iOdivzMoyst7TjM/XP6xFbi
	 mo+xNrKvCNlVkjoGn7LSawVI+0CwmQT8pmRuCcb04HdAsIcrK/NWt61xXIWQYRo47O
	 ZY7lEUslxgOatB6YTT90D86q1vam9SvAfElPU56XhwHkzddnjiU6P+Bp00IPhODa4s
	 8+3OiR76Agt3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B177BC79F85
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865163369.18506.18135330023248597737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38efeb18278404b84aae1a2900c2855943cad72dffe4c26051de666afa978f1
Date: Sat, 05 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788651633
