Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D75879CC
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719899123; cv=none; b=VP6KfAQFzPdxeryML+keepV0x1aRwQVI+ulMz4VUB+TEgNef79KoGm5fPn2IZAzImld+jvkwdGaQYiKTR40jMjxfbWxzrGsAjpo+TXcf6dZzcQrI6aFhykr5QDjDH4+Qrhz62WCVg4ddWQiJi3DJyaRDiPVMJ0xg37a6j73hRFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719899123; c=relaxed/simple;
	bh=UtJeaZFFzPgE41B3OyMgJLakvqoPOcze9a0l8FK0hRg=;
	h=To:Subject:From:Message-Id:Date; b=Z4iR6TlQR7zd0Sb+l3On3jHyYmBhQ9dzX1UTXewUOq6Ud3JDRF3vcgWcyf8HLQVCiH2fNNLdB7ZI+q6bqids45pdwB8rreBKdoSl3qyBzxGRZX7QiIEOMwTRPX1FMw/pmCRW8K1YoEpHcrWyIiTE4wbjORJtSnICfKdIhL5N5KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBFivxVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBFivxVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AC3C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719899122;
	bh=UtJeaZFFzPgE41B3OyMgJLakvqoPOcze9a0l8FK0hRg=;
	h=To:Subject:From:Date:From;
	b=uBFivxVtbgkzHHhvZieqZ2xlgYSpm0p01VIjyJG0Kd2Wf3CrpyvInbB4qXbnTh/+r
	 UBBnilUks9wN9+liKocz9uA1I/LPyz2JWoS176WjfOQV3HzuaOUjpOc3qOkhkODZj2
	 CmpbpRakQNQRPpodCcBxT4V9AqCfIUKucpw42gvsouOnQcuqEfha5OIaZp7Tbe4imJ
	 Dy14Y29x5SU4e/hL4NNaoh8saTLomrtR09VkGZsF4ksDALsmIQby5DErb8ELJbDgS+
	 1LU2u79AQ4tENol1gcT86CzRFLF1d5/fbhg0sdrmr/Ffmb4oskWW12zZB2Q/RBW0xm
	 Lg6tMA24XQFFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C3FC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989912276.8144.10079286808533710055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df877b26f21ae013bfa1a96274990f157275159e9bb9bf9d3aaf4f3ab0c8c41
Date: Tue, 02 Jul 2024 05:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719899122
