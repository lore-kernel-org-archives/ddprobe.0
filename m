Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371F21F16B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738244754; cv=none; b=NaI2mJtl9hi/4p4onVSxfQD2AtqhDIDJ5hwFCPHQrcsfGgoy14DGA3XsvEDSewaFZpNHd0TrNxA9anWi9Go1drsa5rquflDSA6eiCbJETXjml/M2RuMUh+yHRQbMk11i+wJbd3aSNcBDeA1NeJTNtBn73FOfKsrm5oQcNgYhIYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738244754; c=relaxed/simple;
	bh=fQ8Md9cboebo72+sLh9CkMbJCz25qe3eYwDpQtCuk4g=;
	h=To:Subject:From:Message-Id:Date; b=NMFXaYLgdQcrkI1Jj1CRZiT6iIkA0reGP6traCgZe3mv8mckw1h/gmNleUa2RetLHeCLMNVz0T3+xVyMWdpBffblE3oT8PirZ+xuhnt7PXzB1GqMk4DgMoiuOhFtlUZFkqphzv4DuJ0iW/kFUDlSCi3OeUgQLDqfiRl++867X+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfBlWl8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfBlWl8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF8FC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738244753;
	bh=fQ8Md9cboebo72+sLh9CkMbJCz25qe3eYwDpQtCuk4g=;
	h=To:Subject:From:Date:From;
	b=ZfBlWl8yYV72sdhn33eKimLNDCfeokxpNoAL/bN9souPZccmUt9ih+fZLJbE4agE9
	 Laslwl9aJO657swsOdJvFZseCJfdXZ4XdTYzNP9Lwh42veB2I+cWe+zHK++EhaABXh
	 UB1/gjxEHNfDZv5Frt2ff9fOvBDJ+g9a8pAFxD+Y9jG+zw46IO7Gawz4NH0bFE+XGY
	 sLEdB1/TE9XdHhTEOQtIUbecayz1We+ajepCz+zZkkMXB7CmfaYUFk56W7fDXJ3Hyt
	 PtGVNPEaqlb3hFoGMx+TzXdISPsmkoK/DzZgq/A33J4xUz5su9IFu0jm1mWi5y9qpB
	 Xrs7cidVcuhqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98356C0218F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173824475361.9041.3478083350130861759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 184bb6c2f337fccdf1b0a413c2b8e52380d526c7af550c1cef248b6636765128
Date: Thu, 30 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738244753
