Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A354431
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718545103; cv=none; b=bBGzB8O+ZmlnVAI3dBF+kNi/DqucK+5gkx7F6r1MTXDvClOuwi/8GBroF0oC9gxoOs1wgou/Y7eAJPO01TGUbqf9eVFkqJQj3b3xREpJ8dnvBmL/17JNN8YM0qgiwFlvFRMt8ChFyRtq8Lludkr+sGHcuOiXq2iRDdAeTFjC/SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718545103; c=relaxed/simple;
	bh=wMT0Vb4q8BLAOnaPuq2Quj7eMUCFzg+v+3i0AHboMZQ=;
	h=To:Subject:From:Message-Id:Date; b=jub+TDMlBRQeZc0dMn0XEjc0Smi5MpITZeFR6y8U0uIGQA/mWmYlAh0/oRY8am3d7WcSS6AflF1RQfD2/5dTyozeGXVBrjfDSSCzPXC84u3EtD3b+Odv8M5X3XEuJi+3HEJYKqX+bRoH7C6NTtQqLaCzwEbxEOC0UbqPynh5/H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEZB21Nr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEZB21Nr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7E6C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718545102;
	bh=wMT0Vb4q8BLAOnaPuq2Quj7eMUCFzg+v+3i0AHboMZQ=;
	h=To:Subject:From:Date:From;
	b=DEZB21NrUm1SLe2c20f3AusT4U78UNOPjbkcB4+swRevgfZQkLul8TkcaFIHtGxXi
	 2+YxjD0LZDs6diGPTCPEIXwvhs3qoNb9GuIWlcrRlOVU84YvMzbItUT/8tQlnMNGJN
	 1dqVeGaz112BYsQ6ZmKSmwo5RK7j+hLWZDacB3gPZ+imby+WN8q3PMqjglZGOgW8dG
	 M0LZ8upwSk7eto2KA6x0U1qT3d53vPnyEq68wnWJk8r8/lxP+gB75/c3cR6C7PGeCe
	 yf7iHKP/bkTW+qHeNn1FgwwO6kTA7A6DqO5Y4WaMBVny2OWxM6fxQT9GrHpY9YNJ+q
	 PbeQJ8P+KpxWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68C1C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854510278.1181.17977608082761206951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dee2b109ba4a60ea77e3b03e2035a698c301e75f2e1132ab91f7e5dfe0e1cd5
Date: Sun, 16 Jun 2024 13:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718545102
