Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD427384
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708475296; cv=none; b=s5EAwdUqtdNRD4GcgOBdrnybgfH/rX11HTbuyB86l5QW0opub7vlX1JDZv29jGGmlDMWBDLwuWa47z4rWbV1ntSY8+4QBw1Hs3YofQRJIPKsEHO7zR6K6fLbpcV8rEcKGkjwpawNsY32rm1UPLmLZiNMYWnm+VsoQAeZHqTihkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708475296; c=relaxed/simple;
	bh=utkEfjIpCuLJpchDtMSH4RCKbGqGmMiukOJMxsyZx6s=;
	h=To:Subject:From:Message-Id:Date; b=XaT+S3uAJjLsxjEmCYMf4Zu5USZCJycXEJE881NmHCqtVENCFguoDPbQI0gKacNHaYrC+7rd5Ll/PtBzsHPT634JUHP8Z/4fE9sTtPU8JOjuaVIuhlVk4Ibl2l3tF+ph+3VtI54WKszyf/KsSK+YBRYyTeubxEkJvdPj+XcpbOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Shg7Twfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Shg7Twfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AB2C433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708475296;
	bh=utkEfjIpCuLJpchDtMSH4RCKbGqGmMiukOJMxsyZx6s=;
	h=To:Subject:From:Date:From;
	b=Shg7TwfuU9vA4u4F3KlTIxRS22r/90wY5TCceKqQdVwnSi6MRPNsZFvcjX7fdsc4r
	 vlpjP3B0xOSSZYez3K32IQxVJIuG9Rj4XVmI5ET1WPweo3rGr4ahwUUxBYKgGPrab/
	 UWTK8yh1m55CPFBQJSM14BGIhKCV0ULlgfVSzV4NHxo5XvleuF1GHfTYBrdsky4ZMm
	 vlY3EXA6JqrpRpQRZDH1wWtamgSW7C2fkv3RXy6yzIpeKfvOmlWWzyT17EQcGmkYN7
	 dcoCkg2Xpy4QIgrhGXkz2lgCG38tPY8tXdZF2TM9F5U26HwC+XKc4kMr/iDUCk5MZO
	 Vls113FaNsadw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4A7C48BC4
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170847529637.5460.9347470461473970236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9984ef1171eee291d393c1650ac91ad24ad528143537cedd64f474526c0cb968
Date: Wed, 21 Feb 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708475296
