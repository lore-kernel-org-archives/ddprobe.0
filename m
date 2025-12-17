Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2565529E0F6
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765997034; cv=none; b=V55Ja2A3V/HlFDFM2BK3bmoVPhhnGQrE7HGIngV7OqqwP7HLVsKwwk7hY3Rh5nrBk4t1vbpSTWlbm+3211r9AH2DFBSoXjsnmgzJzS2px7mU7muBb38spGc7/yp0v227XlQBRh5dg9QfVVT1fsRKFj+j9thw0FSE600o0Vs7orI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765997034; c=relaxed/simple;
	bh=+OS2fbrHHxUuu8ggORYz77VY4dKtfuR439uH2PryEzM=;
	h=To:Subject:From:Message-Id:Date; b=fVo+4MPlEeg+VRMT77fmq403ew+3DsAkoxdQDwuz86esIKHc6CaeB3ibc0TFqwRRFwRjLLGSHTRHHECudVsg+4T5ugILhEYj0ZZmYcCaTdDS1ZAKYiS3FOtyic52Ndw3rSG+iYKr2BwJNX4+iXQFGkUEsOf8ltvP5TcjOTLqWW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLKoZa7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLKoZa7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABEEC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765997033;
	bh=+OS2fbrHHxUuu8ggORYz77VY4dKtfuR439uH2PryEzM=;
	h=To:Subject:From:Date:From;
	b=XLKoZa7NgQZJ2h3XNsE6vSTuoocq4kSewNeSGrf1xSu2lMxm4hXnkOfdJY/t5xTfG
	 8TSW+IF1PT6rzn3xJkfhI8iW2GSw+UJk/qiUqMCSN2QxBfWdhED61IfGvUZs/YkXNP
	 of2WJsjZe60nwLRNWoAVtj8QToKmA8dqOZaLm4JTQQYoexqmGehq35VNVnl8jJBWNe
	 64X/oTA0Fra1Twkc4Vuh7wwfYZFNB0f5Rc5DxrWBBxcA3jUbIk4AqUv0t0TffkWrTc
	 inG77oYgUfJlHHMndIj84AwST7Hv+W3S0N84VtEvcON0VzKD7jr/gnpjzobYlF4xNf
	 Rqqg7TowsKd1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982ECD66B86
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599703361.1945.3706977293602372940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac63199a8b43022bc28d258226c8711b54b18269244d34626e53d87620cd4451
Date: Wed, 17 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765997033
