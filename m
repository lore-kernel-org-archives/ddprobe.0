Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1178D396B8E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774022094; cv=none; b=pYoyIM5xqGgT0YFG6FBaRRPxhBFxA8w3CNRibWfcDzhcBIbsG6cun6t9E0aponhSIIKtIWhoFWSJ/0HxCEeoE0LszywiAlV5F3M1t9Clhvc/r1rTHil5aDPwc2i04x6q5klEkGovswJeAOdbGXOOLStWzk5DK8NOdtcLgl3jBVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774022094; c=relaxed/simple;
	bh=B2y2jBlt/csnyGi20WqDdM3uCxHlibiVOzuN18T7GQc=;
	h=To:Subject:From:Message-Id:Date; b=Al1jr2oEutNGjohSHzXwmimXGbYglKp1Ywy1wsqOsULkQ0GEWJ3TNighafjVRuj187YSy3I6KMoLOl8/JeKP0E70u7E6roPdzmLKauRE3jZ/yFA4QBQ99+kUjo+nWcQJ2cPP6y0202xQznG2BaoiQgEJNNmQvvcvwvdCfvIs8m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbDSwOpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbDSwOpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4209C19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774022093;
	bh=B2y2jBlt/csnyGi20WqDdM3uCxHlibiVOzuN18T7GQc=;
	h=To:Subject:From:Date:From;
	b=KbDSwOpuh1MhZSodf18HFNhTA/Mi6maHOKhbjhBCYginXHcRCGiFwBrdpeFI+p4gH
	 IH+SSbMmTAERyLnX6fwt7tY+1E/XCncRWyVDX5BqlHgmd+RS+wvUVkZa8OceqqShzk
	 LinFujldytoy2NaCSKxfamPRold5jiK6R/mzA3rjkes0J9BvbAjvP/bHrxdc7GbVzu
	 1omSHqZ9B2L5y/a4GVavMNQCETUvC1SAbgxBSDj+Vma5HhnY74yoGkoRn8JO2hWMwx
	 fiO5V5GJSFPL6SwbHZRRNybt2CIDVaQ+ywAWKpFxxtWJ2Zr2wucI25pgaS1/AmSx92
	 y17l8fsVUuFEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901741098797
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402209358.2455.835272073308602322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adeb326bf4de2059ecf89c11d1cd2ca6fb4d174c275a58d6c04702b71c0d5704
Date: Fri, 20 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774022093
