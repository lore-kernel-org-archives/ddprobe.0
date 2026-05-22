Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2985F2EC081
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779463954; cv=none; b=ZMjcY7pQ5owxURLrhZZ+RjmYHQyxEKfMWVqE2pM1HdLNm0ir12ZjeBV7Na0eocWKBlWOzyKv8JzX0Fkta433WDgQveDsJMYGy2+SJA4p+o8bqt1EACWt8wXYkrJOu1DA7ktS7tiQnaco5a1IqDNAg2lyvD9747oH6FjOnEM0z8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779463954; c=relaxed/simple;
	bh=0hoVcOtU6fnUpdF66KZuDg7UMZ91Q0WbG7zNIw4PxdI=;
	h=To:Subject:From:Message-Id:Date; b=DiE6KXVM1DQDySRV/jGaH57qCMNBO5iVnoAmQ4+OGHPnKGpXbDzh+ZNiB7CsMVspo3ii4DRpg9xQiTx4M5JRe6OMS793XcacJ1gkv1SYRjS1m0izRdGd/3EGcFNvf5s2wcwG/bXv9zfevogFd1N0+bVFmCfGbYtBK8tUVoziXXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n75MrLiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n75MrLiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5948C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779463953;
	bh=0hoVcOtU6fnUpdF66KZuDg7UMZ91Q0WbG7zNIw4PxdI=;
	h=To:Subject:From:Date:From;
	b=n75MrLiqdeRVrqYH5/p10tMHcd+L+bOatSQvHCjdxf8JOQ7DwYep5Fte6/ismzabf
	 P/mGD/BhcpVNZ9iSXnkvzR9s60/5KoBWDfdV8XgOhRTwrrm0fQaBPan7PoHBjuNrOP
	 Bk6gMfoG6hXlmv8Ww/DT0EZWWZEKqmbb8AkLgGJnWDTjPM9U4jDpPPQ1p7gKxOqaO3
	 MhKBGfurSnKWhDEje9hQY2htegsKXaTpw/cJ43EAPbKpehppETMMoklLPv3UhG1/5U
	 3KpSjbtm3BzMXt4dievxd7dZjQilqfonU4c8KFXMFBPPK9CgoiJSqvyy2codTZ8w+j
	 g19EQQScWWcwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA9ACD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946395368.10182.16951726598763498083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361184f2e6ce430b0f37c56bde4249085d445a83a1f68fcaec54dd57878ecb21
Date: Fri, 22 May 2026 15:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779463953
