Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5CB3254A8
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767779034; cv=none; b=nOeTTlAfE9BZaPoyPqfihdhGCJOpkCWg2p+RVkcKRqFlExVhIkKBkLaAmoMyQGWM0TN7pLVGe2w7qCa9WVFIE+tnICylaqItF6KaPlmrpA9G/IXgEwUF6xcbhASr+csddJU5noC9TjMFIplPEPNcX4NXl12yi9mmOeMShOcrHw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767779034; c=relaxed/simple;
	bh=reyF5FBYm1blpKRlG5uclA1Nb86xIYQqgjSw64Ft8lk=;
	h=To:Subject:From:Message-Id:Date; b=FF01toBxE41ziyYMVwo5YztHr5++bIzYEHP3rn2ooNEL5B5np8Kb4/APatFu5cM3qlW4avnSZKGDZ1/Ny7QZ+rVyYXKZWTqApfUkQfMQlGO45vJp4y5TPGs7QMR6ZPhoOc0AkNZ7/2qHEE41OkyaTRSO2aSaw0mmZMaUGohles0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frOZNXLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frOZNXLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAFCC2BC86
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767779033;
	bh=reyF5FBYm1blpKRlG5uclA1Nb86xIYQqgjSw64Ft8lk=;
	h=To:Subject:From:Date:From;
	b=frOZNXLbwC2qNJtQZCVEig37J4m1gH/Lx0IUOMvCotIhdkcJ7qLnrHhP+2ArVp2uy
	 SdxEl++7DKfFyMlxP0DNoEsRZ0G/AIXmR2cA8ilGB7dK2Ot1cLHx8cnv0tOUpOJN87
	 KbyT0xvB6XBw1em1R0q3KR/pyZeZl3h7Io6lC4JQOQMtB4KJT3NlvurC2u4o5Yuu9G
	 ckgUHBouvLllRMf1+ADx0+tW9Ju/RhaQJU7v8sWqJktFLczjbf4ssvsO4Lob4adUlP
	 iJxF5bXx9xClyd8MhPlsa+0QkNtAPS51BpcRGcoc7C/SrlUZXewtx0RbQOMMJzdfxM
	 kT7aHIFpJnLTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F3CF6C1F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777903357.27823.17195750860762712719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cdf131c51fc64d6f42545509b2a394e10525be06ff1ce07a16b73ee3825b013
Date: Wed, 07 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767779033
