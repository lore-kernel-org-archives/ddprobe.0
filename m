Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419862F84F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780709674; cv=none; b=s9XFxIEyMmdgrFap4pxwgRm2Q+FWQIAXC0pIEK+DrP0VgE+B2ae98yjbUtaioW31Q3Rz8QhFBY46rJ1N9sBnWJKIuItXZMHOubN8MsZsuQ3yDUwf73a6NKdKP1adGagmR2hjqEFW/iStuLUnN0CsVAKBWp9DSJchHE36EYrof1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780709674; c=relaxed/simple;
	bh=J4O2axpuN4vUrNUsRFrfCEXerxB+Ljz2CyVsK2bu34g=;
	h=To:Subject:From:Message-Id:Date; b=KCRk8QYAJwtD+gTgtK0a2BhgfYRONpXkdK9XpdMk60yb4I2ojL0ytFVkl0NX9nlTNqkELrwMg3BJiA4yKw+zdE+tEqI+jxYotFRdNWdajAG9DNZEKF5/ia4R7zcR42416hN9I45IG5vG//HgH6DJm9L3hTFXau37wi2n+S0Rz2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQXVNFTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQXVNFTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C881DC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780709673;
	bh=J4O2axpuN4vUrNUsRFrfCEXerxB+Ljz2CyVsK2bu34g=;
	h=To:Subject:From:Date:From;
	b=QQXVNFToiLUkAgbQkmQz1I0oddhFUCmE0n/6QqAzGt7vDluGL2sQvHRm4a7UGY0Td
	 tjfKU/DwMKSucnTkeT9C+Q3RVMjtl35jhCXBgIIL9eYoLO1+XDKrwkD10lrH+fOWHf
	 cFKFEfduJkANZWEBbdsNG6FHJKs/7Ge45fRAsmfatTS6FVzFA8LoqVbSCc+dRl9Rq1
	 vtLhQIuPMVs8GfcD7fnKLu8VaQ2mETzay3zN+rqV87E5/nXaXsYsYRBcSgL8z+lkQ8
	 unVgmIPXNVIMYp54BmUN+nLJBhawX1H/6VI0TLBETzRhf/K0v5eKsQtsIwPFpJcJW4
	 liHQ59iykCHvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEE8CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070967368.19275.2905809154830321415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8238c0d2eef21c21b299972006025e9584a9e885a7847eca954c941e5e980a
Date: Sat, 06 Jun 2026 01:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780709673
