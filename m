Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ADA32ED3C
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762433994; cv=none; b=nP8sA8ptrBCux08kCTjj5yEaRLsENdbHMOs+mRVzQVqe1Gy66uN6PazHtt35qZBkcfior1GQ0WmonHrDIzcR2Y91a/5jkTJK8ch1vkzb4arre//Aa4MxpJkT80/X63db5JfYdski/ZBIBaLN/zVL2tNaBTBpwsexYIZRCfeEwxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762433994; c=relaxed/simple;
	bh=5uPWx/0W61imICTSMQjrq7Er4yP2JGYIwmImnpoeljc=;
	h=To:Subject:From:Message-Id:Date; b=K2HcNMPM7/nsmgmMHbLo2NTpnVzXALBybkLDMSERajiWSDY3x0rCkNHkhvGrW5iOD41/FmyRmIdnlyMcJqjh4IpcsdpNW5D79mI3p74uS2cZVuvxb9It5Ax6m9SKXUP69LpcGZi7EkT3IqSc7x+a+y0POHL6mAWaWgxSnI4V5A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5sfw8eC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5sfw8eC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0548C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762433993;
	bh=5uPWx/0W61imICTSMQjrq7Er4yP2JGYIwmImnpoeljc=;
	h=To:Subject:From:Date:From;
	b=u5sfw8eCZYz7vO0wDAw2sGA1v7CBfgcKoc1JlEg5zuB+3xlpPbFC/c0ZTvNs9k4PV
	 zXtinugUH8AmVFnkSNGW/Q012ELyWnoV/wfgYdc6eQeJ8QJE+6nXHdetoqv5Cq75Oq
	 f2kFaNdQ3avYl+dQKur7my39SxoEboWuN6BU39UI5cnXzIkde1fNHloJqlTBOVOWEJ
	 DJKPEtjhV8j8QPEUmvXLwkGT8UjFeQl6KssFGqP2kQPCE6FqeO+HPWnxaIizH0BmyH
	 jfFkwx6I+BG66yIx7TiAKpjRvGc3mSjrtsod3TjWvL6ZZ7mVYsPOZDD58ro3S3N2uo
	 KXttEz8FOYA2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D8CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243399358.13092.2488257276162832211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e30da6fb1fa27e70c459716a69e73a6b37400d408b3004523fd81e10ff9e9ee
Date: Thu, 06 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762433993
