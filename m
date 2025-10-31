Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224B928C035
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761953994; cv=none; b=Odi+ouFVe3kEYu8pN8xQgBwueb7oDrHxYdVB8iEysJxus6NZVlIzlaazVQEFRcE1b2wigVNq4BvrNlj2mPGyrdcXk+ZbNtxWmDWcX+TV/S1hX494BgMmHqjOR/IwSxCtYx1jVuxKpYIZ2mVe+ymLpIpCidqdV4pPRn0yg8eS0Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761953994; c=relaxed/simple;
	bh=ERKobeB5VpfZ3QRVoIAFrgTB5ZSAU3IUlBZK2X9tSTQ=;
	h=To:Subject:From:Message-Id:Date; b=Ncqqa6vKOuJ+PZKi20mzsP+k8h72uRawaWDaolg64vku8WmRk+eIzLSlRGFM2J65hvtYMZGCKYq8mC7zGQzYdnuuEE+U3drXx2xPF1xmnPiiVysJHHZlFsujIdVZjBr9oH63yH4/fqilXZxbw7uh8JmA8AMkyxz6dVWWxdCcNVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8tggrFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8tggrFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F8AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761953993;
	bh=ERKobeB5VpfZ3QRVoIAFrgTB5ZSAU3IUlBZK2X9tSTQ=;
	h=To:Subject:From:Date:From;
	b=E8tggrFBiwU8BfMcyJ4AsTSDRElmUdNSEC7Am2BC+fKe0BKFcRDJAF6e1gRzy8JTG
	 MHGe2P47cZuJZ5qXrYpyzsi7TAUbtGvTwQOPCPRX+HneDbVcc6wbr2UcssJG46vPNQ
	 cLQQxm1z77gR7XDNE9eXPyCk0HBD1upg3dXLJRlPUTdTIXVhwMmpqIb6STBDcbkOOu
	 eFkTiArcCy+sWH8a++BhOnANc06n6pWc7WEWXAyLzJ+4JGWhWnTDc2XF6Pn5fNN4oi
	 5aajZJOI8+uLW5zAhcG4pVXD9CA/yIFAs3HUIaWt7wI90MeBSNmhDxhZWZ9ZC+oZHP
	 dwSQLkLtmmUhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10BCCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195399357.3104.2095995958146389184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cf19bfda62f6b0b15e17868014508cdfb576e6e12b760ea30e2a1638f361f2
Date: Fri, 31 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761953993
