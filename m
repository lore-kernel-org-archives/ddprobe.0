Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B183845BF
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772724893; cv=none; b=DYjG8IOUKos7DoycJC0Qnx45i7mtEnrghcKEqW6g8TIRUY36Sqj+LSFY/lWQrjQsM28jHQZq4NDo8T+0T+bjuyKbXuy/a8dQ74kQsZ1aI5dIpC3Ov4Jt9Crre4EF9ocmnUtYaSV2AevEH2cpr5tqMEU/vg2ObAQcNK+w5niDL9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772724893; c=relaxed/simple;
	bh=hhei8ySXr8iNCD5GIoMDXZ2WtjvXYtVSJ6ZhOq4cN4Q=;
	h=To:Subject:From:Message-Id:Date; b=O+9E3UpFTzWEJdkDLAXnpSgIH+4UVnofH7GB5DhCIH9H9aaNLhXz6NXDe/IK11jE1oZgcnZfjTDdkHKyspJ45Qg6+GVwaGxfMY+i4vJBoIGNKJq2L7A1lGNYpPidoR46aooPSDF2HuLna9UZY2kSdtu/mP9eDQBZ9/pC09mLdhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mlby08xR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mlby08xR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD8DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772724893;
	bh=hhei8ySXr8iNCD5GIoMDXZ2WtjvXYtVSJ6ZhOq4cN4Q=;
	h=To:Subject:From:Date:From;
	b=Mlby08xRnDx5ykTFctU3E9McWl5S0WeX5hi8FOvZXcn6JKjAHXwVnUvYX9rwzAFnQ
	 OYfCL5d3i5pGWBAif6tTtbHQzdG/ZODwgMc/qDuDjw7lJjxJT7CDwQdDdRg4oIzk5s
	 7YzOMgKsS5Fo0gOigGAHRlVOw5pSYxeru1+ulne3CJ6Df8L7YiLg4D/Env06Bw5+3P
	 MUs5ahH3qeLmjA0wMwA+qKqrhhG5C12QP9PN/LOfQZ5efZOaJk35ABEgU68cXXq/2d
	 iVHvRVHAgmQJzGRK+3zHBdXwuUM6aDLhf+xOFq7Sv2ljATSIaVlkNEkI3mKceIa5Rc
	 G7VZe70xDVS6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F69F3D300
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272489362.5415.8240952545997084554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad576a8037b932bde799c28be4f83c8c2322b8b3062bf6a2fde68ed2a8114f4
Date: Thu, 05 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772724893
