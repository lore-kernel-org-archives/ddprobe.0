Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E472264BB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757752194; cv=none; b=TpjuP8HgnxlY3q4K2c3kJe3hgBFIqla7e4XpJlJYkVzezZR9o32Ya5HUqczizDuExLuP6dAMqgnLsqPBWfBTBTlpFDI1DD7AFTae7MM4MTjAPRfubXvV/fNqkEDeLTbcEATnQCRdJ5TSQhYXO4Tznm7KvlVFTb6U61VWW06IAvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757752194; c=relaxed/simple;
	bh=Ms9s0qvUDCHWbmV85WjCXhlJRYwE7RAmPyui7vJG1mM=;
	h=To:Subject:From:Message-Id:Date; b=HvY6VGgLUySmNWSgmDVDkyvk9eJ6JDUFJHOtzjsW4d4n+BDXxO90XzW9rUgW9xptoWKEKdOSHsnErFlIXuic/326bLTGGl4IE+QWoMrHVQMWWl1wM2x02mg4gWI3ajZlANZGQ28pa4JbJ9SF1azUD9eK3xeNu7AfSjWw/o0f4q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTrvcYHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTrvcYHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BAEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757752193;
	bh=Ms9s0qvUDCHWbmV85WjCXhlJRYwE7RAmPyui7vJG1mM=;
	h=To:Subject:From:Date:From;
	b=LTrvcYHsRmCFdCzGE3095RE1kRXVevBxNvGnpXgG74h3B88RGa2tu4lD6p1V4izeI
	 wllEXPrCsx/xYTFNJOxsFG1X37WSTAV2O0HsA54FjroqZX4eSdfQlc99TXju0vG70M
	 HMpmyxz7YbYUsX5K87ePXeY1H6SJ53NHkD2Sj3t4FMk+UvB4Af9ykKAWx8D9WrCxuD
	 tk86JnXkxraM3DH4sljPcTn1vbs3dLzKp9ccCukxXs5MGUxrAMssLrJW3SNT/fkZui
	 vk7lidvFGP+Mi7uxHu9Ja6qgzGxT4LBJkv2ziQubNVGr18nYDnbb4yE7Qcc0SvNFSL
	 Nu4KiK+L+ziMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93CCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775219358.26155.8470626963924094344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af11a4e341a2971723b1a471de59b5d7ef6ee4d64c141eaa1a8bdb8891f5dcef
Date: Sat, 13 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757752193
