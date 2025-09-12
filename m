Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5D31F416A
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757714994; cv=none; b=MRZmM0FpfWHJG2LQp7NPqsozHBqdDVfuTD0KoP6NUMLRPLgRKJxPAFNVP2gNtvX+BcenhtAiClC+zgZffPLYuelaDDFK0XpTkEEvP+Nq/75Gavo9P9HQE90pRz/HE7VydSydhpVNkh/Ts1MUHZNZnmSChjXbCInpHmEp3WONyC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757714994; c=relaxed/simple;
	bh=DcXeDiRlD2mjZ8ulBvBUfKi7temCQXetDk9AYv2SXj4=;
	h=To:Subject:From:Message-Id:Date; b=VcxVWntKkdTiiTtSt4j4t9IT4oDTuK6g5gNDIRBsO00rHVrk1+wxcqAGkFqogJDSOmaHo5wv1ZSImQDGK7uYLF5hoZwB3tLM52emMsgMvyQv2URwTVIhjEKpe6KHIYNX0KC2X+1oiexmy03aaLihiktiKR/PB+3RbsyBQuGC0zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnZSS/YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnZSS/YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A146DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757714993;
	bh=DcXeDiRlD2mjZ8ulBvBUfKi7temCQXetDk9AYv2SXj4=;
	h=To:Subject:From:Date:From;
	b=jnZSS/YJfVkYBl/kyeQAQ2hnT2Zn4ywAR7w70XDJRGt1/Qf/6g0Lv3x7xZ8dhE+Wt
	 P2Vrt3lKVS8hy0Ugym5lZnkfkbHQc64Pu/kcfkrODUJU6gjI1UGicXVHroqcYl2Acx
	 zhBSIXPeNZ5XVhFeMDorEOchRKPzs3Dz7eZuMKrGBJ0yNNhUvZ5JLWfSmB5kl03op2
	 7aLqbvHYLwIbduhy/a90ySc6yoMNlTmSBY9hshiKk5yTH+Zo+SJznlmV0KSas9LtBw
	 iqMKhVlz4SWY9UhiggDsmeB4GpPEWuZe4fucmCHxd89UJWHRfn2qq8wtBd9xp8BUfu
	 FjtsOVqiorMPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A8CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771499357.17085.489205798775851206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db675a932f257c5aa3478eb0334a3edb03b351e586d1fad88d513ce9af04f2b
Date: Fri, 12 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757714993
