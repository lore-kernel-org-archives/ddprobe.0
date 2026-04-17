Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D7B2F5A29
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776402454; cv=none; b=qidYKmFKkydyevSbx77kKuoS8UwCVa78KSPM8lmBT4tW0cmwca2umRoRksnhqRW755oaynnLd63brQSj4z9Oy6C6Mj9Tdtif0rHJ5jiPe7djr/pa4Yi7lm6f2CUCKnANOhATza+6LVtu2LK2yrl2uxpALiPa1zB5pqyyRIYlXwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776402454; c=relaxed/simple;
	bh=jMjfCh0KS4BeYDvagjzVz7fHaijmOKN0N2DMM+R5iBM=;
	h=To:Subject:From:Message-Id:Date; b=JClthnXvjGZNd8Lng4YRcN3ruYReicjitktPG68+FjrPOqpcEEM9BrX3XbvagCTKPoZqN+lZtwTNBc7nb2S3f5TqxZcoy03OWK0hDQl8sDFPQeoG6FT/Co2sDZCDG6PN180/boiyiLU0G5Tj9+UOrAJAfIJ2tnHv/plyNKNFuaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5lqgnD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5lqgnD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA41C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776402453;
	bh=jMjfCh0KS4BeYDvagjzVz7fHaijmOKN0N2DMM+R5iBM=;
	h=To:Subject:From:Date:From;
	b=S5lqgnD/9RD6tukTFLwnF3E+H665FG5NXeERZTCKQXWjUzuOQg/ttjBKaW6IOq5b0
	 q450xOTRBOX7ddmFLD0Su/UP6vhy1zXtWDcjaf0uM22tNZT7nJ03r7dWksBb5f3u2x
	 quYr3YCbkvzGD9NbxMH9gePTB0Orpzy3fS2oQ41uMsl1BBsyBbTyy7O/lXBMwAZX04
	 VNKDOibh+4r4cTVuUzMwgWZqYv3H0fc0vE7lb4zKUcBl05asIzAUYC1NcDSDa8thDC
	 d6bS+Htb0netLFTdCKmYN+f3VSCnC2/YzWosWonx2Jm9CWC7guqMrFxu756CVdeda2
	 +hcZxRE5gt/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F49F8E4A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640245368.3510.15111789614663296490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993ba43b54e7bbfca0b555d1607a5427d8af7fec694906cac0dd7ee8b941836a
Date: Fri, 17 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776402453
