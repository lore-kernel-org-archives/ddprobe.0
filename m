Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852B13D7D97
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779277834; cv=none; b=OtYr5RKwkqvJF5L90BDcL/6cLzWpR4V0CRhJxGHv2stV5anQSlWpfPqhTEtB7+oqG53DFu9X7WIIQjPJu8H6JXMCPYCPALAIgqOD/YXhDzsEZfwrZCIqjIpfAZWJGo/zuWUMM2U+KGkRwc0VEso/ERX1xJKNmouHHk7u4zLal8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779277834; c=relaxed/simple;
	bh=Gmc3hVgsi5Y+q2tL2RcD0HUsit0meqWisw7A4h2Jfm4=;
	h=To:Subject:From:Message-Id:Date; b=Ssd2Ll3LLRlNwvHJodGC6qafLhxKXv6hsu+flAkOStEY2mKnw8QadEACjg4ETPAidxnCM3BQv1k0Rx/LNAy4knWkpdKb/J+YoPNvRu/Fh99F75Enuu/s++xPnJh57vA8UrOJ3O9LOyNVVCkGuNT4z9fSE9x0mY3dXWRfVBvfhhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R74iBGil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R74iBGil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EB7C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779277833;
	bh=Gmc3hVgsi5Y+q2tL2RcD0HUsit0meqWisw7A4h2Jfm4=;
	h=To:Subject:From:Date:From;
	b=R74iBGilL41lSRzbf47kQqwUy5vqwffMci4buJZzmmDV964M1AHhAq4iIUVJEtKpv
	 x5h4hVqn7XEIlnzTo7Nq0jmhljhTVTVwvtWwfecJocDdqMmFQ3XnQM/kwh9ttgxiQi
	 n/Yg2Vi3luvZXlRkhhK1uzsYOd2ylFDD7UxB+/13IFc9qJWIE1jBlMwHxltu5pKsK3
	 GZ2QdSFokmgncFS9v98cMpFfIEJP8ND5jb1OdnjkZFZKcQcMkWGimIyEs4nzPLT1Qj
	 NMIZVFkkm/IiZwD/A34S6ezXu13AK0HNWVXFBVH8VtuImCXXa8vorvgt4r2rBBtXMc
	 RnUdbCpaiCG+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAE8CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927783369.8062.15284194433389647771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a1f780354794d2470555eb3321c0fe033fd51078f56e331c62983bd174df4d
Date: Wed, 20 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779277833
