Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3858A20ED
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729138554; cv=none; b=lWR4srXZcLwyLMs0zSbXN4D72oVgGfh4jPkk8D1gVA6cfGRJhhSsvzca/8gelCbsXTZwaAy+4cuS2rBcxPmFAc8fki8ykYQEBL+opM+EzQ59CdrmCguo6gM/hqwS3Yfhg0x3O1T2gZ63hRvRNQR3asbwCumcSSHPFBJvmoze7ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729138554; c=relaxed/simple;
	bh=6U1ApUmLeVivM6CFFKPS9diArJczHdh4u3biMhlxa3Q=;
	h=To:Subject:From:Message-Id:Date; b=jkRyS0jx9fzXNrnideYDBQgR+5JAoXsS6jAmIzukRKGpJ5O9z+y7VPPEqcBgVkEW7QD1CLkn2qt/KjSgTHf/HbFkTXFkwBXiHPE7+pma/n8a/KjXYss2YL5+jQE8+pnOpss0bIx2eeC8Y1G4/uRiVK/jKvhMKHzYpY7ddUwLQo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSkURU4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSkURU4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB540C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729138553;
	bh=6U1ApUmLeVivM6CFFKPS9diArJczHdh4u3biMhlxa3Q=;
	h=To:Subject:From:Date:From;
	b=SSkURU4wexSrlMaOIBKZpbLgM5PV8kJaLAj0zgLfhuEPlDpH0n0PyhQovzS8tg6R2
	 umQFQ13ZoHHbGaqDIURPR2f4vN3CpWYqWd//wV81CFjpVa+IR6usa17WbMkLDh1U+2
	 Z9Wo6rO31w/xdpTEWQ4auXs8yYBgVgeCoipxIaOPWfD0GkimH0/WSZh5DkA912xITX
	 T+7YjEserngrnFiSUTZAb+NW7XMzxOLDCSh8ApFnDpciyz1Ovo6yDWF6GP+UtrT6cB
	 A52N9DXvgubP05/i2wJebSIhbpJtOTO7+SIdOgTMjf+5NeWB3BkHk7VttZxOJ+DopT
	 ixz5RG1jynzRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BBFD2F7E5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172913855360.24449.4416400410703996350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298f23935b1196c5473c3d8887a5e9402529df65670c88fbcf70794dccad0cbf
Date: Thu, 17 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729138553
