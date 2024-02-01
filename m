Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF0D6DD0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706803697; cv=none; b=aQQN/506GDxsc78tTOPeI1OwOK9JxuEV3AhZPOynRgWlVaFUkDEeE/Vd+PB6EEWT8mbp7IkdcR3+UD8+QCFJzJQThOdYOQz/4QYuu9Ww/Bn/i33aSqzXBJtUn40T0VM1kfl4IiiHkXi/kBMrZ8IqMyUFQY7tAjcHD0xxe290rZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706803697; c=relaxed/simple;
	bh=YjRkHatgjV47sRpSFbiRWWi3bF/jXpFvFp+Jj2L/+OU=;
	h=To:Subject:From:Message-Id:Date; b=jLPKBkZ4oCrNJuWo0b0RyLKD/EoAgO2QIdC+G98EYC/agRuifSKpPehj1uYNklwedHzNfveoOA+TxHtY5lOZFFyWQF78AsPP0Os7eXlj7MxfSt6xo3m3IA08dGeMt/SxzP46uABY5hyhV5+WIpN2OTwelMlHIGQ6Irn23Z7oKH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3e3dYVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3e3dYVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A5AC433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706803696;
	bh=YjRkHatgjV47sRpSFbiRWWi3bF/jXpFvFp+Jj2L/+OU=;
	h=To:Subject:From:Date:From;
	b=F3e3dYVvjji1k/JlU20Tdmn9YFAvKym2tFHFNDlDk7n6QrJvs1X1ozMDykYKLBpUg
	 oYHNLwAotXjY3eY+IS2p4MCV/fS4/mJQU80JVcqiTiQ498pNfbof4oSrfRLMcpL9Uk
	 S7l0PIQyUKAC8Bc+Uf+EcJiO/cL1yFiIXy3rYe7Vnt0wLVjj+q1uMLmvCQe3O4rfLP
	 MCFm9qYwXe81lUlxEarsFlS1p7JE/ITSSOyAUF4NVVJSEpRISpAjK5N61xQFG2fuDm
	 tjm1PEuznje+FMys0VuSneHSWuYo99Ln9fsTh/UfVB38S8zH2r8wNTGh/SbkrhMnt9
	 4lxUHads/CoeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B9BAC4828F
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170680369636.30255.1485173204602883980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c90db407e407a041d30206877c7c1351f3a7b3bca9a51f4501b43dcba7a8fa
Date: Thu, 01 Feb 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706803696
