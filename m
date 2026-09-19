Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A129D2DA756
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789836034; cv=none; b=T1/OLH1l1TIuMWSOzM+YeneG7xskJlTZ9OlIUxihoQdi0B+wRFUrg5mWuLlWpvu+XmIAG7J8RjIdXgp5BhQGWOmRfodW9dzo7gvnwkCoumZlapwrM2Ej0yvXoSM6UjXyKWXUDzNiF2R28Y+teppuU+WIbdvJvsDoeSLYojLA7to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789836034; c=relaxed/simple;
	bh=lhEm7+4Ntd/dNvGHbgOr5RaWtDHyggjTK9odJ9NVSrA=;
	h=To:Subject:From:Message-Id:Date; b=Zr0v6+QeV5XGAx7UlQzLXzHoNmUWdnbrbcny1jbHFm4ULFiZnvqbTzSRHQ4cdWrkFL+wMUPPyVCVOKh8NEAjggZTP9pxY6O4Sv9rQ8AcIlZKviUonzXgrEivcMGWBCLlL4URSnzRgQElwUMaMbqEgPzgHpQQd3obi8LYwkrSbxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbtraHIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbtraHIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2096C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789836033;
	bh=lhEm7+4Ntd/dNvGHbgOr5RaWtDHyggjTK9odJ9NVSrA=;
	h=To:Subject:From:Date:From;
	b=BbtraHItOLSvugqw5wgS98U1bvaz+upJLisLdsHvGRsJk5kQy+AB3R19Cg0Uz1AND
	 XacCtxhlCae2V/7aW9TOOpYV+EfAegEJcEzzBcrfMYd+imkkldLRvnsRK002Ygh/dj
	 K7jquZ+xrvQZ5BZ2IpwA1AcTjzO2sM7frVVMPGTqzLIFP0oayU8MR4DoGHsi6uZWCv
	 wlto+gJNG35y+ETPYJvM9y6MI1TNSLT2ZgdmZPvfThUwwPFkSj7frn1TtjSveN1RS/
	 tWvVkqBgW36dnJHJKWfiAFw/8/1YpTwX6cWS6iu6qPm9rlKdD5aHVMWsJlhSnEqCOk
	 i+J7nhXj8mRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7F3C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983603368.1031.8243996400225339555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1dcbd6b07571057db93204d5154b4e284222eed0cfd07e939becf698d9032e3
Date: Sat, 19 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789836033
