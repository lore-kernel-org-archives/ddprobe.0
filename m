Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103484F1EA
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710021497; cv=none; b=U+/0nfQh+kIEn08TbusXpUblNaMc87GrfuLPAs8zm5dRAl/scDnBIiS619g+8uX5got9jhUVc87DtG2/+Ry/WOR61yI5KXXb2KqfR2W4A4itVVVL1dA8QM1as2STnEOBT4QLiqpENoZUvn5RWNVcxPxHj1k7UY2xHWgj9fR7TFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710021497; c=relaxed/simple;
	bh=R3tRCa9szsa0AUMonnM1PorzCv0KyI+eDlRpxwf7Uns=;
	h=To:Subject:From:Message-Id:Date; b=u+pfRe7qmEeXs1yCf3VV2tWmx0kiWteQ38bUubj34/52H8sl733CYRg+rXr7zEkAjggv8VQr7+WHUXMnEU9UMgEsL1pI1TOM1NqiePqY/2jyYP2WnaSfohJdrva1OxYMnf0UE4SQYy0uEGsqRo5mj/oOGYmIW5O3GR26r204D74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9nP2WCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9nP2WCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87621C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710021496;
	bh=R3tRCa9szsa0AUMonnM1PorzCv0KyI+eDlRpxwf7Uns=;
	h=To:Subject:From:Date:From;
	b=l9nP2WCbzGNr1mBqHSuwci1UkDSqLMRLWk/sk1H9+0izs4JwpkYKT5XmfItdVobDO
	 5qOQ7iOlx0fGhwhqaxQyjwcywk+XiKvqAhCxb83CzPL6cq5P4lxnHQvLM2eSR3LC9e
	 kfrFueCM0EsChOE3k/kbkwj2R3TghmcwDI220BfsIe0LrvzsTpukedQ2hZ8CrhNbV8
	 DTRkEL7ypKw+1S6LarASSnWbyrEmH/cDuzgAXgBAZ7H4oMyVGrb17E44R1wBJOYFmW
	 D7Crh04z3tEL6w0+kWCxzbS3kPYnhNb7oCTKkaRa/qk16Cn0b1UmB590sOK+Brgv7t
	 lAdxBinpzm+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B17C54791
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171002149639.32616.6357385165332249902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d4975f49ff24224bbdbfc7181949fbd753ba82a0b9c48dc3252f6b2ab49765
Date: Sat, 09 Mar 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710021496
