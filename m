Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52555392C24
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787442034; cv=none; b=sUOn2t3/yaRv+CDvhDtzcw3I3Hy6jvZy7tBCuyToujxkXBmARlWBPCF5ZL3Y1DJbtei/3SgCY6cxlLy9C94Gdw+HR/ie+rkseOGRVvPnjBUoA8cdIFUAW9dluriUSQGWNY9Mycq6KtyMvanqxLUlK+dpcLOmewVKaSKqhxnIpO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787442034; c=relaxed/simple;
	bh=CL5yZNVHb9G5bKbg3IFKUIoGDJc3s5LqjGS2h6qfdKM=;
	h=To:Subject:From:Message-Id:Date; b=pJApORKdcQBjQzAgvwFxgAr8WeWfApWvDU85vEBbsJkAqOQ5rBeHC2hHKWDurWxEPEu2wmkT2H8bUdQ1mcicXjvqya/gqUJEPKzu/cC/tOA9FRTj/p8ZpTynkE06SsuFjvccm/drfpyini4EQK/I/JEXLx4vwLjkFbYb0MPZhVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqLFSGsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqLFSGsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D465EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787442033;
	bh=CL5yZNVHb9G5bKbg3IFKUIoGDJc3s5LqjGS2h6qfdKM=;
	h=To:Subject:From:Date:From;
	b=GqLFSGsXdHczzydKVvC2zJCMguI/uOt+67WTZefKxmgOVU0acv0LcvIYY0O4SWf7f
	 Gg8mmkEuDQbfIm6+UmnahITJzQ9CnOyurmLpbuubGXn8u4mP9wyoBloJZl6RfaSUlh
	 BrQClRt6cXeKSQGexYYUhiy3iIAVHujUBQ0XyVPvcoRckGT3S/qn/lSf62qEqaDzNy
	 VULDEGmM9ANMa0vxmecXKRkHZtg6pGWzkvWVctjIDtlfUd/APQR9Z6jtQGtKfcHGWy
	 3RcPLAVKuTDFGCZD9AFPrFLtD64a6+s7htNkKkXMGBHr5hT2zkTyTIPwAB3GfBuuqa
	 SLv5oPlhxIWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AF5C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744203369.27982.6243452317278310374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5707c77a1098b76c2b39861551ee59a602b75b55952f9c249c722b3feb016bbb
Date: Sat, 22 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787442033
