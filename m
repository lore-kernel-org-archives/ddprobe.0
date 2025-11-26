Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3295D2DCBF2
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764161574; cv=none; b=BC30ShOz2XW+7Rr8qOdwony8QhqYLmVKnx4e7lZq8sHxxil9a8zOP1ZuPDeAbJnxQKUsJf+43QLUjSrBsG32FKnetX3t3Mvjtu0lOrxSgRBvuCmtPNszG3KToiFHRAyFJtitP3gyOZu7YVKtdNoP3WSSRNIalsNUqAPEwvsu5JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764161574; c=relaxed/simple;
	bh=x7bJXgnta1nYyqvmFBMKGgT+2fmJB7sknOY+yHMOPUA=;
	h=To:Subject:From:Message-Id:Date; b=tIO6H3W9YiW8fg1C0CxqLEmGYEh9GykHgqrfzWgQeh7K2Xf6lPpg/4KxTlRIdKzo3J1qo9AC7kkPb0HLmpbDqA+zTbqyIy46w35FSwk3SJ47tPzGUH6Fqsp16XEqNxoM46uCXEputyV7I/GdJz3/8dHxm70BvqD8hqbu2Jsq6FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVJKnEZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVJKnEZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D6AC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764161573;
	bh=x7bJXgnta1nYyqvmFBMKGgT+2fmJB7sknOY+yHMOPUA=;
	h=To:Subject:From:Date:From;
	b=FVJKnEZ/k2WME+LxG+0Jpo/2pxfvo/pBjFD1Py0S1X29sNfaEFejwVwoVmj8ZR0Yp
	 6MA8UWegcTJTyiJGCuXFqIR2M15/i9k9e1szHvqg7sjHzLUVk5B+jEyNQMmfprX0GP
	 H8IRgIBSbQ7xyvO02Ib/2bbk7HUSRP1Aud9g3DxxtEbL96CCJa39eqQ5z+POo3wy5C
	 PQLYbn/ZW0iAW9UfTnesA31XBGVqZ/fVfRjm7kHW3TPKC3rf0DlGUj8x0JUCarW39Q
	 LYdYPOKiTmwphvYmJ86DTwj5xGySTq/EQJAcLF2eEjrOiEpaiA1NRjB5jvE6WenJt/
	 vgnPYydMcBHGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E4D10F2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416157358.29985.17538511131200967428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ddccb139c1fe00395e3df7ca56ed577a15d3a75a08f7e3fc9794b0b56530551
Date: Wed, 26 Nov 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764161573
