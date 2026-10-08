Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C70F37E5DF
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791492634; cv=none; b=tkVkWKREV9h1n5/gZinU6OIFeiZLZP8HyZDIt0Lt9RShf9AlVeqi4qtulYX+kzyNiHsRozp3bnUnYY5SVq0eFkizajK8gSUfoeeRkvl+A1raKRMSKBL09w3aBrODFmL4xPeP5dkgRmzH2nT7XevKagKjVj/eOkim79lN4x0xAgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791492634; c=relaxed/simple;
	bh=efWZ8NBECV8JVeIpBJAwXcAtkQMS7oNKB4d547Me4dU=;
	h=To:Subject:From:Message-Id:Date; b=VuYg7jZ1seuinldGmJKycegntDnqL9cn+JNsF0Dgz9OtsX0v4kfuNVtRNTFwHT5IAJFkZv2au7O+LGXJ9HQiKaP7eY1mcBAei5kS4x1g7KRJExg5lR+Di90ybWYqk7f+fz9eiFYJNa/C8ydlJXSATr1sjIBa3cCiWYiDol+RfQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoR+faIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoR+faIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25EAC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791492633;
	bh=efWZ8NBECV8JVeIpBJAwXcAtkQMS7oNKB4d547Me4dU=;
	h=To:Subject:From:Date:From;
	b=FoR+faIe1McWKGKeVeKnipv5UFr7Olfgpn+j23PtEHAu7cuLLhma0WEYbbx2f6ZSC
	 Rplj/7LlAAtJaPoxTO6sar+WN+pM4EJ8W2VLcd4UWebZjiCW7ZX+r+r779o4mBnsNj
	 cY9q2TlETQli7O2tVdTRBrctQhhmiLHRDkkJSyyS2nID9R64ddaL5AZ2IuMqrtIkN4
	 D02QHECS1IccW1bwLrTXiMnHUVZeyWVnmqSPZO8qc0LH7i3UOu5JoHb17zDy9dTuAj
	 PrkLlClHMqQwKXQB4kvsgKce7BEq9As/p0luvBm5aE3sezqE1V6Ys3czjRmdyBB9ip
	 czt6k+VPxewhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA5CCA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149263369.2808.7717005591242639607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063bb90c43d7ef06c81bd6976ef822372a43f2fdeafbf871bd35fdd06b04e773
Date: Thu, 08 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791492633
