Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A8E82866
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717187663; cv=none; b=Gnxti8UMbIOeT2RlQptdcAD5HyNe2y6FoXokPy5Y92RCmQfDwkMWhYSSJfsaUd/BkoQLS0n5BZU9yqzSj18ZhYWxueR/QBSDKnRfsQY0uBmqctzlJ0lc48kq6l4BoaRQHCnqm0f/RberDSGo63O6+KbWYA/PuPjDLP3Ze7A8FKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717187663; c=relaxed/simple;
	bh=fMTxgyOB5jN2H3nCVuqX7KDboIH9ZYc8thhUrdP41oM=;
	h=To:Subject:From:Message-Id:Date; b=NwUlWtF2WwTvZlXpkVHNwwNpKwdwFynNDpWKNN2jFsMlWf0D2xoIUJot6z+43QuXlHzt1lpRQFljSdWy6XJ0I/NOBo5Wm4dmGcrJI0wtsV3P+DbwiK1L0OrxRxDAi7khsFcfX/Z4damZEgFvTkK20INzbedqY8PSVYCGQcyy5dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvEONdA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvEONdA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 052BEC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717187663;
	bh=fMTxgyOB5jN2H3nCVuqX7KDboIH9ZYc8thhUrdP41oM=;
	h=To:Subject:From:Date:From;
	b=JvEONdA2skhctZlRaGl2tjyf6TJjduvQBfRNuo7zlsUyQ3XoPuQssTTXzgQuDz3xR
	 nYfywdKMIX8BS6pBGQDdnBsbxQYeYSfeFgniGUKsJTGUZaReUlmDSwM69gWyQnLAxZ
	 lfb25agCW3YW/MCVSSlT1jaca22Vx02fIMTYvmIpDWFb8Y6GxaBkpu7jOmfolX1Iau
	 cY4Ekrh/+nEws/eqmIvHCCfj5LmpKzpqIF76Lbci53CXV7uK8nHXpPmO37/uAy2xIT
	 ov5AuWuzbv29ufDhh+OCMZ6LM2ef1PrhWbZOx1EYgmAKG3oaUq4HxQvgIIz40Gj8z1
	 APVbqa8kFPAiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF6EC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718766285.735.5413855802205930283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1ba4ed9943a8ed783d789616ce7c556b8854b6f889d6fa6dad057045f96d65
Date: Fri, 31 May 2024 20:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717187662
