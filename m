Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9D63033C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775518534; cv=none; b=GsaGK4M8P03UMOnQ2LFBOxN+vc9t7Rm0xlC5dMhNGOx4MBkusnUrM+U3dZPn6sxzvPdCP2yXDPr9niyDKoBojEDtBiHqeQYQ5FBt6k/PCUhUlH1pYUYxux5bMMJUU15hpeYiim/9UHEdUnBINJsEW0is3/fmoo0rTycA1cWuQXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775518534; c=relaxed/simple;
	bh=0IQn4uFpymEAMWHdMuyzyW8FEWpvIcPeCYGG7lU0+6A=;
	h=To:Subject:From:Message-Id:Date; b=ux1OcXdccgYYra/cfEBkALPjS6XozeKM+ov5bXd9UUN5lPct9qpCHPed/EC2yKIxJL5J++q5v3D+XMzMMKC/I3jtKS5QUblQGOPIUa/oIj37CtTVKirXujmz8svi3loaD3yDVvefyVfTqVfrIhtzN5QKvyy2t0gILc17HBfRB2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X15q7E9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X15q7E9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3602C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775518533;
	bh=0IQn4uFpymEAMWHdMuyzyW8FEWpvIcPeCYGG7lU0+6A=;
	h=To:Subject:From:Date:From;
	b=X15q7E9eX1tCGOyA8bSlO6F7dbvEcFbunTa4NX8ClDPRF4hTqf8wytD7CVBF9vqYh
	 U3fTv3Fr9/e1GxuMTamc3/Ojzv8xqqhj9OIDKVVZ6kdlTtLBw6lPVBjTFr0LpD3Drh
	 diUNZzkb+4gx/mcVUeMum3muXeqzuowINDsxeRIkoGJmHuXcKZKGWiOXbcsSa/y21t
	 kSzlOJ+Zlj9Q2X3oGhWhNFyz7ca8RZWn9FHMBW9okCbyw9N4d0p3kbIoXT5Cw/mplw
	 Iauza1vlNAXJjs2e4MRiyVZ0zFaoc01hIJWJ6FgeuA0Zt7qP/DZl7t1+vCV5uZ913B
	 UxeqvrEDsXLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7E5FB5175
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551853368.2004.4854532251158055539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56425f1890528b5b4d56cbbbc690f2e27ed8bbed67e5d27795a4a26b5b7f70ac
Date: Mon, 06 Apr 2026 23:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775518533
