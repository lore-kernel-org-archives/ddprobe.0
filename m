Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4402C26AA91
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767122634; cv=none; b=NbmfCIPBaCvyGqgc1liQM3pDEnkn1ylpIEsSwNyCs5iX0/EIHv3cHyG32khqrwiU/3Wld+KIYyd22t9P78uq6c5C7ENZ+RjnuOy4z8DKrovsovIOCCsn8/wUZe1eW1eHhsEcD63qnf492mUvB7FjVdapfLwf2stFIcb+Es8YkeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767122634; c=relaxed/simple;
	bh=lSIoP9plqDEdzBthOLflRxDGT4fLpzmvVNbFqr+XZwk=;
	h=To:Subject:From:Message-Id:Date; b=hjR30CzI0/INjdaAa0JF4dskmBDvoW96deZUioPJrMiS1NEv+hr4luN6N/gXdDBdXl4TrBdgnzskUyCvsN9WEjGv/gPt6jFcl4LYulZ2m8FiwcIsG8eXTAFZlARk37fpU2cOKLhQkprZmlm6V4XCLYQoDelgjwl+IFzeVyIrVE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAD4w3Yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAD4w3Yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74C4C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767122633;
	bh=lSIoP9plqDEdzBthOLflRxDGT4fLpzmvVNbFqr+XZwk=;
	h=To:Subject:From:Date:From;
	b=tAD4w3Ypi33dLikKkJMovePJPQsEp3OOx1wnlESs51R3eVv0KrB1wngLtLv22Xizb
	 Vg44DncmBAAlbZ4gLy7K6Z/R2C2GRlcWIJb+lAua68PLXb/JTPla6DvMajrsnYs1Ie
	 o+lTrI0LY+IUnZf03cOqVG+sejFlN2RJoMcfP2B+lYtGDoiiwPPzxc2p9qm8lEK4VW
	 CMJvrpEo9EoW5PJIGBkTuiCglDQUvuyq2omiUz5/p54SWUTEiOPX/Z6TxoIcgQc0xa
	 33PFQTwj2DhWo6OBVkU0U8W/3O6dlhz2BAuUGy//57bTLvSWFlSK5Dg68YnfwYDvIa
	 tbfCEwF3gz3Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E76EE4998
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712263357.29917.1003448989033140599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccd03175edda6c64430e16d5c7906b0fe714848eb6303431701d7837ec53d78
Date: Tue, 30 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767122633
