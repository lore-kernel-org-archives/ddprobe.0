Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3D1312821
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763412715; cv=none; b=a0HCqsDlN66tL5CWmW/iWwSqQjSxwZJxl++6rrQxuW7JPMrRrSKSYWwvweAA0+Nwv1kJbZ64cYCcdc8BPLuudzVZKRWUnm7v+tJY+/vvQY6XKB22akfK+8OU2Aw2kAtH8jIAVeNg6B5TpwA0U6JcdKfxToV1S8vQ156hbCm6Azc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763412715; c=relaxed/simple;
	bh=6uFXrelsOBv6fzSlZPxHSmF1acEhHE7Xa1r8ts8/ZX8=;
	h=To:Subject:From:Message-Id:Date; b=NMgLZp/ZZ2VJA4DXPLBbvdSJH+pDzcsousis7tGJDcknDZYpqckE4t/qQ13x+rLe9TwGCKwPur5vPbevvsvDSdiy1+y4gE+zlKgxkWQTrLKMNPLinxOgb+untmyEcEKuloBbs/FnLc3dAf+Cjne+yxvbVu5PakuQbNCphC7lVLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpbogsZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpbogsZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DA8C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763412713;
	bh=6uFXrelsOBv6fzSlZPxHSmF1acEhHE7Xa1r8ts8/ZX8=;
	h=To:Subject:From:Date:From;
	b=jpbogsZbI9hp/8TOes/6qoqeRtkzAiqs4PurpEbM8kR/BWTyesOTrhHRujRGPYPtS
	 RGrY2PFkFdpaUOkolLeoSl5rCxNKLY2jZlyHRzM0eQETOAaw+4PN8s4hxLVze8LEOz
	 srU/jsj443qznl51KYK1NhZa0tBlPCX9nsXC7dSJamxuzI3HZlfDqvmtwXhubtb1fP
	 P4eId4AB+scd8vw5RNwKR7wEaPG7i0vupXtRvx77+og+eTZbE/skTdfxqmFdjtQco8
	 O/cj0+WwHkmQxIjEWVjc4E932PfNxEO+HLenc4M/eKywQjyG4g5Zp+88BvZ/Dx5gjC
	 VUvEbqm2Dxa4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A93CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341271358.27509.4823502477175788323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21cb4a402156d79bde93e4569d3504a69fd72dc085903fa5e6de371d6b4e6241
Date: Mon, 17 Nov 2025 20:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763412713
