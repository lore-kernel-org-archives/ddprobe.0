Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2351B1862A
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753688394; cv=none; b=Y0V3GOJmzpW4TUmVKOU5V5BYtif+5AqqmWR6CLsnEYMH5WRQs9ppOmkkl0uPliyAWUMSbbaL+F7zoTG2NW9rIlTYL0Wn0uqAR6g6OrUTTkONaiIOSv9U0aBiGvUUXAAf8qswQedrNm27R0VZhn7tYUD2CaB/c66FRrcneWh9B+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753688394; c=relaxed/simple;
	bh=c5D9jULv/YYOXtRMiyg3Unb+6JALiuwez9ZRqGvaoBA=;
	h=To:Subject:From:Message-Id:Date; b=CVQ3vwkeA06p5O+Af9tMXp2xdzfg2JaCe0j9mrUeftaTlC/LvV6Pl2o7Gq/2+1b86svhMRLcl4gVyu6aW5FdELmy7x0zOKUOH9yVMXDKimvrCw71JEtr1b2vXg3T9Z1hcs4PBqoPzLGFlSx8wy0T2MTcKLvp1sAEEknUXju5jk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxIdF2ZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxIdF2ZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D617C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753688393;
	bh=c5D9jULv/YYOXtRMiyg3Unb+6JALiuwez9ZRqGvaoBA=;
	h=To:Subject:From:Date:From;
	b=oxIdF2ZV1toY99d8JCCZwmVHr9BYC8j7DCceivDsW1La587Rmnj6wPv7NL/nKT5la
	 wp3rwhUHLIpl445QMSxhz2t99NwD53tlf/xwCqKgW9h3auvebOmVerntLrvQDF9sr7
	 2SnlVAq1p8wmVT8rLTEPp+7c5j6NOGyQWv0WZcOs47phkXes1fJ+HkgP7CHXfTjYH8
	 ljGt6AbcgHDCy+zaP2bj/6Xn08CDOH2QRjvFda+/AqxtqDtU6/lCDUMghMjDs95BrJ
	 2c2UthgBG4I8VTdbimugsUG24DXWDjJ5TMuOpsxmI/zlxnPw/BavRlfbifg9RCUjG3
	 JZE7tO2QKSi7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF58C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368839357.11800.9646001909860913172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f148017817059b8ef08deb6df043eb378f31d56116c6fb7f1ac1c79f25a20a
Date: Mon, 28 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753688393
