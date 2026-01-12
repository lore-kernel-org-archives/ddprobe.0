Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F841DF248
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768219434; cv=none; b=BIwVc9Bmi+GMoG4fuiG9knAzeJia3U9wFSyfSQPDICozKvzsOvDTcNOV09DyKf7i4/6nE+IL+kbF+yZ+nVUzSpk2G/VW8mmnazaDZvWdumr0y8uYlvWSvFm0U58dnavT5ABl/y3LnkkzXOjo5v3pfQW7RwbbZsMXpN9/zYNvcQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768219434; c=relaxed/simple;
	bh=321XQ1yLbkoVhZ+FYrh83TzfYTTS28loG8lVhmeONto=;
	h=To:Subject:From:Message-Id:Date; b=a4ojMfkXcM+Jq/2b5TgZfQAKQXeBZBKgTd43ZFW53Dlve42B5Gqn2SBoaAX2NCECT2B/qKB6cp6vf4ak2bEmZ/BEZDb1HLLjIuiO92zxzoNXCBNlBgWmVY4WpREFaSOYlUGO9pMvxcueR4AIsm1jbaWqCk0TNY2gbsZglCcctSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=im3Mw+ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="im3Mw+ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC4C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768219433;
	bh=321XQ1yLbkoVhZ+FYrh83TzfYTTS28loG8lVhmeONto=;
	h=To:Subject:From:Date:From;
	b=im3Mw+ruGXHpTuA4GLMr4vNKE3O/g/iAYPYdyo9t+zoyJKvwkmJt9N1KVtcXg5f5h
	 Is5+u/3a1T6dID9mN6CpPXy/1DuHnMSslTUcDXOgFFLAvsZe/mUKsAlCRpigtGtUzn
	 Mdy2l87BIxT35lh6EWXrsre8gsXt7Eda2YJALXtnNFkCLJqYVJfqXRkx4Onle+NUAz
	 c+1NoEZ4Eu0XgWcaxArO4pu5rMaCqONC3Q/ZzRjpJbXc6LTJ+tvXokQPtBrzzex1er
	 Jf8b9Q3ZswU0UZzy+g7eFSxS6Qdv7avuCHup8f0v/l6xk6O3PGKJd6o9rSAMNRKtUF
	 q9vme5dZ0W39Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90156C9EC7A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821943358.23598.16403852393811806405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb68147d0a02747278f8be34ed1ded6f8f208ca5386a7cc8c263c18a14bc838
Date: Mon, 12 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768219433
