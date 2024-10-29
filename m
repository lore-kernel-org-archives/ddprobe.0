Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07E717543
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730163354; cv=none; b=LW2m3eIwY1fFmLawVIGED6zxy4+02p4RV23TX5RGoEpas5dsrcJuoQX9b9MZHRB/cnaM1tEqFX0BHH4z7Pdt6rrsfcE0sifQkaLcGp5f1YvJlB92FsoWpYO4ynGXEAuphhPqwD8iDKoCo5aFEMix7+s+bNb8ofP0wUddAZV/RKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730163354; c=relaxed/simple;
	bh=FJ4nvgoafp0I8S8Jo+2/qOgB+lQGD/dRQC34Jk5oqKs=;
	h=To:Subject:From:Message-Id:Date; b=WfiFYrwj3oQ92VeEKVANpXf99GampcMxaI/2swbi4h57TAiTafNWIm8M5AGQwqRFC577X0/Bl6TR+dlkTlpVGNQY+FtS3n7GxfZyA+bYYRmfgndtr3btcc/rTDg3GTQWdbH5nezcdTI7T0wpTQS8cRtXg0qTMi7LjyTIBIFU270=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U793ovzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U793ovzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E57C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730163353;
	bh=FJ4nvgoafp0I8S8Jo+2/qOgB+lQGD/dRQC34Jk5oqKs=;
	h=To:Subject:From:Date:From;
	b=U793ovzLD99fCO/URZ/ujFWauFQ/q23S2dW4ql+ERjHmL1RSx8iOX9S/7dphK6AJM
	 Bma4SgLvEfihexC/fNeiLTH/lpD694ouJS3VCCG++SU2ts/tZP5qCboB6RZzL0J23l
	 UvwV0Uxvx5Ef3PyHw7z8VH04l0ZUSxkL6SG1ss7PS1JQd4vIm8eCVNp7C3KwkODsZL
	 xh246116iLw9ljircPi36e6svVS6uk9WHk49c/1GYBD9T0URWQ/tkzHHHdvbkVXsns
	 alcYvqrYX/nWYdPFbj5mR0dfrXJZsxhn6GxvloikEYokmVBvOFSyiVCE6cYfzRdctL
	 XhC0datKZbGGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F7D5B85D
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173016335358.2033.5384962958026914110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701e3c1708c0d6bc5f10b0d3c324cb9a79bc09f5dbc48183a44b4be0af82c569
Date: Tue, 29 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730163353
