Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA5B13D8A4
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751654994; cv=none; b=GkJdbnx3gleVN2hjcUW85PY0sjEn4OR7ww/mZf4SOyiyjjW3RSTRJrZvtloNULzwSe2f+LRntYeVa111ghs/A2HLXImmu7U8Fem7N9D7c8/+YrC16Ua6yxkvxUHeY99pZVmS1thKqpvPfoI9DEt1waeI4A9zoVpKSndi7GNf+jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751654994; c=relaxed/simple;
	bh=gyShS8Iv4cLq1KbdSYo4TF3Uf6kLqXP8eyWhJWUCsDE=;
	h=To:Subject:From:Message-Id:Date; b=dC85wzpFZLHMW9PhZCOqVmdDOp3VcngSvCiLjhicejyl+MoAMsxFC3alCTwxcz1dreCPBjIVXD3zk/wxCYgeZsI7wxkVME6E6DyiQws1XIgisM88bl4k+4141ZiAfOsL6ZP3a0800hbUyI9dNRMKJxSHHxlUBGZoxOllYMDte84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1sHEJRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1sHEJRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FDAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751654993;
	bh=gyShS8Iv4cLq1KbdSYo4TF3Uf6kLqXP8eyWhJWUCsDE=;
	h=To:Subject:From:Date:From;
	b=F1sHEJRVqd2D1AXdkaBwgdt1viDf3prAa8wlrYUPtuAw3559aTRkE9X4z8WKpq6Hk
	 F7LGQ4lWdqL9hdo0I2Sk1Pu35CqGlt3M2SrGsdJJMK9h/e7OeopVeBd5rPASEOe6FZ
	 TCgyJXXVIE8UuTtxfBuIVAOoujsewoeSXuRPn0wdrxDpsAYKspC0YVYgcceuUoEQJn
	 u46oECCc2quLudUGje/rhhBdnCAXN7+ODptg27TcsQfPz+ZlNxFutBK7C7/RoEtvYw
	 ktNV9LLvYigxqiG0+7x+XH0wW/p20haJRrsEaL7qaIjBT//I84JYHGopnjeNW06BtP
	 7mQS4skl/+1Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F554C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165499357.25792.17104839272803933332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb22f0892ed3d6216b391e5af352539740f4003d246ccbadcd83f9ee4d36e3b
Date: Fri, 04 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751654993
