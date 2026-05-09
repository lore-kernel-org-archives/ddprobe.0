Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F275C38F64C
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778318855; cv=none; b=DMFdHhgXNmawqsAu85+EP1hggWoi2pMwxry7MRQTVRsA/63TuuAJlBvSSzaZVOoD6RGSKvrg8KHvWDZwtuYAXZo2ftbuIPJUK1SSR2RNPjaBLua2ygAX4LZdtjI8Y0oCahvwu4/SRCn08aRa8/8P9cs20Pw4Wbdy5ZpA4x9pDqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778318855; c=relaxed/simple;
	bh=dFs4QiwmnyHuDdw423rQxtYMhW9LWRwdXQaUE/MNGbQ=;
	h=To:Subject:From:Message-Id:Date; b=jxuCu5e5Fwu+aQxmHzzF3Fv/gQoDAZoi4HL2ktefHsc1JS0TkFvJKmVLKqp5SUBfaLnRdaxMin6Z/TSEfkaxJFYJXfH436fiYCXsEp7IBLQuYkz+8j0WXGLHrBizN/qs3kcjNYz08W1LKo5sKtPlV8M2XM42SNGDL4/epaSArkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQ/Ua+Pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQ/Ua+Pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A5DCC4AF09
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778318854;
	bh=dFs4QiwmnyHuDdw423rQxtYMhW9LWRwdXQaUE/MNGbQ=;
	h=To:Subject:From:Date:From;
	b=IQ/Ua+Pbmk2VMOWXPy0x4xDSL5LaR3N6N+9vYcTHYGUbkzJpyJVCKkgccTW/I9Z+r
	 h+blvWShXLtJ0mqtp/vMBW4wMcZUPsEa749sDhiq6PWcvqX7ZRUkhWruTqCi34lZaI
	 YgVh1SbIVFQS3ljVlJ2P6C/pTxkH3E4l2iPaTsQsw0zZ0YlRmGBjXVQHhgAfpblrFy
	 CiyZHGYpZEhGPk55gnAYRQgDtXvRVrJpz13V/AT131631L8wNOU602wtIVVL2bTWpE
	 PlU2ypqarepAzVejpp2vsB8l7ReZovk+eb8f2tRaG2vQN4bCtioHrnihCQPwTg2N5D
	 MFma1aY0zAhNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 016A7CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831885392.1678.13819649522080567101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb077f46d955c2f68bf52f197b3059eb40b3da67a0df1059533a03cd4b08fb6
Date: Sat, 09 May 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778318853
