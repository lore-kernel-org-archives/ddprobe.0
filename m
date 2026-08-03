Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50920369D75
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785754234; cv=none; b=iT2LB8CGxoF1XN1JFvCk003LkgZv/mjsbjvVe2jOfQNg2z1FwI5J9Fqk1UIYLItjtvUBbBuPIrtTQMHbyI/Tj9Gjm/m8NmvD5NeV/gVtqUhGG/w+LJzq4lxwF79DXhKxzN1EYE6St93/8Mh516VUyWborLbGopMrk3DtO3uxAz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785754234; c=relaxed/simple;
	bh=1YVei/FoX3mDCBMnsVrYbcO+hR80YhxclSFtmeSLAh4=;
	h=To:Subject:From:Message-Id:Date; b=unIhvmix31aZpC3C6NwXoC7ngD64i77V0lACGs5KR1uyggy+Qzrx20dtEsUDKFjjA+ENVpysJzwv+QauAfzcIggp4COP/xqFUNObT7Saqz2oc0ST51Z9MPFODV5w4/qw2X/Y2XjJBxDuNVO4QIAtwcafrm1TzxSAU8v9AvHDv8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjcbaRGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjcbaRGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1370C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785754233;
	bh=1YVei/FoX3mDCBMnsVrYbcO+hR80YhxclSFtmeSLAh4=;
	h=To:Subject:From:Date:From;
	b=HjcbaRGHxVlOZekXNs0dv4NkTcDsHZOV28+Z87NACvjHD0QbU/XyzgSDEf/tWzPkS
	 Mr5Br8w2Jj+FfTX8wpY8P2EQXOucqOgqWApY4VCu6wruZwUA7SmVE1w2xHo38bJ1vY
	 KHTxZkoiBVxTQztoPb+IOj+l+AGBACNbM+ninqVI8iBdAAaXsU751/jHZC9W6UPf62
	 cvCmMA8l3N0RggDN2pr+GB9FVZFQB2+yMlmOCvoioeJBGLdANaG9Z+G1K29VAgEemC
	 EN4SsdGpVUFIAXGBg5jrUB/lbvqa89zgzEmw0L3sb5dCKaffloHNfSzCmAFs1wRnmp
	 B0wYdxg4n2HLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD36CC55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575423369.24946.1170954670628351516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910fc6a56d419a4a9f7d75cade3a3de9ad019922e3dd67ef518a5da29d32141c
Date: Mon, 03 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785754233
