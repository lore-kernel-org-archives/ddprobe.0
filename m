Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455A038A725
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785677434; cv=none; b=LZUd8HuVgZMrQYUf6pUyAipOk0rtw2YEYmFxL/C/00rXu+V7vdur2dWeGPCNoU7+hsHVt6ZDKFEunvRH3dsCoCH4nlyM50uCfI5qsBd+CYJqsal7bKm6GHEM2dwrdIekGdjSvEcAWa+QQg0ECdBKtCul69Y01hHhFt3lFtYU15U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785677434; c=relaxed/simple;
	bh=WbvjB4PltEkq+oiYNffNg1aCKsS3qq0sKzyk/ONKj4A=;
	h=To:Subject:From:Message-Id:Date; b=DgQRG7zUmzv9qeYApyMMej445PkEwnv895W5drSEsXjja/f1Ip3i7921y7CIWNDTGsyF9EkwHW6pHWupbLzFpaA9lbrTTWkKTZO72KvPkAYvlUlkZMsw62xhBJ9gRfQEj68VqneoGv2pE8alYW+WAZYVbLHCeyFhrt1/WMo95Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fS2+NIaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fS2+NIaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB392C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785677433;
	bh=WbvjB4PltEkq+oiYNffNg1aCKsS3qq0sKzyk/ONKj4A=;
	h=To:Subject:From:Date:From;
	b=fS2+NIaZjqybHVLlZSZBpFP++bq6rP8wxnp2ZXqhb791Hl2mNUfkjFUHUlNrcm6gB
	 dNikBgRWoAXTphKi4uOLTa3QrmGEmMIE1ATr9uVCFGimTk4QkRlbOFxbHzvMfENN0M
	 m0ACuf6UggjtIJLQRNBbeam7lDjPkmM7YwQE6yKTwo6/WQahBJin1f/S0WdgRTDYQc
	 Pvl8MLzFd2nYuSXALzRvNi2t8im7WWBmXVVsFtBwRI1aa2yNc7rHqZM9J+faokQf81
	 zPl94fRkXWutYfpc7vtpNlcW+U7aLz7PU82H9C4YFt/t+lsC8G7/C7RZgtK8Oih5bS
	 JWN8DJz1v9p0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9977C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567743368.6005.1549174007376062254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f2057c2f126c47d703cc0f2fe5832afe515d029d3341a19a38f98904168e2a
Date: Sun, 02 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785677433
