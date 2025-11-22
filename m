Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BF12D3EF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763787714; cv=none; b=Z9/6p6KrIoH50yRV4FlaSF4wdzE6eBjMnasqVRlQ5ukflszuF774BJqhJRz1ZzNC9gShaDTmP4TSYRCiTom4UQhCcx5Bij49+tfAnUuai4nS04PWTUPowo1y+dVWcp9lJDozD16dsPC26abyo4YDLGlH7r/Lu9EEKNZTyKIvJ3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763787714; c=relaxed/simple;
	bh=OVbA927fjJAt+eRwV2v7ZjSwgFMECwJaLMjz21UiGlU=;
	h=To:Subject:From:Message-Id:Date; b=peO38Udk9i3kLdE+Jpn6pxcK5OGkDPZ4JfWNScy+iU362dSImJObGQXC2/z4QqAN5k6O5w0WnPnQKI7e3Z9BdWCegG9b2QvsTAL6yXN8vq3T7mNAawHHP0Fg+bcYj2HZ0DlYBF2Z2/Ws9wKq1/urjcu2g5YWpo5RsbILfyoEMhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+7Gcid1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+7Gcid1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29A1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763787713;
	bh=OVbA927fjJAt+eRwV2v7ZjSwgFMECwJaLMjz21UiGlU=;
	h=To:Subject:From:Date:From;
	b=b+7Gcid10WARPlNKb7vB5Z3I6B4NZo9wxU+jKzz4kNcqCSfuZ8K6tid2i4RBReC/Y
	 GnEAdNGVtFCbieUhnQLTkQeZIAmJDaWfhSmCkhBf2w8Zml+6NyaffbvusHsr+YY/GZ
	 GUQ07d5nvaVxFgN2tcsqBzXgNUWbM6MkZyy93yaJOZJ57TZYNGCKVsgv3YMPthenEi
	 TykX1QwTF0wNkN/zMwlj6WaXprAptkYFtKXcQV5wOl35Ajr51Vhbgg2uHg4eTR1Oc0
	 Of9Uf782pukp8q8eJa4YYrcABd0q6iIieN9QBgVf80v4uxS1uX2VKElIKfKPfdI0ka
	 EXOQbh0+TIwGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FECFC50C
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378771358.3338.2284103463312942955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70aea51f02ca66cdd7133825c8f00f478f4d5a33fd496684c9cef515ef52e975
Date: Sat, 22 Nov 2025 05:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763787713
