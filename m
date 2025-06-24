Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E3522A4EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750749594; cv=none; b=IDke0qwH2VaVqm/0sBD3giZkIMA+8GIZ2BoBo79ivScSZiD3h+f2EhaRYdvgpFK78FJL/7VMloeShWKlVwLlsidY50NAd+P27VFuuAxefKFwi8RN7I1Bdn04OOmMC3RjfyfS0DTRpgqROwVealuoOPYadgdF9bAaOktKdbdhmWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750749594; c=relaxed/simple;
	bh=8GijgcFnDHbiB+e5lxq2S0RkNr0+fzqjSfyjO0nseAU=;
	h=To:Subject:From:Message-Id:Date; b=VJqO2s+3K9x7UL6xZseHMp1CF2Ye8j3YgQpIUWY/yvkNOH60oo6ddyrFGPj4Gt/VaOxKWPsQJy63nhgTE/1BHw+rReSbCyAuoOsEzrIFbRqIQU5o35fynjve4+50wt30qGotunqwIluMu+vlwMuNyaFzOoRRqjtfZqakBBI+a58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtNA6vsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtNA6vsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F955C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750749593;
	bh=8GijgcFnDHbiB+e5lxq2S0RkNr0+fzqjSfyjO0nseAU=;
	h=To:Subject:From:Date:From;
	b=JtNA6vsZE69T2ZRx4dNJ+W6vJoBvTIZrVh56wrlHt2/kd0e80E/GLwkven66t0NJA
	 pARnNlPxa1Ppi7MLw27BrIatHHv9w4hV0c1y0Ey8TR9dGwewX9KXtLvsuHxmVPCaeT
	 UWQ+PfJoNJ9mgv+Xw8wYDVtS2FgGGfuhg2I3SK8mK6sYNdye/NokmF4BAfYSnt3YkQ
	 6938j5fTXe0hCyUE+vH2VHIYqWGOaPD41B5zqUX0qh5XFJJKDIpTBDcH+Ok+nclg7K
	 bSomZ+FUQKUXnmmzNEeSey+St2J2cdnvPMqq/DspuLK3v9INnE6g5Fa1B328v0d5Ie
	 sNzAHO2k38HDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97AC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074959357.9611.1114072842014329235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056cff19ad212c61348c3c917f2dbd21355843e9179c291fa59eb41d1e229617
Date: Tue, 24 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750749593
