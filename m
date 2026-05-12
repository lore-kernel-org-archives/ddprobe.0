Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3E7395AF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778593834; cv=none; b=T8967099Hdsms5acg3rK6Z1aSkff6Szx+sCfa3swqiyp6aE3weN5zvZTJB77iyzvZ1DFjoaCN8TNHEZ29hp0ZQpmMij1/O4qZ9B3KJOrDP6eXzAif/u25SpJ8gS3dxLV56DSCZ7gwELwMtODTAfnFa8R9nxJtAnaOPoIqW5CGD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778593834; c=relaxed/simple;
	bh=S3h/gUObKbd4nqjlYvGq+AFxMPuq8+aX6QsACSfc4/o=;
	h=To:Subject:From:Message-Id:Date; b=Ku3bCZDy7bO8H/OUT4dpW56u2U5QePbSwkoFl3CGGUo74xWhrJbTbWmbCrBvu+MN53A6hEe49meSwGL6q1I4U4Idh0jJjDfmuOz4HCzoVVrfxGwZb5pm82LY/M7/cDuDOu/FQne/odtKyDOUjxn2VQ0T64M/hTglfD6R80epg5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVKZrvU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVKZrvU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDE9C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778593833;
	bh=S3h/gUObKbd4nqjlYvGq+AFxMPuq8+aX6QsACSfc4/o=;
	h=To:Subject:From:Date:From;
	b=BVKZrvU/rhm5/zT4gIXUhN8TKbiKI6n1+ZSVZy5O0g3SGnYmEQwsoLcXkaio+yR23
	 SF/12AFX3tkwA92GTUJRY2anGHLveor84ZN7gdyManCSA3rQDZCOTr1fYONERqmX3p
	 s9/RSIYFCnUP016HQ9zgPQuPJ1sxWQsYHwumZm6lPysZbkqHzPmrj0LsBY97/A8//4
	 LzpAr93gX9I3tm4qNfz41yjb8+42ErapvGQOrHEU4MJuzlNvPG3Q7gERL7JCfBM7JC
	 XZhF2mQNFMu7ch77c6pJJCXPY3BAJKOew83VO/e5hiXhjYMBgxKJTKUbP2xbgXhqX0
	 MYS0fowPBEVBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE67ACD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859383370.18211.7394167510162268785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c17967bd4630567fa3f8c37292a910838025129314e487fac8541e02b5a83a
Date: Tue, 12 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778593833
