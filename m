Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBBD188CC9
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766738034; cv=none; b=mp2KIDjsITpWzBndHjJxKzabadgX1ICTondepC+myG9QkWvJpwjuMwH12Pnlakp0QsyCflmY4vWXw2wTxh5FRvzGQv4EtKw9U0aACttFhYpbCE+UECf8plAWXeCNui5YmyKJ+OJe19eI6F2uSbPku8XB0Mufi58+N8/Ts31QgKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766738034; c=relaxed/simple;
	bh=cXIX6KJUPOyEI/WvHmxqV3b9yKyW5yYobYKQDzBYdxE=;
	h=To:Subject:From:Message-Id:Date; b=K4geHyDhL6OsjVkK2oGp/UbpE2nnu2PknTGL2LVSr73fF0nfKtZ7vDZb1EtvRW5zegVQh8Yna8HtdkDzyx9bCZ5m0eMmni23WzQo5ulEaZY4QMTpRZgWyeyvhyN7K98GjDtYA0jf37ZrR/YPTdjKkloNxTFeNenupL1nz/aXGCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/eu5rC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/eu5rC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2EBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766738033;
	bh=cXIX6KJUPOyEI/WvHmxqV3b9yKyW5yYobYKQDzBYdxE=;
	h=To:Subject:From:Date:From;
	b=H/eu5rC4b3KlLEHg/Di4+s2JQBwwcxnMhGGoDMLaG9VULYbZoYsB9v9yurXcJlihb
	 ReXvGbemako9zVtCLi0VXwW+wy62XGCwrUDp5PZjtOkWk28R/s0eXhSXulVU6KJi9Q
	 cL3eFB1vFf0AXYj1G7/P6LHwTc6SL6Y58d+Wji3wjyC7S87oY/hS8up2p+1wfEPGNA
	 MxKoGHtSFj0dRxDP9DgUAHHjOuO3x+K5rvMNe7LU2uBbZp4f0T0B3S/V+FT3qt+hnD
	 CKEDbfvqqOn9WfFAmA+0cQtX1BJXBU8tsGL260NYc3xZCqiBy3e9lC7hOucLw2vQeM
	 iXoXQbnSJdNKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99970E8FDA1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673803361.22047.7691011429696280012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1129a519125641a0c979a39c09b785d835bcb5962a9a31b94eeb67604f2bae7
Date: Fri, 26 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766738033
