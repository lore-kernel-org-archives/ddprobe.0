Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE6C149C6C
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 12:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713790223; cv=none; b=nevfOGZ8eP0v1sSzQ3Wqp8Cl3G/x01ztn8zNzGtT+fQ9qzmXLy8OsjKECYyqbmTpRVM8f5ctf+0NcAIb0b8hztccCCzI8qCg/3tttTf9Ys99JuvSfi2F5khmlWzvb1LNuMTQPIhiUyUJWm9cUqbBlMH/ouY8+Mlr37ClMfQx1tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713790223; c=relaxed/simple;
	bh=GfbsGaWNvkZ5R3uzxSUeJ5AjygG03JWQQxrokoagu8c=;
	h=To:Subject:From:Message-Id:Date; b=dKojzD8/buAH6Vys8TvSdlh2G8QUUBS84uOgB5swBU54PKHvnoVhzelYpZSiV4/dDRAgUayIx4egHsgnJDrbfEwxJ6f/ey2mWkx1bnAvvIZYzvfY/uPbwTeWi7Ezus09kq6vxgX1K/OHvyY1uwIBt4yITQvnAQPgUlxYNuKPA8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tpr87TQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tpr87TQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22AFC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 12:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713790222;
	bh=GfbsGaWNvkZ5R3uzxSUeJ5AjygG03JWQQxrokoagu8c=;
	h=To:Subject:From:Date:From;
	b=Tpr87TQFHEqE2ALsPjkhOakfDNzsmhdlezbFV17rpiWPNa5l2+a7YLEgxF4vSvH5X
	 jWIx0OV2xeIRHpsFC95b1gGVw1q+0ZfyKnc1Sx7GolFHA0zeKR1gRF1EvvUOZNCqdL
	 7glKpYPBI3LkMKzxJHeWn69zQ6Seu1SKhpTiRr3+mSDAtM+wlvsNKD79PJpHCoiumy
	 +dqOuKDHRNeTVNCfCi14++z3SNO7q98o8HB7vQKXP6VbljWEi2qisp0MlySUY4wJJ+
	 GEpZfZ3jmNFTOJj+HSG44R+1PEWtZql5XLJXUYFWnA3HrVlauY332WQP2uh6SWmLjr
	 m82gFApqDd5/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9CEC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 12:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171379022276.24295.4542999588041380675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c81cb8b1b776c9697365823a0ec2148218a37f6ee60886d9ea9b53c864a5895
Date: Mon, 22 Apr 2024 12:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713790222
