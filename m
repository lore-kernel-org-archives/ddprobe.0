Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3AF25A355
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762076994; cv=none; b=lnFvCrNRTqAzvO4/iadx1urYeDp7nKy/n4DnVJYFQHAazNcf68PhlXtVOAsKcyH3fXa2MyjOzV5+7s/EUnBXI7oxLeigTV0UWPEzFd0hZrP+naSBVVieW+RiNjAANMvmFPodjt3ed28DQmwJQsaGl/+rtrEypU+nhYP9W+y+Zgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762076994; c=relaxed/simple;
	bh=EBhamZ8d55y+u/YJ5mUKYos/N5H3O+ml3dkJFIB6q1I=;
	h=To:Subject:From:Message-Id:Date; b=swoO8AAq6i52UC8+s8USW1QbKzBE3uQY4g0tAPPs/LThMex+tuuGQ9kbhALWXmVF9O9zO8yvopqBUQ0577CaddzIkZWJ0D0goxrsvDghB6lAaif8TAA6tvgrwSA9eKbv6QqTZeJxaalRXgG9TRAV4aZ7SZbyWZNT7YSXF8L2N/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Om/111C6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Om/111C6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F3EC19421
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762076993;
	bh=EBhamZ8d55y+u/YJ5mUKYos/N5H3O+ml3dkJFIB6q1I=;
	h=To:Subject:From:Date:From;
	b=Om/111C6oj+GpUe6mx0U7CZIZ+rez2Dqah3MkuL7uXN+ch8d2Ik30P+qRCoNY+E/N
	 5ZVKR35XISfiY8/7AMBSdh6h1XxIGShhFelToprpjGeGmL1rZYxlmLKvJVxaw7vb08
	 7K5ij0md1Jufkr7W+SzKPfVmTw6Fkh9aSCbVaA6+e4xC/uZRfQFjXQx55eWJep+hor
	 ICFDoD1o08sEACHEdL5oKuK7IRzzaswrvKLdg8c9zqs4jpu5W+qJ7abh0ZIh9DbTps
	 uzCyqvzhETtz1YNV4UO0b6GxmC/+iuv4FAHfu+3gduu16z8/PJWnsnkhqhTDYvIA0n
	 KP+MoLSJRLdDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E14CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207699364.32340.15265696923350832848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217cfcd08675ff135bbe617ebbb2285856538934aad37a1ecaa82399c7782236
Date: Sun, 02 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762076993
