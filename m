Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F641DDC9
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716833663; cv=none; b=cpcYxZHUj/85ht3INpaRrchKWKqecMzDBsrzA8t5s3IKdBu3ZsBcOG0eYxOPjHGfcT6LhSN3SqgJTkQtELk9qnJ7EHtJwhx66eqfnSk+HpXHpGTkEz9mSo9bcFWcqPx2mNZKENRb9tDHMIds2TdzAFoNmHxCjg1IUoCyl1RG8U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716833663; c=relaxed/simple;
	bh=Uk7nqycuqN3miZlH2FpvFKRU5qCaQRpPj1ggC2oUKnM=;
	h=To:Subject:From:Message-Id:Date; b=bLpeePrhroiVviIIbf8Eh9oVxIXJGw/XrtagC9k5IL0JOs7E/wCbCeTeipd/UnEV8uiPFD5Ta1TYYlbjHKKA/fOKCKh27R6cf+Ni5Ct/uZ0euhdDggd0Fw2+jMK4uSVL8Tb0Gm3MFdOZ4cDrmiqtyNRv7fKamJZA/wxv+jiF8P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDVLn0EI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDVLn0EI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F08C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716833662;
	bh=Uk7nqycuqN3miZlH2FpvFKRU5qCaQRpPj1ggC2oUKnM=;
	h=To:Subject:From:Date:From;
	b=ZDVLn0EIAzB4J2gVpo30EwjqG3ENo7zPs3mF/pZj0eDCH5DhUZfe4nVVmqEgIoIBU
	 k8wHAqr96DskX08VyBshlDJanWNdS1DRPPHJKXGziWHdEFcf4GgIzrhs5PCulXy4Vo
	 +pLv9hemTY9IDQsbfsr4SiYslzBb88AQmzJvFuG2UH64t89w+rsJOQdYmsN/+ZC093
	 i+OUacuu8y5qedVa5DpalV2mmUa4eG4SAe3uri4C0RiIaAntQPq7QKuQaKtmpXf8W2
	 Mxe50knL3DI3O9+BaFDEw+vyhRLcV4GsKfEemjzfOvtn3em5Dz37Y8abSV4jMt0qMc
	 cXerq188cBISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9FFC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683366276.21784.10397401932181794898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab5d7501d82506e00323aebf4d8cb9d67dce0fc90257ae6dc5eec20149330f1
Date: Mon, 27 May 2024 18:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716833662
