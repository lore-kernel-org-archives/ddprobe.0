Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE212459CF
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778943634; cv=none; b=qKSepb8UIp2o214Z4+hxsHCMYF5VyEDQJg9KFjnQaIEVQQDG/RAoJ/4jKARsx/pOWiJLXtmyLL/7zEbPPmGKQHG0Rfjf+NKmim5j1tvxFNYNo4gENumwhqv9MN/AYidGj15wESk71cDwYArcReRKuNTfddyL+IcTGZ9ESmWrVDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778943634; c=relaxed/simple;
	bh=46dCicu0iO6a92b4tf1bNPbmFNb8X+a+aPCVWLfEnS4=;
	h=To:Subject:From:Message-Id:Date; b=RRvJ3RpveCFDhEOAntFjv27n/Vb/VhwqcbX+IpdDsi745neH9p34FHLFYpsTjkaYlcLdeU8OtrgD6QQuXH+F/0UA93I14excDADW756doSH1FxOmRAyLvvhrdS8mRE9AgDSJxog/U7CrB+DLcy4P0BBN6grp3lPaTlF5NRG3QEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOP96SN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOP96SN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFC8C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778943633;
	bh=46dCicu0iO6a92b4tf1bNPbmFNb8X+a+aPCVWLfEnS4=;
	h=To:Subject:From:Date:From;
	b=HOP96SN93hcIInZeogv6Gwd3DU8oeQ4VxMxwUMvY2bcdYhJrac52ae9AvgY3pF12b
	 ZDJJHBAvJ3Gw50HofDQAoAo1G8m38AzIoHYeuDRu6JygjvuYH+0OYBXRwuBPB4MBDP
	 fXYN/9eBhhZEuDmugL96NwP+cu4glM7IDQug5wmsH1uZT6Sdg/ZOeDCArGq/JGarTM
	 ekEqO28tlgpY6EofvpbPdFUnxNzUvE5dNuZqwQckhuh0dZ5t4xMjVgEJe61JednUIg
	 TFeM1T8SVO7l0xO5NCLdI5BcoOwMIq9Hc2qj4suhnf3pMjaFdLl3xEcYeAqiFed1On
	 J8n4DRwX1MgBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9857CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894363374.27874.16883916033446180548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81cd7acca990ff3e68b92d684df70d21080a346c53df3006e8a596b8e81920a6
Date: Sat, 16 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778943633
