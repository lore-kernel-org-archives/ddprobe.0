Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE7870813
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753837794; cv=none; b=Z+Hz+HhHOFL3nttLugldmPGGjJv+gZdsmr7mrlzuoc5otdUcb52Lbfq3VbLsx1ZiXSvXLKsnNYmX6rfc/toWxL+Ux3zAPsIKkMZd8TmmfecIa2cI4hiSqKbtQu7AC7Z1RcbuJZPaZFktDrgHAqkmHBNSxsEn4CjSoHLmnJWWvqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753837794; c=relaxed/simple;
	bh=CKO4uxCFH9WOkpyZ5c/je89w2g8AN664VSCXSEbrw0U=;
	h=To:Subject:From:Message-Id:Date; b=BS/YxTGAwUT+r0LhUGyk5RnxH3hZrVrXKz7S8ODSxJ0WdG5D/lSNUa2nBLLcCmuBg8ufvFB6ShYPiP1lZtoAE6KHbEKYn/a2kx9w0h0zqQjDS6BQEybPBn+HwQktTS2DgFUl+7E3hUXFoEjkUMWj2Hpy1l47IrPTQDm8Rkm7nSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHwrKDpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHwrKDpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A180AC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753837793;
	bh=CKO4uxCFH9WOkpyZ5c/je89w2g8AN664VSCXSEbrw0U=;
	h=To:Subject:From:Date:From;
	b=mHwrKDporN54LT1s9AV+0NIVGPm7HYOWDb8Ydgj26j99TEdAorWrQaQznPHxVI3LQ
	 q6qVr8XAegLLD8c6y++kr0DiBO0vhv1kAkctBCDk5rMobBh+CeB0mzIsfZncO6FlYe
	 IZ7hcIiVp7eM9zP3reiHdTvjMM+h9ifS/WEZS8BAnfIAxpKbX/YaV9jQPSlrRFt2uu
	 q06FA81u/etMcy/4/CCcZRbHziZH3x4jCpqdjiwAHEGMCrcBomQtUkhZ33cUa4EDjo
	 j3Zm4g5D7TGJga0tgzR6y3jNp9mJxYvmreISizD3HMPYVaJQ0O5T9dZF6Jtlz5lgtZ
	 DaDmrolhwWLgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2DFC87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383779357.19616.6778795539140261363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1464602818935c4b2005a1a6a6d43193b045f48111e6f653f8260a1bf077fb
Date: Wed, 30 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753837793
