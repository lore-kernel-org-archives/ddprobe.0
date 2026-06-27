Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2769940D56D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782557314; cv=none; b=GJkUv8cGI0RyGz4s3p13BRUOUxj8gflCA4NV2s1BtSq7jO+LtzCZR0hWNco+Cfendeaqxi3VZ4RZ7/hXzQpHxKPCkvsWUz6CwXtHADeNaz2+HfLapJqDvyzT9cKuSlgCrx5/bChs7SDUMeeLQYCu9UtqE3RhsaB/6fN0/o8AZso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782557314; c=relaxed/simple;
	bh=jVpvXtJuTYNtrzgUzvawvbZORg9mC+oHeOCEzToLSnU=;
	h=To:Subject:From:Message-Id:Date; b=fczm+g+9QVZptZgl5TBwOwvRE5gwqTImUAG9yCma+YYzF7Nn2IjMVuBDzAzxEkpdI0KryZikVwqRzj4N1w4M0MgtizmbiLKH8kgHMTzB771RY1zwHsBasESGvXlguOQuABcVNar6Nt4xSbLyLhzNY2/T3frd3w9Jl7rPwL1RDZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYU5lgk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYU5lgk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC499C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782557313;
	bh=jVpvXtJuTYNtrzgUzvawvbZORg9mC+oHeOCEzToLSnU=;
	h=To:Subject:From:Date:From;
	b=bYU5lgk9mZJgVEO+8o9aKdkCu/DUbOETOs0HpYN3L56fz+mqfl8Qnp5HLEIY7Ts3/
	 tYFVgt+QTlANbTa8mkhNnq13mFVobRQYVbRtjzb06jBgjyNFZqse2/FqUp67V+3Cbh
	 pTVkpTIO68QJilGapgH+5qv5otbPOP+GjVH1/em9S2yDxHJEg3ykR4LaPPpGUAoT9K
	 ShZqax/zpqFbeCQUu3TbYsicRaJH2MwZbq3tATG19tt8p2DiDm9ezBUjjLV+QnsJO2
	 MSTFTHis6TCbxmYH8xEQooYD6VS8O3/zts9sXChd8X5bIcRskZ5FMZOgi2bvRho2SO
	 hFmMKdIAs8qMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0355C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255731370.17572.13969164447061346383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd429b24294205d46813aa08eec6627bc338534a7d1214095d5baa7a04576e7
Date: Sat, 27 Jun 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782557313
