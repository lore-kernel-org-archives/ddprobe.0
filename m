Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7DF79DA
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767758634; cv=none; b=KR63+iXZD59r8sorIM+fxneUAzeyzrI+32EXm2DtafsucFAif9IGHhD3MNiCPqv1Msh2C2XdUDxhNHJTwd9LOZKO3oLXaoObV3QLqwN4reZC8R8xHC7U2FC/Mz+IXxAO7uK2Ox2xfvxa5JXVG1gRD3JDRSbBzq5Eyazxq1ouF6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767758634; c=relaxed/simple;
	bh=nQV/cR7UVevlgkvbl4HH70jHLvS6kYlfbcUPXcOs2jY=;
	h=To:Subject:From:Message-Id:Date; b=keqmO5q2UumdfbaSdrxgWxMGEHxjN8NHDaLRUk+ezQcK124AuUw0n0pAb/UoT+KYH+srKkOJHvCutVK08E9P6NaEoqNabBCSGePRLhGbyIGOxHML8Gi6q8mvjgsxsVPig+EP29z1lL45wIZNOlHzReDsPNDi/k6jDxI5C8mU1To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xk17R3vB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xk17R3vB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767758633;
	bh=nQV/cR7UVevlgkvbl4HH70jHLvS6kYlfbcUPXcOs2jY=;
	h=To:Subject:From:Date:From;
	b=Xk17R3vB1VZwE0kqSwK8MeXMdqnO47i5Yr92uYeb3bpNXRlKDNpVtbdrsp/U2wMaB
	 gTW+h3znz6WVsqMO2Fa1jH5oDylt0xch4IoE9935o3izh9rMDkKlWq/g/armmxQZdq
	 3oapT91ERSHnZT38X4dlpt2ggBopmQM9jJOQRnQnwA87RPcT4Wma6z1jBx9ABiG8SL
	 txMfSc3/ZOxWZhyyd8sZ4nwdgY1VWJawS+0Y3JbOFjiOeFSURFqLiw7i14TgkpiFm+
	 hKgGnEWdmjK9L7PBMenfi/ujCozzvG9IBXfEo8Zq/ile4jU2CG/p8Ob9mBljQ5T9bj
	 g5qWXpg8zmXjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB65CF6BE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775863357.16145.3573195693806117652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50dd833a08bb8dd329ee3018a2d8fb2acf0793bf01ef168d9669432137dd7b7c
Date: Wed, 07 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767758633
