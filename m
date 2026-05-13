Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76BBB382F1E
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778704234; cv=none; b=pUUyPdRM8leS6pzJetBAEaSlU2elPS2r21zarkXU2yXj38dwgj6R+Ou/J8dBmk8W+kS1qxWxUgdjCE8d3Dk5gGXPp9bPObE6jASIXdzg+qcO0Z0LGZZHSnxap8T+S2nAVkvPEorh7CQtM/QgyCnEKvaS2/8E1niawaXPo+R7L60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778704234; c=relaxed/simple;
	bh=s6HkBzeJykx0Z/BrK9bPgUsLUqISjzFYqQzx71WqmQQ=;
	h=To:Subject:From:Message-Id:Date; b=CSSLnaSu2oTZwjdcTwDBtwWUWiOna8m4XnGLk+z4mwtmKhFA9SLh5tC1fKltX+4J3eyVGW9V4Se4gFiJjtVraNFTiF4rAFypqdgoWf0lhJIE00iFWgAhYDWfj7vf+Hfb7tQAGijCiKJxp3VNuKbC+Q2fxTU2FdFvw8fGLvhRkgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1dJIbn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1dJIbn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C488BC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778704233;
	bh=s6HkBzeJykx0Z/BrK9bPgUsLUqISjzFYqQzx71WqmQQ=;
	h=To:Subject:From:Date:From;
	b=u1dJIbn/s1NLvLYbwTEnetNAyf2GJ1lmgmNborntlIEc5Mr0OypPEfQeDW6WEkGQn
	 MyNZcDr/vnPwuF4CIaX4Dj5dnz3WYCZ1G0KGwprHIQhU3nwoyBEHrF2cmkT8Dm8WS3
	 XaaHl0sdYOth5WWU89UWzayDPLNQXVARAdPKRrgzxO7CQv38piOALK8Zp9VqQCCNUq
	 X+XeitOyom2v+sm9RY4lJSWa0MyeoYNZuh9NkUpBE6M55ZVaDpEghH6o6nTHwX+5/H
	 VhecfFq+sCh7K0EEq9rxYL1JXJxUFEoYlwGyNEg3r2gUb+UM5vcT0v3NQ112BKNf2/
	 btD/4ee5NYNGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B13CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870423372.20711.5982994309271218653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d781a398ed8ff30397b356cc933e375e4395dc8bd10be684106dc72ed83a4e4
Date: Wed, 13 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778704233
