Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4775531F9BF
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775172934; cv=none; b=PeDDOofOuEZLarIMWTbHcBN8WV8XtZWk//cJ3/bQ0k0peOCBCckvol7Mjvig9Mf9Jq/lhMHh/1YWfAC1ACNDudHAAXzys8ArETSpG3YejnUSBwVukGBeVekLKUYbU9VUUHWrNUeuVjqATM5gF/bDBKOg7ePSaDaGojgdHpfoLvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775172934; c=relaxed/simple;
	bh=tl36W4IxYwBcREYsv0fANIzCV9hijVgEqlo5wYtDG80=;
	h=To:Subject:From:Message-Id:Date; b=BVi/nUIF+J5bSk7up4jNsgbpTgwSr4rt6pQY/v7QWqJdKqHZJ7m01GWa20bZbMqLNqbzXOB57kn4l8FBvRciFoIVIMFsa/h0/Kx/1ZMnTa/MGb4+QG14hy9D73xRKUWj1pGGHzlxYfv48dD9kTF5yFAdvjDQd/eywkHf2RJ+XxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNW4BbZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNW4BbZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8F6C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775172933;
	bh=tl36W4IxYwBcREYsv0fANIzCV9hijVgEqlo5wYtDG80=;
	h=To:Subject:From:Date:From;
	b=MNW4BbZT9nnXFa2u6V367pPiedCJWNFB+hUxTmKVzqiUWiQ6Apju2f5FxEs0f4vKT
	 llU9z3BxZYTlKT4w/M/V78XNRrIF2XXfSnJ7XDsOD7HJpkZbj0Mic2uRu8ty0WMXMX
	 0jCwy4TXxPpAm9tG7FWCSF86vKhJdwfXCCnIWJuB9WeMGqTC1IH7VLZs8bR1d3a//y
	 y9j3BZAZrUzObmdORNAHkjgF3+U3z7QA0TYrb2LgGevpyKD78ZpJU7QrxN0KDxcg7o
	 HchSqqpnmM7XErrt1HYNK5F/VAOwZlS6FD8jysSwRFVZBVjgIjTN9+X4r/JcCI92bg
	 U3AWgKHys9u+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BC2D6AB10
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517293368.19712.4113250443625653606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38e845e7bf9be4b12e83ce9c945b721a9f49800c3803a8b11505ec149a614ab
Date: Thu, 02 Apr 2026 23:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775172933
