Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDDB320A00
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769895234; cv=none; b=QzgW92a1qHLcLlYOYY0SFbiXZO1B6doJL1gXqErlvjKmlu280FrCabRhaq2MBTDT8h1d9TkIcagPMfrYnLRaP8JV9NjMUYTu+zH6UHWFXmCSVhq703k1sNIxw6OFqusqXH2n5QAE2ph5v6rkM6qzvO/7HtlGLpbSf09vYH+vGvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769895234; c=relaxed/simple;
	bh=222NWmCCBX/m5vCobSfxhDItozndyAszxsKxzfgtr7g=;
	h=To:Subject:From:Message-Id:Date; b=FuGLTilm+ZeMLNXPf/dFHFBUSwtHavXsTHuAVs1/GLmrDsYCpnVl65OJZ4yqsltgtXppZA8ydIs5kxpT0D5u9gmJlx0QK+vTjQUDdky/9teWwwdSGwkRAfRqh+LODIhbYwLWTZHEIfNQvboMrjOgwJ8wH3+N1loBHJsCOEWp3xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUXCEAGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUXCEAGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3941C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769895233;
	bh=222NWmCCBX/m5vCobSfxhDItozndyAszxsKxzfgtr7g=;
	h=To:Subject:From:Date:From;
	b=nUXCEAGLTyF5GEK38pPatS88upEK8ufH33/BVVCMjfY8UIkxDOWQ5znZc9oUqeTuS
	 awt1ZZuOMJgNkdzFxnhEwtWBjHOywRoNUygzuaQf1sAOGyE63w1GP7I81svdDlxP28
	 PZ8Nr9i7tPeRbqC88zJ8uehLdJnjfAyc37UQ3URPvFQP0Wf2QY+3Nb+bF/2wGH7cXI
	 8UTIW53/g8PrCxtubdEqy4/g+ZM+igUGg3P8N6fSwB7yQaSw42hlp5NRl4OoVUn6pg
	 sFxrrpqAVGOd67bNiaoSzTPUNyQnTCetBjKROpk2bi+RbCKUX+xokz6+o9E1NXfw7i
	 a2Z0V5zRyLx7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4002E7C6EE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989523362.8020.10472490248793271585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e53fcd6780289bb2cc8e4fd7031a9e6527827ac235eb25aaf1cfa790ac15a8e
Date: Sat, 31 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769895233
