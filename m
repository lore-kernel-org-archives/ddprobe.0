Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568AC48F031
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789145434; cv=none; b=ZOv+WBwcs2l8Gdi4W5Z2RW0xooEsRNgtR3P6NXTGAw57NCl+e9rhD+kGrAu3jz5lZZT5Quw4f+DWMP55rQSOG63GrWl6hwcxnKyn5sRghCg6xbsLR1uugw4LoFq8EuT+vfGY3fwlM7vYYsqREQiasiQ9hcZfh0UthHgQdeJ/QC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789145434; c=relaxed/simple;
	bh=YUoFoRsYFL1RzbVdJsmNGPctGQu6BMtHz02mj9HEzUI=;
	h=To:Subject:From:Message-Id:Date; b=FpRt60mBjdykFJMpHlbP+sOgWq7euTU4uNaGsR4Co4awBif5NDVJVzBsllsMf+y+HceBl5XyWcvqbFhGPC8o1Q3MlgBjnGXr5PsAhIiuCshyP3dzciGT7IWD4CEPkZbfP9T3EScLIAdrM0COKE/Zp3Y5b0YxJb3szr8o8WWGC8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHF1F5gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHF1F5gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56B6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789145433;
	bh=YUoFoRsYFL1RzbVdJsmNGPctGQu6BMtHz02mj9HEzUI=;
	h=To:Subject:From:Date:From;
	b=hHF1F5gbwT+06vwLiQNruqIHVnDVuETW7+zof+528oB4/1d5H3sFy4UUMyMSH5cRp
	 F1nsInRUFhiDGMn0qJopelbhT467p69OySS9QwDIS7DHDHlfxbJb1wghSpRfcJAxbh
	 JP0TRTdfrkraURrGN/g404yNtUb58z/F+Bte/63bY7vSs9KGV/akMvg14dHLMBdsti
	 qRw3QkMRVrkinxbgrIGceiEeFsculgC9bvKyW9W40XiFkB0cstLjNAJUu/VU61LJfQ
	 7Lfb+Sg4JuLbeSkSj22/xxDGSyCMH/Ij+qQMnEwnQzxR5tGoUwLMK9LRYYGZT71oqd
	 wDiV7sXCPlodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B230CC88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914543371.26171.708166356646687854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d04209ee7815b119635f54373ff54a5c24d64c3226aa5fb906bfbf01373bc97
Date: Fri, 11 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789145433
