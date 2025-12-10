Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB5323505E
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765354374; cv=none; b=DzyaaghaBQGo6vsPbPd0tHErfBwZ+PHWJ9+PL1NX/xPj8C+K4GxjADkxuogUHfO2L44EGyTqm9LpY2re52I/l1yHazv0wmJhp0QjJtyBvIWGR5CUpDMU0euIjGsFPvrAnOzdIHdCyY3z5wHEyFjKeF5KiZwrKnu0SpnE08VA6Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765354374; c=relaxed/simple;
	bh=OvziwqYP6OTN8tjcUGMC8ozGQSU8YbAOZPn5owdtOZc=;
	h=To:Subject:From:Message-Id:Date; b=amU0gn5xkPkxBeresFFOVN4d1CV1ZhpDkEQrw4prnx+c4Jp5nodLvpZuKub11t6kshsZBBT+cjf6uSX0JJsVpGS21CWv0ojNHjBIJQP8jISiS+3fv53EpZriUB4DzETUKpjPo/X9d3KQSSy/SGk3h1PqEPFxdfBVtd2D02R1+HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQtCoL5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQtCoL5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765354373;
	bh=OvziwqYP6OTN8tjcUGMC8ozGQSU8YbAOZPn5owdtOZc=;
	h=To:Subject:From:Date:From;
	b=UQtCoL5/9N87x7N56C9YO9Hv3XmVPbrivO36JAr+OqT/1RY8RRiM73c6m3DfKBn8F
	 2uYluivvMc+FtXpNaJav+QVqX1AreY7Xlo7eMB3Jnxh7jHcO4G1pbrf2Ys5u8TjPlN
	 DUPPMkFTps336WFiNnwM0K4eHWhvRZZ7sHIdnVqUHNbv35zP4JaT/EW/1XsK17jRKD
	 uiIOOzIwwrd1gHqTD3Tc+HXHR0HvkYvA7RbIBn9RSlVZ9J4rUAAuPeUyQSPI4V3i1a
	 FHCYaphF4QAq7eiIGzGCIB5VIVuGRoidXgd+ejR+vP9k0/sgTC4WxgwrY1I40ArNj/
	 LfCblr+TYqZwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93567D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535437359.5167.15010274736800722878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dac4c92f765e0b4b16f03bdc882314721420675877ae5e7f2c1cec8f88461b9
Date: Wed, 10 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765354373
