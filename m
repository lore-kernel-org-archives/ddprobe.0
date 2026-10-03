Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA8C135A53
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791061234; cv=none; b=gTDMLGMo/hkBXY0jimLd2EFRSPjVY05yrbAGF00VxABu39Canh1C+oGsPeXwTo3yujLipqr0j1GLHRp8tPtU6y2UD63ddySZHXY9RKh+6a4aTCmFruYzXClWpZCfr6bgBJgqG6exrqTLq/uGLxFxDAv3EdykobJyO+XGy+roZg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791061234; c=relaxed/simple;
	bh=KYrQYX93XhNtiy0LySp5q2DrIYCoBmzBPpx9Kqb0vPc=;
	h=To:Subject:From:Message-Id:Date; b=bf/U1a7A5wHibsdNEq8gtHhYoXL9J6eyldKkqnbDsbDvthnXP084P5DwZSVEQP7KlerTeVdjoZkGZ9Lu6oMoPilzCmL8UfB9UsgbELmeIWk82IADNR0eHXKzHdUkEKwHfcPzMv/W1EzMU9+xu8Td6JvMnwX0v34d9M80Pkz7hXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcujbYL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcujbYL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E731FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791061233;
	bh=KYrQYX93XhNtiy0LySp5q2DrIYCoBmzBPpx9Kqb0vPc=;
	h=To:Subject:From:Date:From;
	b=rcujbYL+SrVcOGeJGdtp/jOezkoMWfySdTsdbKDLt4R1Pz87ytuAR8+g/9WAd+ESE
	 d31bgwrilz/SdvHvz/YYE8DTNN2NNlb7HIBnlRElTVawJoiqRCyApwqzoQ0QdBEfJR
	 VTFKoF2IzrXavxVYWgQ9BGV64vJacpQyd0uJ4eSY5sPdPwBFWuDWKUxmaR2TstuF60
	 e/IcAUkOdz1LE8/H6xg5gDmQp4wSC7gABTPnToiMHA0H+ai3ywI4l63Sa9hENy14RN
	 U5bAdyR7iBtIjBf6KJ81tkFQZXnvdrvNYqTkA4l2/oUzvd6PoIJ2IXcFVSrM13qOaO
	 7jDgezQg9I86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE2DCA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106123373.5210.7499949913104246091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5f53229c3d9037086653c402270dc69cce40c6fc992c3a293d6e76514116e2
Date: Sat, 03 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791061233
