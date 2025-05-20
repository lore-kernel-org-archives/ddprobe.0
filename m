Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DBF2116FE
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747730393; cv=none; b=FjNWhpdd50CgHAfUnXO6n5+XTw6K8r0qzBL8V6S85s0fbGbHgLnvTEnCRUFBlyb5CW8I/zR5yrOOD5O+4bexdZ0Yayf6BXsTNFe1xRJAIiSzf6kDZXu3xGA2uYLhOi2XAX+4aOHCm7fzXgk3kpEhBClA+3FiblMJjkKM9TuTghU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747730393; c=relaxed/simple;
	bh=ximK0tXPuj2dvxK3xe6jBRwX2bkzrvvhHizf50MQIUk=;
	h=To:Subject:From:Message-Id:Date; b=l5+wxIXtlCdoB89qOWbbbrrkWxhERHzVj6fjl0crzfkcLznfIfmuy61gs4biuwuo+sOhtocaj8+HAGjoc/RSJEuZ7a8qO62jUpDyELBQeVBFLeP0sIU3xuoZwx5VHk1JAZMKQskbmZVkmScU1C56nBFSE8wo1xmZE/4K26mAx8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJhKapWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJhKapWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4725C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747730393;
	bh=ximK0tXPuj2dvxK3xe6jBRwX2bkzrvvhHizf50MQIUk=;
	h=To:Subject:From:Date:From;
	b=KJhKapWKLUFw2CMqmzPua1NMlK801PW2Qwx9WgAEx/vIxi1hGwuCa7lI1Mp2mek8l
	 NVMUTuCukv9/7h4fDWoJkqpmj/pbHRIbScQcmvqlHDWC8DP9xMrnPIHkEwfRGKnusr
	 aMnppWjNMKbgILMRwyJbGgtVlGZpSZ0zHFTcvE75S0iYxSLQrvaBFMmaEvulXhPFnO
	 rxSQfbK+Zs4RfoUWP4sXLgjGZUoIPddB/7Hxl39xZNsVcs0qROEM5KQfy9XjeoCyun
	 mWJyWkjw5iS86zsAhCGvvR7WsUuMHPYVySZJtST7YpdQTsrCE5+xiK49ioD0S2+h8w
	 zUnnGI9GDzvtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F44CC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773039357.31585.9636420561431390634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd0219f64f4435c80ff6437d636a66b15e8da5728a9198d562ae87c86a98efc
Date: Tue, 20 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747730393
