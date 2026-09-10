Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9799345562F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789039835; cv=none; b=k2LHpdxWEJWUdByo3ED3EPVp3Oqxw4VAynMsxpVTWUfV/la5SQubzKleBJ3z9JKD33cxQslOD45R3Kw0lfD34me14bDy4bxzJUh9/lJZT2M7WYlycDdofyx2fG0fqu13DtjKWwXBKlvyZzOJgkYTrzcZTXmwOFtA3QsHklvv1PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789039835; c=relaxed/simple;
	bh=AP299YFkSpHc9xfhHGZ2cskbpmunVtdDFEGTTaD1Ao8=;
	h=To:Subject:From:Message-Id:Date; b=cg7XsfvOtZp0vF1f5j/orv+n7eHOrxUvLhEjdNNp06sUD908gq9OkVS6gCh1scdsopaiEcQIXkLo3w22nOzOI9SWqbVWr8sKp4ll5Rcg3LM1qJpbfdCt9+zsJNkN4LAohHzaU7JvFxJiR22gfGk62hx3aFrTQWkvCoA0PE7/4gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbuCxN0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbuCxN0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD24C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789039833;
	bh=AP299YFkSpHc9xfhHGZ2cskbpmunVtdDFEGTTaD1Ao8=;
	h=To:Subject:From:Date:From;
	b=VbuCxN0XjFfrxEP1ud7gYt+CWLb4+jhq3eV5TWQ68hOe4yKm7YVRybpgyMfvwsckg
	 h6net0ANLgUrfr+gMBHUwEplo71SQRa3mdCmZoK25hEKqsWKMthCT7FNZ24AM50nnh
	 lSpC5Z9Sthkfee4wusRb4aIlVs0AvAnR0Uyva+HpcqmcEkmhev5yxo1oN3ykdTHWWn
	 eTtGfT7EP5xihwfijJ4DC1z4DYwxcf6qxks0ZPosZbF0NT0574M6/+lav8TW4B9+E6
	 Gvmiii5fNrAMn+tc4+lrmOQbs0gVcfMGDfgmu+NjIGqyixLYWd4MSf8FOOHVFgUVk6
	 PjdEt937sPKRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D99C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903983368.26350.17492177028941026911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95128cfcc50ccea98bbddf97512d5f5e45520495d5f0ba3b03e60d94655dc98
Date: Thu, 10 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789039833
