Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3459A78F34
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749643194; cv=none; b=inIYeKxTELmGXblwan2nCKWwNHf2tDaHd3pgu/CNh71dX/esvhTpAvPMjB5ody1I0YXx6LRcSn0DN6Y3iaJrm57Iyy/9d/X8ykRg7DQhtnaXmLXmxh8pBmfMI5h7xNOxZBIddL/LmzRoc50G13GAg+ryoZcX8l6Sry3fhQvl338=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749643194; c=relaxed/simple;
	bh=O8MTEunfFVakprtDdlVYlUNkhGx3tdmH4SDiVsNnDTo=;
	h=To:Subject:From:Message-Id:Date; b=CPyBuhIHsXZjx0RiZ3Ouvetnmlj33Z4gw2WBfQzM3RyRTIjS6WYrRnUSIa8Yv3BdHDY2a3p8jOTXInQbVZ2y6l1lBvVb0PwPAE23U87iQq/yDcnsgIvyHzd90qxbJmrgI66ctVawywKR/tfAd7uumJnez+BcNPF5v0Ot4D7saXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb4/gbAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb4/gbAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6A0C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749643193;
	bh=O8MTEunfFVakprtDdlVYlUNkhGx3tdmH4SDiVsNnDTo=;
	h=To:Subject:From:Date:From;
	b=Gb4/gbANgAKyjjSAdiIWPD7t3UJ9RBtwqzntN2DIu2F8+aFeMr1lhzCYCoE6R8u3J
	 iVTto/6auh7YpFPO+vwEqAztreuEWcPDRD8RV9V8Om0FXQ4g54q/yADJx8mmmgmHuZ
	 pTa6xJpoJs/dyYewzFnXe9cVW8xh9da8FVM6q24mjT9mKt/ERWHOnncyk0umfH813Y
	 8f93juOZpiC2OZka4deM4wDjKnFzggKDBpb1R6axWmjm8lCjbwAtMLF1EtnMNkUboC
	 AhQyvsp2gaJGArK81Z2aMyIWfkvYTvwAPBVN4Lp2fjXjZqJxLBOeTQtu51aMiCYSEL
	 fTPsbtK9eUT4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B06C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964319359.12863.10324407539899320315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99170b0f73e2c18993e7ef902877b51f1e78d2883006316c479a2fca315090a6
Date: Wed, 11 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749643193
