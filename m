Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130401E98EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776913054; cv=none; b=lez1qiGsnfxrSvaRYOlcvkaMR/0cwv7hyBgMbnux4sNS9UEG5EbP8P+fZHi8IPGePOvMGebSTM3EB095fbpJzhxCCqokNetKBInoiQMlRfx65boUWxiQAARKaG2wGHOwdV4yMc631IkYlDzkH+KBb2bU66eOZGxzr29xKZcYrOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776913054; c=relaxed/simple;
	bh=Cpm5M+x0pIBS0oSGir1jNmFk+U86HEiy7U8e2bqubVY=;
	h=To:Subject:From:Message-Id:Date; b=WfxKBH85IPT1MpQV22RvT4FGKPjDDrFtfbIXmnVfhWpt4h+mEkTP99mVAV2VM7z0a3zzhSmD7ajzKHoxw83XjkAI28j66BMsTr0la8GkGqz/oNB07DZtX/yp2beBBQ6UZ3CLblTTrClEOqdLnFG9IIKoTmFGBMvQZKseYPE2AFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiJuHdXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiJuHdXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7160C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776913053;
	bh=Cpm5M+x0pIBS0oSGir1jNmFk+U86HEiy7U8e2bqubVY=;
	h=To:Subject:From:Date:From;
	b=JiJuHdXSqlvVotA50ZSOjbMhkhLNFyU3WhPUnJIF9gY1seu0ki9u6wIZomcoctf1x
	 nXeN3XxiJnpJo7JYLExNR+P8V93cnT2mT3DGDlO7U0T5ctJ+VP83Si0FgQlMnwbL+2
	 J7ixPpkO7XS/B5S9ZEzC5db55SnXRtieXybF14DblZbllQxpUlU2jyiH/F3Xmdzbz4
	 Kh565rjFb9gqI4yC8j1HsRcUTyM3GiX6tjKl3fyhTVWfNk00/UXpA1ZEOyFWZdXIyA
	 tHfdlh7Y8Sd26dggzqQzmql50lsWcKSNuwzB6rSYo/B6Em6yJjKnM5T7fmuT283SY8
	 iGIACkMDuRmVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA010FAD3F1
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691305368.32334.2381814058028554901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7223d25cc4183a3dc535d7cfda9559140c8651c9e5e5ca67434f8c9e78b69181
Date: Thu, 23 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776913053
