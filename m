Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E6614EC69
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714068143; cv=none; b=nVGCw5+eEXH+KsMYd1JwQ7LkSjH0cGSAKpeFLvN6chX0KSId4AYNUZmTKTuLON3I7IfPB4R0Itnl5N8BkODGJe7xUDWwZZ94tiu/0FSC+lAOBLLGqxg1BH1Z0MZoVHvL4IHQK8HRJj/dMknD80KFrdIC2xYOm9qXB8oGinEl/lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714068143; c=relaxed/simple;
	bh=rRDKwJdiKggsQ0y+phm6BeLVstBS5YwteBPoPJKoeg4=;
	h=To:Subject:From:Message-Id:Date; b=lfLqZUhz8TF/i3LHrYKN0DJGYvpKQSfyJM0rOv10rstIL8FysYurYitx7POJoUsPMMtsaClm48g0tHWVGPWyzlx4/ZvlIgzTMq4QKYq1uCSUfOinwwCDp+sbwAOwYafH2QHIjFnJvuH7dr/bGoR/IUop/twMpdL4eITlwS0NlVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBfeSTsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBfeSTsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00962C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714068143;
	bh=rRDKwJdiKggsQ0y+phm6BeLVstBS5YwteBPoPJKoeg4=;
	h=To:Subject:From:Date:From;
	b=VBfeSTsStWrr3T30QbldtFFBub1EC4/ckiy3AbfZuFS1R+gPt1BUaguxqULFDUCF5
	 aTOYzaeT2/geQpIbq/mFvnZ7qWT2Zw98k9lPB6iVZ9pVUkx/pdiHXWcjdLzOWBp2HJ
	 nXJ23k3D1L4/rHNONgi/JKiwPW461Lrse39JIJtFv3Yi92pVqq7ASljjdsVOCUrEpt
	 LV9+rB2zkkQk73IUnPm7dseEguO8fE9nwI6mzL9HqGdtCLjlTK6w4y2h+Ogtd7KtEO
	 IV+uX/1p0B8jYfHgJ1/RalDx8En7oe40WRmOLR4uXjcuN51lOpfhR4rrLN+k3QEeZa
	 Fa4Kh+/Gibzgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5FE3C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171406814286.16327.15381651194561048015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85396d7e05d12b0a3709b5a03a602aa999c4e5350170db3c60507d1a4eb09c5
Date: Thu, 25 Apr 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714068142
