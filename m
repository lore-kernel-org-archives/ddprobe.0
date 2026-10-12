Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BD644CACA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791796234; cv=none; b=AveVNgOY2r/mWYpSiO2iMYZ6+rS7DGRekPRBF2TMQZuFgQhq5Tz7lXzq/et9i6wFAdknPjMh47q4y5eh9W3EuCPcelCRtVBnHrUxll24hpLnuheE3DAwn7tIsnRxygjsRLHJhs9RjeAInMbtYUV7P92k+gKM5iNhrnEYQ2hZEiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791796234; c=relaxed/simple;
	bh=6uxlWB2b+QyoZ6NAQdfvBE4CbEmIi065wrxwbWFh9bY=;
	h=To:Subject:From:Message-Id:Date; b=UR5I1BCyeMOa++wxsDfs051x0FxnwvBe3CvCAJzU5EjtFVfLMg+f6AuoIfzM0IMul+O5+yQepGAjQQKDIDVWDLBXUkNiF5dQOUMCuoxuOGWb9qJmJoecObXGXxYkjhnhTkV87PGiuwlpTWoAwge6a63/1DnjwSIbwgsYldJ8E+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWeSt8st; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWeSt8st"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCFEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791796233;
	bh=6uxlWB2b+QyoZ6NAQdfvBE4CbEmIi065wrxwbWFh9bY=;
	h=To:Subject:From:Date:From;
	b=OWeSt8stYL/sy0N2dfV4Ll4KBHJFxsLeA+Lj331Ch3KIXLaqqSHzLYr7/Zfdacwzp
	 gS1IMBy4Y3+1TXzUGuW8UP0dHCz7XPPdjU8aF6pbQ9yPm+aGgIMEGSuUgq8JqL/jil
	 2TbikbLcSo+qvSQ1W70Ev9DOTssYrI1UenUqxR5xJWr0Jv+YJd9Kuytr7SS0c+my+h
	 vIFudEIXT9kShff41NdpAHJcsppZTvTFIVT0/J9xL7JplDgJYyngwOKq04a5nAOnnx
	 /zO1pYOYR4Vep3D3fdP2XUXJync3qbSxcsPC7MP9EPWYNWDn4YfnmxvP5FAF15btCM
	 lJcGP0P0gBnow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA101CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179623368.4540.7327089871946023133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2b4c8792651daa72384687161b41cea1cda811959916fe9f2c04cb49f6f38b
Date: Mon, 12 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791796233
