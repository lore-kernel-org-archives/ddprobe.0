Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D88A279DB4
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767653034; cv=none; b=fAzeJm3+yHlJ2Tob7KTp2zyLLZICrmVd+pTF9elin2BkgLxs1OVj/y3/8CbEQviNoP81Bip5ndEGAWYiCv+I2RxA8T4PqXg4HI8k5b/gcKb+b1pmVkaq+IVIS2OCvD6jGsfJGott1JUFBVcUi+vYnDv38TRBFoJgwTOO3N669ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767653034; c=relaxed/simple;
	bh=EY9aFSyzkucsST3tj7KIhtgFAu4FbptH6JwICJrnrJg=;
	h=To:Subject:From:Message-Id:Date; b=HvPNDcQSCT9CjsP+GW81NAN+9nO4fk8DwQMxR91wQq1BCII3s+qBMw2uFFK2yJc3ffobP23ObpxbuL6uG4dCSwg+Bsq/m65wc1FZYg2oYPnxFdOQQvGGLn+HIstId47Z9NHi3xiELZbessOaMbwrFbRoffyVCoN3GHCUqHUdq6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9GMlZWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9GMlZWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF7CC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767653033;
	bh=EY9aFSyzkucsST3tj7KIhtgFAu4FbptH6JwICJrnrJg=;
	h=To:Subject:From:Date:From;
	b=U9GMlZWD6QHPw+A3MvSEAEU9oleAnobsCSawdayrRQhrWhhDVT4waxM7H4v6W6aPe
	 5weClnuzFbGkCtceKebg+cFoLTtl4Vz/ePGb5eG+8J8IEIa9eS9/3HH4rYFpKrptbQ
	 reKHNWUzUA2FQWi2VuyYGmcuiRJmXXsW5+04AlXvmDpNvrCvhAmPYzXLrqg7+tYsup
	 w76whB0FvcdPata6ZlNWgB3HGqeuiEqTm5+PFM3zpuF85Oz8Yxq0Fq3WItMQIzDxEd
	 VKiv+9d6Dek+v68nYxURpxropN//SgAyflBJhNN6+P1Ffg8CSt2DVqgvkZVQ/8a+kB
	 ZEbYQaZGfeFsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF31CD0420
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765303357.554.16434927782693078188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0387f4b387b9ba6c5606e2d499df01af7e181c7af135093b13ff5c0607e7d4
Date: Mon, 05 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767653033
