Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A95C16C853
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719846323; cv=none; b=ip5AFWkpHWWj19leB30EkPXOXzFKBCmdM3kkCMUF2Kwov/gpAWKu1J6R4DPb2azy+bNpZAKrPy1mRtmMfm2dn2iP//gXr4bX/QO/6SzT0andSwt8d5nYCFufsv5Gyjz38/NsUFz1OlwSihy4cVd1ZfOKavoFD2k7eS2fLeowRbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719846323; c=relaxed/simple;
	bh=p2HCAfQCFiwicIbOsLQp0cc/yDbo5zCZfu8xTCR3MkQ=;
	h=To:Subject:From:Message-Id:Date; b=TGB9oclVkYVNXKLv0PfdgU8ONnJNaZBYVAmzzV/i5exaylCoYcj9u8ukZz73OpW98Yu4dH3e1r0NjESueBK32eQbFNs37vTnFIT3U7KdOOdx8vjZtS4h7oLCfm+dDuJxv6aiC9L1WbjEZsH16SVGWceX6Pb2H5EFtjcs2xGCX5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYjWyJzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYjWyJzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE33C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719846322;
	bh=p2HCAfQCFiwicIbOsLQp0cc/yDbo5zCZfu8xTCR3MkQ=;
	h=To:Subject:From:Date:From;
	b=SYjWyJzN46I0RqYlufiMsp68msIv2yFHnF+HzmJhzCcSztQAFYCWaKK2U1SJGJ/9L
	 bsNQL8cC5OKUjABGoa1mb6SMeokcEuGg6exWpq12io+fuiGpctdafO7CXwBs+8lvtv
	 wiLoeCDOrlOt4ZWn8wVmXkqz0tjEmY/cV2C9KrOhJpCCfpaKvR0mE18ATHAya0908A
	 5oJd7vmFm/KF4vxCdeAwwnlY40BQPQFCo93Vwtjgf6inXYaCZxKIgcv7KJnvPU7ddr
	 bYmGWnh/cq2UFeTolJndpmld8BNMCfFuICKCgsRSqH/UpSr5YCBNBtX3KKI9qNj/Kh
	 EnEENUbKtVx5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C303EC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984632278.10863.6570053371977095241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc4a366a019cf8d00f9c907963bcfc85c4a27d29743403a7c21618ae115bbb9
Date: Mon, 01 Jul 2024 15:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719846322
