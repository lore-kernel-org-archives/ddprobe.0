Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241121E502
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752151795; cv=none; b=iFkB9/m2MDRO42BLvGPhdwRy93Qt+uIHQmbbnoXhSho4rRRE6RZRs60aHvz6B7LPheFA/JLpl6wmmz4/iI8IoEPKpcuQsupVi158a/ENPxylVCzsGwQHKp72eMIKl8i25YeGv6ZKs21cJkj5856biFPoo7pE1SSd0Lbm60PnQ7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752151795; c=relaxed/simple;
	bh=5JzTUK+4np9K9h3iIpP+1C5yeMXKE4sROLtg+xaZ7Vw=;
	h=To:Subject:From:Message-Id:Date; b=U7z7gOPCcQXaTuxVYABu9/DaxBB97Amt5jFIY01P2Og/UzkUqpGmm1iNhUo+OB3oLeOm01KCrzkci4ixxjx/rhKSXqKAaAHpFv+qGzvbmGetqgeKsVbRTlw9IRXjVYy/3LqZTBIxI3tz5Bfbu4mLfvlFCfRUKoCZL5tUBi6inAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2RaYL9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2RaYL9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5CCC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752151793;
	bh=5JzTUK+4np9K9h3iIpP+1C5yeMXKE4sROLtg+xaZ7Vw=;
	h=To:Subject:From:Date:From;
	b=G2RaYL9n+mjb+/uK9RUap42D58+9BXF2qQ6y28EDy7sdoIc62LCvdrvUdw9/u5XcB
	 XoBco5T/+27k2yGiShCWnd3oQbFMjgjS8pZX2pjfN6V63I4X8YoEEIpEuYEJkgN2n1
	 CQ6Q9mGoE8JByHOaJC/s5kIFm5l2C1kFPIGVeSLMYrafgQqJiYTpByMWQKVElYNwWM
	 OW45/mI/t9WBUSuoxaJEL/ebdmoeJiXPqdN8K+5eRzsiRGCFHIm5Gh2PU7Hqtli8gN
	 z8vhjZOBqmUPJlB/9fyA36LTRN43pyTmR1KHAHUQCLrLcS2YwpXblbXrv6x3VWq4uf
	 NaIDk0rmMEZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1FC83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215179358.24053.12751106729218699241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb85f43c073bb0d3ab231ae29d6609b7b188ee2a7a71267627de93137fb18d42
Date: Thu, 10 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752151793
