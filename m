Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F25D23741
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763105994; cv=none; b=TorIxklrqRuUsgWH2QOqhDKlyeAPPzFJoQcTlasYr9qRjny/RAGRbrGcQEOyg8FrP6LdsWhoxASsRDOs4xzwAcxhj+pMJAF5IqW23Jj/UXsyS5N9i+zSGLd76A/BbQ+dKkUR2hwMDRVt7f5fga2AAkoVF4t/rigKIF+UnmH1Quk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763105994; c=relaxed/simple;
	bh=7CyzhIcHMDquyIwCQZZeCS8P7O/ASZ1du2wNcOOIbyQ=;
	h=To:Subject:From:Message-Id:Date; b=B9elln/h/qHzqFi9k69gSlbYQDDqxULHxy7rTw3ysU7IlYSiTOrbY/C6NCcV2/XYRSFVO/ujEJk7W9W1L6RnO7h4zxj5eDd2FlkJq/u70s0WwOVA5TRcYhXPXeZ7Gaw4G9pZY35VE4dZvdW2sa5QiQuqCCN5G2FQhR4vV1odwj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmV5NT+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmV5NT+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF260C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763105993;
	bh=7CyzhIcHMDquyIwCQZZeCS8P7O/ASZ1du2wNcOOIbyQ=;
	h=To:Subject:From:Date:From;
	b=MmV5NT+pCGmfhEX8skA/euoXnod4DnFlDnyj+cb+PStwqgSK6HB+v+DKExgVhZDp1
	 b0VqMObCFsSGpmcrmhT8ENRvs2fFCUzJoTvthcLHwcvqL0a8WbdEaiSAVS5IwSyy/E
	 CwW6mCJebd48zeZL+UnJOjcSrOHaIw1gNcSiCmDkCcINc+GthTvnhMUpSzeT2DepkI
	 i9WtrLmnWCwsjYxRjUlmxyWtgzjdBxq9pubQ3YxZeyHfx4NzoyjaR8Ok7gfH2AODFN
	 YCTsszDlUdGFSPYx12NXB4ZhjMLl6nuzCjClXga2iFDwUrtnm5O8yVv2iUIL0wSyQI
	 AW0LfSTsLRXvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCB2CDE019
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310599363.8743.10484729648572384826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39ef483d4a1ea3fd53e2b43cb49bb11607ec7a5c0d16b99b92b6935994ad7a6
Date: Fri, 14 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763105993
