Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4480029899E
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747312194; cv=none; b=G0GHc8QatWLBHcXxYt1OECy5jUHRnmOk3v1PF447eDEQvg0ANTE4F4eaSaLlpSki2Eu3LkU//dQnPfQdQG1tAPqYgEL5c0so4cZ6AihUyfdWhp8z/Jg4i57qZ30HBLvdbdU/T3bnnqRnwAdgih6J5LuD5R6+OWu7+q9tMgG28xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747312194; c=relaxed/simple;
	bh=WvfM9w04bw0rd9e3+AJvs/8V25cxF7eQr73F3OmeU5M=;
	h=To:Subject:From:Message-Id:Date; b=tpn8PaetIZJu03hOS121fm10ggQ6zxUJvUJRN3GINVWYCu3X+l5Ho0zB9j0+A7Rkx153nk5oRsJwn1kjI4hdZB/y4LmtLH/6byCiKLVhvX6tR9HtaUipK0s7Fd/L5nLWKexu93DjfALXtHo2J6CFxiiQX6MbqxcfF0GR6Bapmf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fV08GzwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fV08GzwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F90C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747312193;
	bh=WvfM9w04bw0rd9e3+AJvs/8V25cxF7eQr73F3OmeU5M=;
	h=To:Subject:From:Date:From;
	b=fV08GzwVuKtNpsFMtRZ0eDfvtY6/jAj8V93ACHcgQSx85d04Ns6nkfcivpr7MDJZ3
	 PheJJoI/B77EMuynmpq+tBqMfQg912BwtehvNxWmnMrdb1gM/63S+k/dSbqQCkHBjt
	 fXrsgjASvRQ1kN/zhCouv5JSmeWyohhfGKOTrypMjOJzLXPTy47BooNFgiib5AAkKV
	 wZVMkruEi+MTngxbyW0At5PItcmKKuCqCQBRBpDliNN8G6NQ5EPtIC/7YpmWGocXX7
	 25LDC/FDjP2D4VPzlemmzi42b7I6yajxZ31top7AX/RTd4ObUPUtvAbZ54mdYJDIcT
	 B4cZiZKKeQphA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094AC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731219358.21725.1509205669518325480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d7a691551590e7be7d927151064ce42e5069727827f1bd29b33ce47c070eca
Date: Thu, 15 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747312193
