Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE8A36B040
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768977234; cv=none; b=Lp7Da5jurqeuh57BouzhD5D9wAV4jrB0c6DftDlat3/SWq2gTEWqKxdcTZrAK9bI8dcGO0FisoXK6V1xfEv5ie+GQ6SZ52xjKR+VCX9ik+77wMZVWkLdnr/55CdE/kLf4sDulI0FFWhF2tu/LjDKqt8uQdDtdnJMbEF29CMv1hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768977234; c=relaxed/simple;
	bh=uUdkQx2J4e0RlSyQig2CtN11yxpCz9AijgJnDuCe+28=;
	h=To:Subject:From:Message-Id:Date; b=lFzaomz24bvrffjTKOITEKhDZe7bfyMVANcoFfCJkF14H8sGUVTTJ0xJg45CGfRZ2ADfo+crIkPMD01z+sYh4I4dmgThFbVEKc+TeST7VbscABi+mNyiy3E4a8o5mtQtrD/Wvo1a5s1kDSRrYc/tXe0jMQ4laZyC2/91gF/0nj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtyBBrEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtyBBrEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB47C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768977233;
	bh=uUdkQx2J4e0RlSyQig2CtN11yxpCz9AijgJnDuCe+28=;
	h=To:Subject:From:Date:From;
	b=GtyBBrEIXCBFuPg1yezCl3NmHSk1p4yv1hMpl7SsQ1UbsaOCQGlFPihLtCmcX+Nd1
	 pTPj+0YoevAg0+7jx7scL2eZlLIiw1St+097CL++f07Zh5VYC5rvluJAwxpDMRhsQU
	 UfmfpN8Xd1wFctKzXRj1Io/dUR8jB24nWAWBEmAmZQFZwyj/yAiHAKq+l2muI+VdYF
	 IOvfxfTVVsEpc1Jzr2MUYjiUZrpJkF3NjQ8BrCbNMphXTGVV5YKFypjJiTiyxWnLLF
	 TMdsXGqS9t3fkFuAYIAkzMzE3qE6UpsSchdZGar9OkmW5Iqy5iiNWxJEbrJ8DffXsH
	 azgmosaBycniQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9902DD262B0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897723358.7497.10035170670507795228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dc3451c92b8a5e4a6b846ab69963a2c4fff29894744ffd1b9631da574a1838
Date: Wed, 21 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768977233
