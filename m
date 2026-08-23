Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED1B2E6CA6
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787457634; cv=none; b=VlI6PXWzXchwlt7EJhK8Re1tg5NqWnE1Z2wV58vpPh1Uy8NBw+AIzJkCVkQKPELkfZ/RRm9Xeg8mN1jZUik0mwbYDhos1OK/y/3Msj+2GMC7zcp2HdEosT5/WgTqfHSPwbZpXuhR8xblSqW7WvLuGZ1c9im2kLjeKpu9AMg9+JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787457634; c=relaxed/simple;
	bh=Uhe8FQy+8F+GF0ICazBA0ECr0Pe/xCwOPtUass9SPvY=;
	h=To:Subject:From:Message-Id:Date; b=T0zjcb+EyAFhBZtEHwog++RfwDZdQxao0q4+98M1S5V1ExQOrE1az25uxsAz2jgSxXl9Xgb2ZhcTlKzt0doY4bCl9ibjlPjKGUve3dofUdYC2SDRGQARWvPQ65Ic4rJX6aLs6cwd311B0WazWjsCy2pdSxSE7Pv6cXa1R4ipuRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nst3vRKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nst3vRKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7117C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787457633;
	bh=Uhe8FQy+8F+GF0ICazBA0ECr0Pe/xCwOPtUass9SPvY=;
	h=To:Subject:From:Date:From;
	b=nst3vRKmXu7LVHzShimJ15EwPGd0m84838zj3e8LGbDrAJrbkmjFpVPvuzBWMXxQm
	 W9eWYGoNk8BevTFOdhkSLn+eiLDjIl45vNtQLCFYa7WOK/iyV+2DQ26wWXY/Wjjzzm
	 YenDHnUY7E6dDTUmeNvFWArPobrDnIZzNv32VX/MayxbDvDv74kuffk0NYWxbeePho
	 GZ8FbOPGPPtMLgjt61fImnLVRMXCxdHIjmBE/OTZXkJQhJK1ui8/ohWGUE9RKg8Ord
	 BVK1wK45qPZ5HCRnCzpJIqwu78+36mOxG+ocrl+kRQp+1uyqiYA5fqjYpYCN4IecE7
	 cd+Je6U6le4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2076C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745763369.22459.13468359246726952908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351b7e9392750e0bd399d8e8837ed091bccdba2ffb4e0d5bf7d7de11bb13e8eb
Date: Sun, 23 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787457633
