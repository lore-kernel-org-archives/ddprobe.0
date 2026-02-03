Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A60633CE8C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770120834; cv=none; b=Nus+YJ890rwEnCwPIzF1eWi7krI0eBuJ7txlEWzqqDGPD9dEW2ukqimDUNo2/A0nmPz4mCVG2/II17cySP4ma+Ei8G0AOmucaoeY9g1gNIXcRfumtgSK4Xl6ukykmABpBM+d0hZn52ghAn2NfTawzP+iEoxQBFIbpTQaCyJcoxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770120834; c=relaxed/simple;
	bh=7Gv/OxL5ijqXSIdVZ3iAVShQyDfOIZCTnoyhzInYQY8=;
	h=To:Subject:From:Message-Id:Date; b=hDIpQgwcyqGeSlS9AwFvyVDEZq/QHJak412MFLMCyQfrenE8FAaIxxLmSZHKS0gcKBKiC/dXskA39nOa6Md8Wfkfd9lNCEj5KrJgad/VyaIq+fz+oNkqX82oePcCio5LfxoYCKUAJL05HQoAx0KMyIedHMSXov7GKO9teg9pMYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKTbY/9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKTbY/9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB3FC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770120833;
	bh=7Gv/OxL5ijqXSIdVZ3iAVShQyDfOIZCTnoyhzInYQY8=;
	h=To:Subject:From:Date:From;
	b=gKTbY/9Z9NBqO9irji51+Wda/ZwcjATPZCgmx3d+XQgrdIb9MModx/4qUGH7Smrjx
	 Xs9xBnwsvchUIuqszFGdw8bh4JWuATIx9nlGjku2hbGWWnb1QiMmbEja42chFwMIwL
	 1OPPeHnwK65aUZpIdfEh2EpUnCrcKZuXXRluypCRSck9W8d2d+cAVN3zz2xUVPnakO
	 Lw/uVqnvCV57rMMrLD+KOeWeqpVdnnyvWqTQuB3oUo8R9E7w5uAXEXhD5dqBwe1WMi
	 8+tsMa8iBpQK20b0hUf/MfNjxjgEmK3BE/yTQrC5lvyQs/ZxBZAsRYZfZEulmZUXwu
	 SL8scUPKFC2cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C434E87820
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012083361.8681.4042393945087982009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf44db4de30f75f955c7c9ade95a79b966f5a4c27426943c94cbdfbc09ed152
Date: Tue, 03 Feb 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770120833
