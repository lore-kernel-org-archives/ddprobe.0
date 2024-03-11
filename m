Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B42C79C2
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710136697; cv=none; b=gLKOacmSK9V9zFPS53Grof+TxUVyMos0acLqTfBGHylxpnotVJqoKgrnJBlR0WrOGmJacOTYWovIEdNZafG7PYeCrliWjwrw5TbJYMNsEeSk7p8Wa3y3jEg1BtrR4bfxfm2b5HMGrHi1xGTwiygNJnJiJO5yNJCwZN4cFnTJW8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710136697; c=relaxed/simple;
	bh=NUS4wdTZTeKYQQbPpi7HC6uXQruffYO0QeKZWXs/eZg=;
	h=To:Subject:From:Message-Id:Date; b=sK8j0a6goH4aPwK+wCRTwSuo+Y55/K15+LPGz9MSOiIPcL1oRwEc3Xkm1qnTcZs0tgfHGPKFohAYMhdOi/z8JhOO5vJ/B+P/aWcwgZsHROCzw6rZc3iq24R0f2sjQnHb7hUPLEdv1DNljcu3irYZ6DpmKiGVtNKlR5i92ruV31s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnNKKraw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnNKKraw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C01DC43390
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710136696;
	bh=NUS4wdTZTeKYQQbPpi7HC6uXQruffYO0QeKZWXs/eZg=;
	h=To:Subject:From:Date:From;
	b=NnNKKrawB1IcIEZEMlq6/oMgmQyWuxFJhi/OiEB3fY7OrBlndMYKPyznq0H/NHa5t
	 4eJ0m9ZXdT+LBJr8v1VvScfwASp5w0ot/7CYaEfOhIrhIen7lzKMNFaZ2fyX6feTOI
	 sXvAqxG/3IpYgTorcRwSMrNcuSwPWiB7xmzOz/HVx0qlPIv7BYUUkOE5ThQ06bwDl+
	 NO/J3J2IM7otFUtsy0s0kokwAYayx9G3ZBPUm2pEcFi454eXT5SmBJCfhaS58VkZmW
	 28ArXrBmHVa79yD86TMMa61bPdidejTTMIasBA+HWmP6YMXWPhg03afy91cNxkz3SK
	 fjL9Hk4pfH82g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 713A8C5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171013669643.11872.14184673281267453497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401b37e3ecfaa3de37564a2cdec23c96c58dc8a5ca50fa3f35948519c67e8817
Date: Mon, 11 Mar 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710136696
