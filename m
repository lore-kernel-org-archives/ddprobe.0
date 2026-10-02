Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D200DF59
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790929234; cv=none; b=Y55ZMe3/PuJZ0fYR83tckWl/7C4mHC3CNI0idWa77jJEMR0gl4uGy2Us7eQ17/GY4VgqYy6VgH+qRvw7nkBUgCXYDLsNKIuAadDTM4U8/4KwpD6RKPiYGbyXBObC93VYzyX51JAfRibjJcA2YYKnqjanwUXdcmExOz6sOBOvM/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790929234; c=relaxed/simple;
	bh=YejcUbu3Fn58MlVbR/qAnRmaeocrPS1m3FOtdjXlJVM=;
	h=To:Subject:From:Message-Id:Date; b=dJsPQlbdzHsHQvpkOaYI0J1XECNIL1bkGn1rXN4R8FdCHcO8lEi1MIEQvfWJ1foy1eNQHJ93Mxt7onSeh508mQo61Vy2CYeu6BvXmZmznZQu6QIr1Cl1CFLqF5P2pfkAIB9OEO+V8T+a6LHujdoIN0lbMO2lWFFoTay4v+VH/RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jsq7nyRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jsq7nyRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB443C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790929233;
	bh=YejcUbu3Fn58MlVbR/qAnRmaeocrPS1m3FOtdjXlJVM=;
	h=To:Subject:From:Date:From;
	b=Jsq7nyRmcvstxs1Y2Fzp+Nd0+Es0O8UNxW4hwksRLKvM9E5QF8HktSEHFG/h1zLas
	 2ySgfPFTZBki5hvqJGcl+5FQNUcIj6a1x29pj5iRmr7rrSLYFWBjse2y+i8RXGA2TB
	 VPNS1dO39LTu3KsOIrBf5E7q3yYomyeoimYqWMi9Eq50pHSQHZ05C5WBwABeOOePzn
	 ujFXC74uRa6mtY8TxfMZeMPRzQUEAqTtYyPFFgDC48UvGFxbaSGZywshm4/x6KvTsm
	 /ClNzPr2ZGR2v259ybUh5NcpMo9zG/DK8x3hoJ8ngEWuAdTN5nrZqSwE9hMpJsTjzF
	 PMsSAxuWPxBvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3DCA5FD9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092923368.29357.13034352536699728510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70ed35b25f127b17dc28bf2e5f2e7ee3cc0e1e7d3a7c21b7d3958f0cdfabbb8
Date: Fri, 02 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790929233
