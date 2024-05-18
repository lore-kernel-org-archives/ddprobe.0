Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED3D6FB0
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716006143; cv=none; b=jNQb/uPUl0DoALmtO6an+AXp94NzOM3ErLJmQaihxBS6iDjPAp0zBNzp5g8V9jQNWxRuX3gcCvzMj1OKyyrUYtm3VaCV7gsW7fp7P2N3XFt4ncFjAyqQ5HhcGBDnQHOylEPHrbWs5ynmiMTGd082UfFncqg+btW02e7qjjURhv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716006143; c=relaxed/simple;
	bh=gESvMJToPASFKKcsSmHCj53fPvTgGzs2appsdBXeNwE=;
	h=To:Subject:From:Message-Id:Date; b=nqGY3UAO6MUzIZ/Vtly6yXGg37/AAaBV8PBZpSqQXKYddV7gsVilOhjPCp6dwWcry/uIa9pv3NRXxuRi8HUgJp2m3eAtUV6/tp046T3p0nPAOV7onmV86cDCLqjiK+qrMVvKxlqonOB4lrjnXgRGfKaRb/cgU+gtGufqFeRTxfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBuyInC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBuyInC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E591BC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716006142;
	bh=gESvMJToPASFKKcsSmHCj53fPvTgGzs2appsdBXeNwE=;
	h=To:Subject:From:Date:From;
	b=ZBuyInC7DKWlRcnbzoBItJbr2KkZk2l2v4ZuOlQmBguK5qFPvd6h6A/fsSLv0YHtQ
	 bhuPg3CpQs4vXe2B5kXtjIiVUCAw5ofQPLRsE/EomxUNDBK4UfMTy6K8+eXqQkZgs7
	 Lkm6sJc9RbkhWoU4B0200LxTJeL7Q95w9fQupycAjVt8mBcskvMuYaKQ13F/kHTvGz
	 Vk/RAsxldnjWmcCB+JA19ItpKaFdKPajGmm7J3AQ4nvmf3mKbR/4CXAYjQCcpBLom+
	 wEMzQjP3WgwN5NVCmcC+/+yQvGXv9xX16QvsHRR8W7IyKl4eXEbx6IuuigVfQiCzco
	 LCfdyXeEP66ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6C4C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171600614281.10799.4648362637746378828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd086df2fcad83ca30fd0248e1b6178b8cce9f137b914712b7a1b18b73bdb2f7
Date: Sat, 18 May 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716006142
