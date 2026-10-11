Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C88D54705C
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791702634; cv=none; b=f/vm7/+Zvmj3OW46P+nt2d5y8YiluT6AEZBLM1HRECLJJWw8B13s46FcfnWL+ZxDy0PwLBnvAXurXRC5kTBhz6lq8+KQ8WKzkZwDSYWZNP5F7wt7sL895omZwcHZWI7HlCasJjw9dr0T/MBMKN/zCrePCEzLHjWTLoYcSKtfo3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791702634; c=relaxed/simple;
	bh=HIjGpSE6hgyjauxE3HEJbZoMDqFrzxA5l0eikPepJrg=;
	h=To:Subject:From:Message-Id:Date; b=DcnsoIMPNmISI87ZCHMUgsl/AusHkl1a09civmc43HGiggS19q3evYKGJJFDxGn9h1KklXnM4xgpV6Idx2AUHOpvY3SKDkMDUd9LsEBJ0YbU5l7NmjaJBk0sAFoxs4wZxMznMtJEpzBBXQmz0gdwoBv34x4SNtIe9EZgWbULYtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rqfg8NC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rqfg8NC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD566C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791702633;
	bh=HIjGpSE6hgyjauxE3HEJbZoMDqFrzxA5l0eikPepJrg=;
	h=To:Subject:From:Date:From;
	b=Rqfg8NC8cOFVrRVjZCdZia13yYuSFqu3ALC/9RqGLVSVCry+78og3KPBDcQC/c2cG
	 SLXcWxiTW0iavahs1y08SK08oIEncOpthX9ypMhaqglVOsljEKEhMkygHW7QAuhkhU
	 OsReOzcRbUz6cmInG46rg/rI6pKlICXWOTxhOMJ9Chfl+zJSl6R3oSpHSEUYrZxSwQ
	 sk7DI1X+MIOHZW0/+cDA5FY/5+tyKnPMTBo52Y+bqsSjJHYTaxBCVp7SIW8bnYBP+A
	 kSugbEAPq9KDjG43R7qzcQ+VdDQAs59Q+imnkLCjQT+LQqob4/tQQAiBStMAORXfrh
	 OH5b2R1ndsaJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C6CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170263369.7956.4858916626460841977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c548f9d636780b7e3ffcf5d11a48bf5105e1817c1b870439806e788045edb0c6
Date: Sun, 11 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791702633
