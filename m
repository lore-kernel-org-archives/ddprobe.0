Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2016762C4
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706645297; cv=none; b=lUelFyGdpuxIMf/9LGloX/YMavueDUaJ3FNN2pSJw2I458cENZDsFeXctil+MA/x26qsgkoAbHdpIhRA+yZ90FCGXthyFIVaFvvPsqLDMgX8HwV2UOsADFsAdVo9k7bysyRzzDzwXHa6+lcdxfdyvxQn2DI4Uyp+u2s3FdRz3uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706645297; c=relaxed/simple;
	bh=P6gMis0aaAZXTEiRtuT2nZThgtDg+mgchZtK4rz7yHI=;
	h=To:Subject:From:Message-Id:Date; b=qMK/U8I18pmLmG985J+yZvF03e72ZkMWK3t36Xqc12H32KqyaAswbqR7TPsM7KFuRMU3PWy4e60D4mbepMW+sKu2yGAx6dWG9YYyfHCp0UBhdHw2BTQQovDkHtu5lnJxDUNQYkwv7wGtP99Ampc5LvQrWKH5/5PrhIKAeNx781U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsdOX+rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsdOX+rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BC6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706645296;
	bh=P6gMis0aaAZXTEiRtuT2nZThgtDg+mgchZtK4rz7yHI=;
	h=To:Subject:From:Date:From;
	b=dsdOX+rbwGy/G2/As0+OFCiMI44NOIJ1/O5a/9LoO/QkGHCLCvW6S7BbGMbZIBOAp
	 9nQZOZR34lrX1r0GzrJhjCQdEHDasAlp3HmvjWXHAtCml567YIlRzyrEIwLBHql3f4
	 h//ckN4R+TGPvLPoxeeKc1JIlmdonRKZOp0f8ibSCdwYSxncCp/EJx4v/OR3nWQ5he
	 vQTkWx2X2mUTrp0s2YdVDDEZXop5iSVOdA7wdJ88ENvuWrnUI3GDpyuQvwq+MU/Pnh
	 V2v4JMig1gvytPkd4OuWzOfglkDzJZuR/Cn/JW6vE4CnrtIt43BULJ4m1F3JgP2A8M
	 MkzFBHnAphqjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA88C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170664529637.16732.4550245242841816116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e80d2ac9ba1759926a6cad0628c0c39aeb2dfe3caa0b587eb5254405c9d6c5e
Date: Tue, 30 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706645296
