Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6639A14883C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 15:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718292503; cv=none; b=EJ0zbu6zMlE3Bg8NxuyCMIEelSNe3XUuNt2pXHjSABzNUvJxIv+u6vfEx+q99po3E+yJjkn7rEjo7kkdNqboXP4oy/rQd3Tmu9xUMcRN5vrUy8EKSbVrXzjPTD6RwaVHOyPp9UMMK7oESM9p4wRWTt40Vilzhjlcowmg9w4jwRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718292503; c=relaxed/simple;
	bh=PvhBFerTVIAn2+2NZW8oFBTx4KAB0lFq6kuPbfSgk7s=;
	h=To:Subject:From:Message-Id:Date; b=A45lJiVo7nBsM0n2oqggNOK17/6z0RROvxihJd3q/cHs33We+XqjQ/1WOoDFyuQ6ufXbE90ySuTqlPvTyxSlIl/dr+yoXxLXA7CzhZ25zT3Jaeizon2hZ5dU5eyBfLJoIlq0+iIp2f3/WLv5Nqa6OGsBtWgc8VdsV8xVVherxnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gh8E1s/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh8E1s/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 024C7C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 15:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718292503;
	bh=PvhBFerTVIAn2+2NZW8oFBTx4KAB0lFq6kuPbfSgk7s=;
	h=To:Subject:From:Date:From;
	b=Gh8E1s/fRAqKnM8knZGbcDkW8o8Fyl19C0sKKdeI+v97FBVUC9nLgUSBVnLOpOiEH
	 wejKNfvxu+GXy/44ZCG7dUNRnnzsDiMKF45GDfWzHePX8B8SwVMc+C8E3h/XuPq5Il
	 U2OUIQ02ic+gN/h0twZMXTHh25M2P6rtUlGQgA8XURRm+667m8YiKTp6OdmNsPteHT
	 In3Pelxw1ACN3PpmIu3ct+05Wwx9ONGAbZ+7BhvgeJM7F/q9u8ajZpQU1u+q+7zKwq
	 Ls/zSgWk+zwaD2LB2os0RnmCMTHFKSnUyg+dYtNLXhgfmB/qg4MMQtgUgNFp0FMo3W
	 b66LpCsPtxPiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE157C27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 15:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829250289.28402.238874247153618793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dadd1fcc4b74535e36b92167555c37fe4860f246aaac0a55354fe8db0d4e1e06
Date: Thu, 13 Jun 2024 15:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718292502
