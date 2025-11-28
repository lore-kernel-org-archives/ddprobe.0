Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E892D592C
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764333174; cv=none; b=Z+s/DbuK55cODIrnO+n/aG/QLSQ1jqcEVPT4SNBe1QynwJCFNi9kibSWtxC+XQmYWTxnESVH+/2oHFZwGWowFQuoN4acQD2aJgzQN+veMUgs0j1O2TpOpz1Q5E1x6qNAW87V4nQxaNN/f8hrvaSyT7TiF9edILGe4FPU8GqsMOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764333174; c=relaxed/simple;
	bh=7IkjFRwsnR/twF6CTyOkGnmvS7dDxvGD4qo4rj2ysHA=;
	h=To:Subject:From:Message-Id:Date; b=PW5arVhEtjuLX9zzQk/EGMAM5+OKOv1aflD4i98x1y04NQ4517MdMbwW7y4Ubn4xBSQmf8k/qbtTu0d++khcnm1WDjs3R/8Cy1gtrW6YDBV96Ew2er5dR8ydUwTvFmpn5zau2BOZrwIFUzmfKkAZWkMgiHtP/LdLWuO2qhnwmkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/IRQgvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/IRQgvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8859C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764333173;
	bh=7IkjFRwsnR/twF6CTyOkGnmvS7dDxvGD4qo4rj2ysHA=;
	h=To:Subject:From:Date:From;
	b=G/IRQgvdm0gxaNlgti6RQlzdS9dPAD5bzwMCleEApl5YLuOGuHiGNeZg1ATFUp0NS
	 AgYWgz0pB59UowweKb7ygnwno1EPjcQRCXxi6NOuGmYFYDe1VeBAHDfixEGLQ8Ajvp
	 G0mrft+hteaVoRh58kEu6Msbn+GvQ56+YPs3ies9jxLchw+gfKs3gF0etr9XgIAaWL
	 u2crxIQgUTQ63N8bp4nWwXNpPzujP6B6t5a5EDpiud4U106+ABUedC0qm8dSjvDO5W
	 bAWfyD6cX9XX+UKyKfUhoMqKba60iyDBAKjx4hIDlF4Lu5CXdVBAeRk4J/kx01Z8y1
	 YBr1pl5SOg4Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A1D116F3
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433317360.32380.12195495330485587070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c9160934f046ebc83f1db49bf4b135c9f4fce07d0c538d1dd096a7d5c6404b
Date: Fri, 28 Nov 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764333173
