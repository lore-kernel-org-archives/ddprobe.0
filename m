Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED03439F6E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784803834; cv=none; b=MFljz5J8eZi9gaBGRDk42QnWvgH/p8J+qxCUOMVjoO81KUAEdUVVoqlEZv2zrnpOcoGTyng6VqdI/d3HEoFsUtHUiqIXFeCVHOhQPbxTOiFpN1u/Lw95vdbySxFoymG9shB2dkiFYwn28YPc0hSISMgWm2zgJkvskBoLuRSPtKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784803834; c=relaxed/simple;
	bh=UTT2geYiRUx07wxjXKcrGQWpTZ0pRVkyMc9FAwUsd1k=;
	h=To:Subject:From:Message-Id:Date; b=uBBgtJS6fnAQnphPXWKSsc0IDzVOKe7a4iO+mcJp7emBhXj/eQoxEwp/ero1t9xjv5vK8kyjlijU5XDtNps6Eszh8KYQ0nPuw5YPDA8AeJUtWehYf2QdhxNnICxKTKg6RhR6VgSNL2n5iAsbCRnv3+amvPjBBsUEmSUeQQaZDLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpQxtVYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpQxtVYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA28C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784803834;
	bh=UTT2geYiRUx07wxjXKcrGQWpTZ0pRVkyMc9FAwUsd1k=;
	h=To:Subject:From:Date:From;
	b=DpQxtVYsYMICLp/Jbnzp1zDLIQ2Z2v/EFZf5teU/TGcoM7ZFfFALVyf6Evvs16pDH
	 aTcPCYcPJoLAxfgy96B/ow7eN19IR7sqL9+iJk1lH8Ek7FldRJvSXM0GJb3xxa/4J8
	 AwQXqo555ohG0/zupHdG880tDwVo54riP5GbwB1y77sXUyVS7aPFSyFCYJkHkobXXW
	 AfDEyuZvaIik+IMrYP3YsUxlpPhmenGsAkVTXVekiD6xV0mIfjqWFnPOohuopoRhfC
	 NihRS3kdEbGdLVw/rP48W8EojP8gaKScQvU/oHMNIMkEveddsc/kOGjXp5dlnbTlu1
	 QD/KAuBSTPpaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3FDC531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480383370.14341.8259269369320430622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b689fb6a9fdf2d2fe502e4815e3e61cd278b7721f10bcbe737e259978998d853
Date: Thu, 23 Jul 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784803833
