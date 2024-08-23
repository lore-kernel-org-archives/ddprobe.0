Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CEF18E059
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724437554; cv=none; b=e69Fu7DYcgpu3g28mPZ7mK3iD4X0oPv5tbRR/zrb2ulsZPuMvbn/AqPqDFTzMLjr+4FeL4IQsTQ3UTv3cYCI3RCU8MMAePBS/26V5X0YtmWY/3iGXO1P7wBn9RM5SPxl0XgMUU+wt9/tiLK+dKq6FXTWj9DR6BcraB2WdvwEmbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724437554; c=relaxed/simple;
	bh=hQQrBhXnAd4112ar6KSr4Qvx0Fss+wEKOViM2p66A88=;
	h=To:Subject:From:Message-Id:Date; b=ir8+534+qxR/L9aIRnjW4fL4rTAuToNJMT8NrXlcE24zQWXKQGxy5zeHTwH9MFIKW+Hy2Y16woec9+NRAkKARFy0NA4U4kpyiUaB6u+mH+rrDxNiaek6G2zCRQeilCP+g6aXIxgMLFbyAOKBzwFPSvQKXgln//5ovckV1vpDqpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Adq80RbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Adq80RbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CCAC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724437553;
	bh=hQQrBhXnAd4112ar6KSr4Qvx0Fss+wEKOViM2p66A88=;
	h=To:Subject:From:Date:From;
	b=Adq80RbL/m9ijnf52eSa+nRGv35BDaCY4vX/dMkAEHj9IfdJ5d00QLGX4Z3iMNnrT
	 5A9HO0vbXY7c+m3ml4qECxWAFATI/XKS+ENX9rTy3O271PuLhMokPk03LfbC53IK2Z
	 yCz3SLq8E2i8kI+/3wUF22QK4keLKa6nXRs7b3WZmdpCJA/B7nv5JM59b31bvzg3U7
	 xe8vdml+1JjZLjMfqyFg6PEDQKvs29BJivevcZbbmhgL5eA/+Zy2BRfz0oaLvs8gC5
	 HAklH0kcEeFS22ceFh1aRE5bT4At7FO/6JQBBzMCQIzQq1EdWRClmpyOn+NhV9hVdb
	 atq4IItxtEOZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95651C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172443755360.12202.9379811786982498431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85690cf0594d17639bbe432187d82951b0162eb06ee81f4f49c9e60806515471
Date: Fri, 23 Aug 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724437553
