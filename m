Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6F7184
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758443395; cv=none; b=dDUr+aN5vGWOvA+rWDhgQuc7qZMfgKDPLm6FsFeNAA4FkDq7Q7FzsDQrXpzY/zXD8uQfez5Cl76ERQxur7spEqVGxwAdAzNeGrTeIUyIR6NLI+fBUjm8vmZQMbjGDY89zRGBnZEZXHFn9d7Id4WeGKqvX/AQRhN0MugbCtdnyhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758443395; c=relaxed/simple;
	bh=H484MOKzlO00duvR8pYl+RQcfoUmZ2wmh0JTN4GOLa4=;
	h=To:Subject:From:Message-Id:Date; b=I3bXd2/4IYyg1KV01niyMI/gNp71x+LBiv2k7XxGbDPhl081T5WsSBTLk3NfpXyPE+z0VDBOiTRPr0M8heMVxorn0dus18xIW4cwXvqk9auYLWUs3sVzuS/RASzXDSs3n1s20uaIbtVTbDUKxHQhTfnYu91M0WnwtC/7lk1q7nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgEKaxmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgEKaxmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B00C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758443393;
	bh=H484MOKzlO00duvR8pYl+RQcfoUmZ2wmh0JTN4GOLa4=;
	h=To:Subject:From:Date:From;
	b=OgEKaxmFHfkF24xbZbsA9L3G7sQBzAmrLxo0KqcEA1dkgfwL/hsJT9hWOAj5jFxZU
	 pSVHw1XT3zmytS3yyp4hhQBYlLSyuyhF50yPqvEqaPpuLeK8o+QKPeqy3ZKItPyPRz
	 1pd/t3hdmHk6qXxyl2l3xtqR9Ew7ZmTOflRf8C7B4zXRLWUH169r9ArXqFie/2ZEtO
	 ZRfnQv+C9/CZyzeGDosDoWJzALhQneLL5cgewRgD2z7bGn6f0LPzuzbJ4YP5tRhPKR
	 KlzMKViPKlnRoNvrvRJ0zlUlutmhsZLjws+CvQonw7AFbl61xbTDv+RfQxdIPwF6Ue
	 733hLHJB+8aew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DDCAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844339358.2240.1566226654675427443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564475a307ea3ac26e7cd5e18afe410dee9f58a3c16e8664ef7430d5b459ca5b
Date: Sun, 21 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758443393
