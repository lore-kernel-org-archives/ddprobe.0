Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039AB2EF64F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763586714; cv=none; b=QGq/CJhIR2u7FVWuqlfpJIrYtdQKUuUMSPxBKOWwaQTqXX7t/m1wfp5z0u7QLPZa4tJKkoI20qr5Ui0fnZzKnIGZGtRzHd3zhFc0h5y50MMfJ5Wi3QphmNDstiwp6nFeWGkVNADPDChrMXNRwNLS64TDYSdY+whxGYgrm23wnpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763586714; c=relaxed/simple;
	bh=sqt67nNweU4p2ElTvxmkWfkkqNtDHazs0J3BKp6J/gw=;
	h=To:Subject:From:Message-Id:Date; b=i6eDvv347fc6tMmPr0cvIkNybtnN8mpRSaOBwLU7el2pTnODTdQG72jj1xS43tui/dTr3pBHHmJmp8jLsVG4u5dIDiJfpbV265f72T/geNyMf6ey0mc99L2kaERwYyt/+MP1ISP65WZFyyO4A64iArg79r9k+Re7He9AIVEqR2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDVsg3NK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDVsg3NK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA696C116D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763586713;
	bh=sqt67nNweU4p2ElTvxmkWfkkqNtDHazs0J3BKp6J/gw=;
	h=To:Subject:From:Date:From;
	b=lDVsg3NKWVATuLCX2Hcx3RMoKmmtgX036LF1DGB5E9SZwKGJ+oiEV+NUmJb05ajeQ
	 FzMn1WW2LJHpl3pD4vETKrLHC3IyimG1qmkupYi6qSk2G2ayXnqYUW5Hhshgnz3HVv
	 +lchuJLqRj2sawZ8Hz2K0RgeoFRWLYhFdie6fMaz1oGs+OVIIxFGBc2R09xl4/l4ia
	 UTs1TkKVUcD5k3OPNVwvxe5sNMZgAL9pwvwQ+3uL9HsNLXECarRdyvNWkM/YUXZuEl
	 +h8PhV2Aq8HzVtGRKfeqvI0C6N/+EBMg7nMtKJS3DTGWks0+b0OyWVtqDVowdghOP5
	 55zpPr+Y/X0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B78CF58FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358671360.16051.6502754497051900744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596e7e918c7e34b8f87aea0cd4b85f1a4ef78b19cabef5e81dfb07ad77750a53
Date: Wed, 19 Nov 2025 21:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763586713
