Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDD114A84
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722750954; cv=none; b=MJGKa8CoUPmmDCECpaCCeDr2qwq9g6XVwdi0LsrYZkT6a3UZCEIQ44JopC9y+oiIClrfU/v7tU017k7zhEPWMosX0aXOGJaxBKs1n1J4C8vF9VyjVy+jHR+zaif3l41FufLEEJBoOCkPE/CT9S5HXDkMLtueqsKZ5vW710Cznfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722750954; c=relaxed/simple;
	bh=u4oH1EMEkGI6k5JeOVFKS6k37rdkCcSaHTpgOF+BW6g=;
	h=To:Subject:From:Message-Id:Date; b=Qxta7ZK0o4MwgoS0Qx5S3RofpeNqTThelyNn90uF2s5TzkejRcyHWgbPsWf0clkVC3KuLYG4fm/8Rq25nq9KcZREE4ohlmZS200dPtFXZHDam+UUNV1grmt48LZ9ZfuPWZyF5pPvc8JyoRqqAZoPMz4ZBphAC4NUx9QdmhZm0uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZByanYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZByanYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7511C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722750953;
	bh=u4oH1EMEkGI6k5JeOVFKS6k37rdkCcSaHTpgOF+BW6g=;
	h=To:Subject:From:Date:From;
	b=bZByanYVcd1LtbSZnmM/jMO33JyVI7moCTWadJjyeqCQypReSmhgw1NU+JmG4MxMb
	 n2LkptddgIpE2/7uOO6sveBRhsxnaLk7VVWR65G+G92xXN4tiQJe3803Bsf9XQ1QHM
	 Cas8fk1/Z2Znkrcbt6zOh3RFSsuDUxVL5wTueJdbHD6h9dskfJcJWDMkaoxK/GWsrn
	 nqXD01OczbR/7lvDcjlLCaEm3x1jiwYMH7I7dM1Tk5S19xqzZGLxtV38FBq4cOn4TL
	 FNkE/JdVT5v4/cf6FzzCH0cBViijYLOnRJinnzMhSm6bXAkKvbRvW7wZ38LbTeEuGh
	 IzSvDk+95g8HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE42C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172275095361.18972.10452698433252160921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e23da5306681aa6df7d62f7e739c48d31a13f77632eb5ee0ecdb0858bc96b4
Date: Sun, 04 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722750953
