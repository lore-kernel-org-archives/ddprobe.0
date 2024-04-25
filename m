Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C41422EE9
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 11:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714044683; cv=none; b=PmwlIAG17zbvtShEQOG62H3m/cSX42uQ386ORcOKHWGZWZv3hwBSSzNgsnDEqK330y2/09lC6Kf2mP7zVEgArq4erwz3e6+CVXDUBtx7/D1fsF5UjVvNqJb9BqijVNFBDmFd0NLFVhrrgZQAMok7+KrdYI7JMau8yzg4SzuaSkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714044683; c=relaxed/simple;
	bh=9tqKHjjIObWezO1Q+ZDD8ybwYtZ7pbK2Sw2XJANpc+M=;
	h=To:Subject:From:Message-Id:Date; b=vA3NprpxxeNRwmRtNKGFKhKD5PjNVCAAjOVhXsazr+zbBFzZO7ZgapvblgpVcHFRCWklQFtn42GwAt4MVIp+qMA7SQ4n4IXmATD+mNlC3Nqzp28wCFtK3MCavwFpfp4F4vyztXfBaZOozHkdiuCxWZbNOpVZROISl3RILb5URD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbMQxo3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbMQxo3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7C0C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 11:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714044682;
	bh=9tqKHjjIObWezO1Q+ZDD8ybwYtZ7pbK2Sw2XJANpc+M=;
	h=To:Subject:From:Date:From;
	b=DbMQxo3V53UfWbGXAmaoYLKrVCUK+bte3K2Ab15aH1L6JtlsIxyTKgJxm7Z3PXGo1
	 4yVAU1q5o8+Dp4HBgSpOgczMtm0ipC38/OBOiqz7jmSBAWsK3Nyx/adGwo33HUwt13
	 vPWNic6Ei+mMLAnQA85VN70LmhnYFG9mjL5jB2Sp+5vmVuSfNkWyehpU+h/osuXs0m
	 ZFEOWYUByqMb473ZkJjarVvp4X3yclHSikM3WKcFAe8zh7zy826JDkheBUfoFZpAlX
	 I5uAtrM6D7wwMsK/NTvaIMWJSGiC71dCBR0x3n6tgBYHMZcp5FCS2OLdQM3vYA25U0
	 ssinA+uZdqy3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94E1C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 11:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171404468281.22671.1103260341100707198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf597036eb3a2b6783276b8d715fb0cdf5fe6693005da254fc78ea3b68e2faf5
Date: Thu, 25 Apr 2024 11:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714044682
