Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A56322B7E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764963174; cv=none; b=lRYY/1oN49IksjHOkmfYAJM7+1Gmr+8wHgF4j/st6gFI8qd3bAbkDdK/i7uJptRVQVnD1BwiSeruWWCabY5P2eVNWT0xmGYk97gZLXE1HB8rj7BUOk9fF7pVeJoIzeHtqNnxxq2Zl+P8qUyZWfqp3QZ55IKOvIr8vdI4E6mFtG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764963174; c=relaxed/simple;
	bh=EZ407PncuLpUhf2YtDiqiAXcKL4xRqHkYSlxxG1XmTA=;
	h=To:Subject:From:Message-Id:Date; b=WpsZdl7q1n7wL+QHSHFsmYyH4PIkFFp+M/yzU0RINMqaThpHQzyixxWgszPAmZJXbW4ZRAkwzRRMP2ZYtFoJ3ko43QjLuLAXMOXn19Nj78JR2bqgvnOpT1hpUnADzKGZ14e/pNghibyuW+6G7xl1jf3mBrixZGYPWgA+FjGXj3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwWXv5MW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwWXv5MW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D68C113D0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764963173;
	bh=EZ407PncuLpUhf2YtDiqiAXcKL4xRqHkYSlxxG1XmTA=;
	h=To:Subject:From:Date:From;
	b=rwWXv5MWdtDxmlHxt3Vnryyt5gHbTDky26eCsyg3q3f7YSWId7/85jAWkH7GWt2GE
	 Nku/8Zr5yOAzH/oVaLk0JfvOFsNmwTqnkosiJAU/PjFUd3F1Ve4YWfbbg68UWlv3vl
	 PBTegBWLFk9q52e6IvoSgVqQUPhyt+5F2elfz2iW0KKXtOM4+zBI6CnQMML2r9sZvD
	 Rjvf3Y9ZDNgyWRExtEgicFr6lxqbtxrwUT/XyMW4gAs1fxijxKYw6XgIHYK13R2tWq
	 dXu4fqywk3WLbSU7OXgXErtSoKeTAtD8N+O+G7LmcxaC5URwHa+WixaW5gQ97K3uGS
	 m1pB8lJVKQ7mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F9FD3748E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496317361.30735.13252632488452806588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58935dfca4e4f8aaa6aec0a96d20379cfe7ecbe0eef6a91401c7b61cf61e090f
Date: Fri, 05 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764963173
