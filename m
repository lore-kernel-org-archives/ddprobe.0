Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E052C15AA
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766918634; cv=none; b=mVGsSftGaEJXqz/L/jcKk21DUAuBKuWmxSJ9pz76CGEfhEhFaFm3RyXrDbrKZpurpDOcDFxOctdvJIj3D8sU4A4u7Hhoy/lFjIM+wmo3Oe5XJFq7ctCj8XmDmMY+GhpWxmc+whNVZ44oafL5exEFTJNe/qCRlAdc7yZA0FNl4Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766918634; c=relaxed/simple;
	bh=FTaYucYWKNJj2vjmgtHjXQgwBoECqYr/kqt1t9LOn64=;
	h=To:Subject:From:Message-Id:Date; b=PT34VPp1SzafRIikMPbnId1LVjGKOslPAZoKu+kCCR72ZqEz/sm37G7wRcbjG20vVoe1/BKCfhfDkEQfz0DQVHhlUv47Ub6Ack1wMSXDr/PTP0uJr9RIOdyygGgVnEZfrkjmJui2PFOUYXjNFdYePg/vi1Lyv3QINRP00OHYNew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImMr3Nue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImMr3Nue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF156C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766918633;
	bh=FTaYucYWKNJj2vjmgtHjXQgwBoECqYr/kqt1t9LOn64=;
	h=To:Subject:From:Date:From;
	b=ImMr3NueLZiQw9V1PXm2RaPz2ev6WioiLQ1nnkrXuy7WTeCMwZC6nwURIh0UGxOwP
	 8w0GlwPrZwJSZDDmfC5EZDL3zrNmxCeC2Y98qZH7LYT9f4xYfxIyvm7CCR95wCWora
	 HKreGE1cMkX4KE9j4W335ISamt6nRbBXI8Um+jXl6wpz2Cl0l99j2kaf+HrDf6yNx9
	 L9pCqoy61yidcoI76+fpsEWA/AePPJbmRQFOmg+n6ATHeJ4Z59GR58kVDv3cwK/hz4
	 PkNtLg+A/k67FlIv34pi8zgMjV6ZEkmumP1GnhyMs+9RyT/+WmaRJKj6hY1/kqWYAo
	 t2qDqbyXuIcSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1EAE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691863360.29642.17237610200848713366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9459daafb2f83741c534a17420478bb5801ca848d88409e663cd951ebcfae8
Date: Sun, 28 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766918633
