Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7553208
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752189594; cv=none; b=AbAialhz+IIXsIoJIJ0vgMCwqbFc5ElXXP67UpLA386pJCL1m5kgo52jNeTVVhg0DmcPPdkM45y2W1Uwf2Y2q9otxR0cHkzf9z5i+uf7vYU8QveI2b9uGsRVe+cX8Mj0eac7GkAKX9OqVL/ZMuOLmkBGHdBMr8TvZLfZS/AAnyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752189594; c=relaxed/simple;
	bh=+1dQe/lkNcnXNJmRIWgmkEmMgnH0Pgwsg1wF0/AsIuM=;
	h=To:Subject:From:Message-Id:Date; b=hW6+y38ZdY+G9ik5LLtGDuLLURD5dwdjrDwCoNGRoX/2PkV3RGYW0hmIGoYLbVc2GMnRF++GTXEqkDFK2KgEJ8gLOy2dR9xz98XmleLwLsusc9tjF+Ud2btafKLisIGdwRSxVKnC4A6mXSXH8Eb5LIafXRJwHljOEYli0JXv/yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqU+f1r3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqU+f1r3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC84C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752189593;
	bh=+1dQe/lkNcnXNJmRIWgmkEmMgnH0Pgwsg1wF0/AsIuM=;
	h=To:Subject:From:Date:From;
	b=pqU+f1r3azZhBVJ2WJZkXWYKMJjbHMZgdFTNCQk/WChKbQcMFbXPrKR9RsXTcauDQ
	 CJSQ1E9ta8uu8tKN0yt87oTtHtmOdew5nu2yA1SXNo7ftkS18mgBiVXnDdBc/A6OCe
	 TAoFe6iuPwRfVi8F02ntg4cDf3XDhQyV/rtbd/1NwB06dIFFgmDA8+Oa0cqz81PZVq
	 VMK8rtiQApqIWGJJ0/JEBgDE1NgFJSxSLCLZvkM/DoYD3rP4ZFN8tmA4Dl8lx3Z0f9
	 Q5rYNGAdjrS227yj+4ckuP0lOlPg4iNqzAH/+1mPLWwfOLyLML4In0c+9py+0MV44k
	 E/WH6cG6Bp7UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D1C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218959357.14884.8820456988538440245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876a2f238c4d28e189f645372a356b8fa8d09025a30dbe64d604301ddfafacaa
Date: Thu, 10 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752189593
