Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251B026A1AF
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775732734; cv=none; b=CCfz7gtieLnwn+x1tbz+fbajx9ucWXEJFOSzEDITtUlnHxuM7lhtPnk0y2XDgthHqbmhfnk1zRSmjXHNfJbvBakCLtEtZxL1zlBn9OrT9zSxdEfAzKrsXlBoZPyrNZ63fmBLvlLTAFD4THcWLS5HVKipmyCR9yVOhg8tW7mLcP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775732734; c=relaxed/simple;
	bh=gfLgbQHc64cDgIpDS8yW7R3imw0rSfi+RdDmxPZr4I8=;
	h=To:Subject:From:Message-Id:Date; b=nW+zzP9yAg/xi7aTY9NVNrvckIiBXuoPdjAnJC/DBL4/p6BiB5eKNDKoSiCHBXXWMYBlX8CW8KSsVaWGw1N7sXDEKBHzM47RACjhc0IayyxUpV+8G9cOjTxKbg/sGJWcUzdwwVot5bT4v2PkESLa8p8I01B9dKBe7DknQFC96zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiAqDb2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiAqDb2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C613EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775732733;
	bh=gfLgbQHc64cDgIpDS8yW7R3imw0rSfi+RdDmxPZr4I8=;
	h=To:Subject:From:Date:From;
	b=CiAqDb2srDEHNRul+Z6L6Gzip4szZMq8+FVgWBSOUYvJcF8O5DEE+L41NUXXzFs/N
	 /71OCX3ILP2Wf7wBLx21F/50ROjl4b/uch19oAdZG2s8FrNP/AdBoEJKVKe1GucLdA
	 3CkmNcMhGhO8R/Wqf78k8nbwrsIEh+r4GpbNU++yQlQSprWZt2ZnAScQYAqfAcMlaL
	 qiwmkPsq2gR9Zo1rkv904HVJyo0/IqBhHbK1zHwT7bg5voIK5w0MuZ3tm40x8GggFq
	 fN38nk9AEzaLvZrzZ/QErI4exSBly5mDS9TpVsPD/qr7jbbZ8W4DLpFpO60DmBv/mo
	 Al9dmra2RVHFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AABEA3C4C
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573273371.22031.10020787324754128848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2cd4f4be7687abb2a11f96745ff90092e32858a9eb94a95bf07cd3d04cc76d2
Date: Thu, 09 Apr 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775732733
