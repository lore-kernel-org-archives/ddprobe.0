Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9EF238D54
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776527854; cv=none; b=V8uJXsDb9G8jtk2JvSVlcw+nauYYf4LOhQxYNx6QMY0OYYJDruajugT4Dx517dG98JaAp381+PcEmDsFrZDlbbTe28xvrF5MXulbYNFI7YrFfwIEAW+p+wRp2KXfWeXm4YxOnxHUYHjez6N1izgVB5ip9NrU3GicYDbgyJy1m6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776527854; c=relaxed/simple;
	bh=OWseQvsJZ2gSDikCLQji2Esf8acgf8TxdkHRjooWG8o=;
	h=To:Subject:From:Message-Id:Date; b=g9ZX/JbbwRcMA9UZjA3CngFdAJtqX77ZwYR/E/TIg8OGB+gYFSrjqkYwGmLovaHp0y9cQvjPpWxvENmpy4zcOO+pKhvRZ+3ryoBKuj+8Ep83XWEAF6LbASKiMk//EAI3EzNUK/+wa2kKcjuAsXBxRTZa/9hG58WYmYq9ADpXqgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsGI+hat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsGI+hat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC748C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776527853;
	bh=OWseQvsJZ2gSDikCLQji2Esf8acgf8TxdkHRjooWG8o=;
	h=To:Subject:From:Date:From;
	b=rsGI+hat3KgaU8soc1vtVt7eNhJMSz5FVym6GdO0w0cUE5a4NSAA2+gxA9IwVDVgf
	 oNnfR11I3pt476Osm95HqoBF6EFvlbfMwE92DkKaHt88x3uY9q8BV2G852Eu5amiPm
	 o4LLJ4XERWKrGCwy+EFvpdh78yE+LApApLEfHqpxfKbm2gA32lau0ocezNwxW8ynVs
	 7W2OJl0oK1PuzqpWOPW3tlB4UWImI5lIJ35vFjbsKCzf0hN4ikgAX2IzkB3up/cFPy
	 fGZV++4N8hnEIZ5EbdAxyG/WXnQOZgYppSQAystVTGm9pER4RgSQzvda2JH9MJhNU3
	 15eqQhutcRVjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A935CF99C88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652785368.31075.5209732439095516635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfab37559f2542c0f2cb77c9a91f0f47fe1236f479a0c0095c767ffed8b53483
Date: Sat, 18 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776527853
