Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34588211C
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714462943; cv=none; b=MBCHq1L/bi7JnQniyC1NOowX77n4oqU+V5K9bUnR+wCOGEt19/AMZOlxgaqVjOr5nioP9Rb0eM1Rr/b2Z9GfrIXxAa/QbuAoYXdzKUPMLKN8/Nu9qsan9NdKpc6CDDZ+8nfpBGALnY4xEVVk2WRPO9wec8G6Cl8ebyOI6Xf1Zco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714462943; c=relaxed/simple;
	bh=fBgeKiHUziRcsgCoLQDMRvI+swxlScKgyl044h8SNWU=;
	h=To:Subject:From:Message-Id:Date; b=VvOlcQ4qwDYMFNld7Ct29I+I8bs8OX927qK3OefCxIKD1vMApsEmGl+4PJKRop+enCi5a1O996w0eONJrFwWnTj/NakKKBbDOTg5i4lyEHQct/CdkKHUjGtKfH+MaLAfFwUouTu4C1wUKyW/+hWaIciYMA+yelG7AqcjRSriP/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESrvIuEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESrvIuEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6188C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714462942;
	bh=fBgeKiHUziRcsgCoLQDMRvI+swxlScKgyl044h8SNWU=;
	h=To:Subject:From:Date:From;
	b=ESrvIuEvnsqHSBgKJR83/Rzvz75akBxOPGLLOpnUWlW8ay2WFc6ij+0uP+89Tmr5g
	 jm5FtImF5D+AAjatFER2vhrMtQj20OOfKE+MAMB+iBlYrETjnKJsyq/1AGMikxo6OH
	 pW3gDSD4TbRQFHIIsfqBJrhGdyDRVQ7L0a+YvD7KaFqsvc1de9yY15dzu5bDcvgII7
	 4ELW8B1unkPxNsdAEVXiIEccT8NvxwgU4u7SYq7DpNP8XBy6CkKuuUFq5vAsShqgop
	 0ndcoUD1N3rjnnln6TpLEU3Fo99AMakBG/Pdwg5L/L/NkBdiqOIZZyHAEXgDjzNS1Y
	 R9L12Vv1FfeDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D68C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446294278.20882.12946823276681636502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfeb00c0fff63dc55470d292eccc81412a4a967d5451fd0895f1a4b452b1f3a
Date: Tue, 30 Apr 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714462942
