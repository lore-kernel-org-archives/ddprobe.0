Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F10196
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728870355; cv=none; b=iA0SXSSsJPZJuTxZiCNB9zH4iddgOTHpReo75GgtrIuo4iipw6dRz3xa4dnDibor9uLTA7Mg4dgrZXflS8bJJ3RHh454ts6KEfY7wIEFeZkYUMSVcS4CaF9PSNy91GyQpo32Q4+FtIAGJOSKMTHm904OjXXeJX5TAL1bprRUbGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728870355; c=relaxed/simple;
	bh=vOykOhcw30T/OrPtQF10Of/a1Iky6Hm1ikBbf23sQrw=;
	h=To:Subject:From:Message-Id:Date; b=SUZ3PcO5B4Ip9kwnV9hUMjIn3VNjMqedJm4bFY+TH6yg3ci6LzqgpL90phv9Ruac4YY89koI/Wrrzz9g+goMZiddTZFZucHbGP7FQFGJN9I16asTxCQHexA2Vl02gTqnoIPOHmnftH/VkAA5yE2Xgt+KiFefRLnbxZGlE38MrU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nclJtp2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nclJtp2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1712C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728870353;
	bh=vOykOhcw30T/OrPtQF10Of/a1Iky6Hm1ikBbf23sQrw=;
	h=To:Subject:From:Date:From;
	b=nclJtp2mWrxxcTyUHVx9RPKvOqZ8ibbVeL8A9ZittHox876+K9DuD5DmgEQBgy05D
	 mkhcYw6PodOM/5pf+sZ4lyAW+5uZrAjpMZatbNDhkk7xngRRG1XLq4Q1mkvgKEE2YT
	 UZ9mlCcNMIHg2dgtSW9L84lCZGoqTvgRxaos/043nWZWUy/d0AQH2+9DidTHZUm7e1
	 AxUzBvP3MJSVIs1m7oMfH5irf1jIwqBv/3B2yROl7RmGwcKg7PhXWkTar9T4XQqSEZ
	 fbHqvXKduzKMBIgedqZqYmDO51ySSrUq50VMSLO/sLh697RNukVjH8cQYXdJYt2+pI
	 YYQwNMYB0oX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99853CF2591
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887035358.9542.11305039496112515506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3ea8e2a21b176b9a04ed5f996ae0560772286307d0c5f3ae70387aa2c37d97
Date: Mon, 14 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728870353
