Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D55234BA49
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760155794; cv=none; b=Fg15cQ+GP2m30Q25qDhkx6v53PkxDoblIDisCqy6WkcHJ1DymPcaZF6FGd08mH8O1zNm8gMWz7R1lnhfxCyU+fh++TdwOGLiAe4WWkY0P4rhACj/Ni77psJMRKZQH0tUobS32llOmUXxBC84wRccz915VpGdzXsx1NCFq+1CRHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760155794; c=relaxed/simple;
	bh=0qH9EIcv/q5IDMLKQgwACboBkhlsLBOzK+ZN9dPZcgE=;
	h=To:Subject:From:Message-Id:Date; b=RHJ2EBmUhYv6kcxRUfZIBgJFMfsA4oQCFGF7avJ1kuQ+YF1CLh01SodQVfS9aLsSwJo4IyOkhf7JZpGE9KXYS4665Ii3hJWOShgjqOY1V68bHTGEzGo6ggesmEGHJC5ZQwiYl/VNapivYEyzW/PFcqYD1QIXVnAAGz8Q5Rd1TCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIM2Xa9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIM2Xa9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A69C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760155793;
	bh=0qH9EIcv/q5IDMLKQgwACboBkhlsLBOzK+ZN9dPZcgE=;
	h=To:Subject:From:Date:From;
	b=BIM2Xa9gdMHFS64ZwcMdHVxy4lk1b4GxaqW7Vnno1NWrI4o2D8nEzayF8nUUV1pdR
	 kDXyTnwgWfVwn03UZUGJnNg4waND66GTjTW5FAxZq7E2rTS0jUhFnfly8+ZQFomW2p
	 4XmaLQJayQiEHAlc+WcqBz77yyzWfJr2W9PiQ8WeWKtOUWToEzkM7ZjVupFRq87BM2
	 xawvVE18Vk23bqWso4S8ncebIKrDDC0Obb/HBJDX0GWJmyJVinY5XWMAOpOH2w8RWL
	 CluMF59nE0gkZtmAVmSyhC5vJ9evkMmw5+G1ZOyC1JhbgitB489+6vq3R3vLTrho9L
	 GBsjrVN/2hxKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9951DCCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015579359.11178.7779476649284037772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d61a0366c8dfc6256660092bdbcb9090d8f516f322a37adea022f97600923f9
Date: Sat, 11 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760155793
