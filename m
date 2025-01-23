Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E920DD6B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737630954; cv=none; b=WYa/SXPXL6IYxDYUBbCF+VJnKwKOQHoooTny7URmvmerJeQ8BgexGnPXiK8YVNtnl1fsm63/om3My9XueW76vpAsrBiJaaquFML9MzvMdzoa/SI8gJwqRnjo90THemovpA2+2fIFOaDS6z5I0w4XD01QXGwlCs3Z5AXUVwFSwio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737630954; c=relaxed/simple;
	bh=w7H5d4TU0NrppDRd5FUgU0uRDNbkA+NTP23GEj0b8ow=;
	h=To:Subject:From:Message-Id:Date; b=qFCV8kM9ERDTzIsnTgbWto4pcDdqkCSM2acYWFQCBTzDPCzLOvr5FxZ2+0rafsRSaDPlKqCxjsx9JnKqhgvRIxKLiettXCHvQtZIq/OpXwWmfOKQVVJQ3uKDLOG/7h8LJndhNgbgCwa57jkZT5aF7s/gwNO4d/S76fMsYOJXTcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDeBCbN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDeBCbN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A035DC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737630953;
	bh=w7H5d4TU0NrppDRd5FUgU0uRDNbkA+NTP23GEj0b8ow=;
	h=To:Subject:From:Date:From;
	b=aDeBCbN4UgMAYxVZBZ1ouR4TVUE2B5LmQA2ZzTmPwTgFi7fkRzBV69W3aI4ZbfA7s
	 LANEnkV/RX7p3cWB8gTDHZJVfuPpUpeVjz8hSTUMhCIps5JcujOPAHZPa7jd3y+w9M
	 AYCNPuPiz4OX8MX4ruJTdAojZKHcucvHb0z3zQqasZLw9w3f/YXmqoXYrrkC/YoCFs
	 6EmPsmHT7j1IQL/WdMm6u7HYTICSpJ9xrK8Oqoo9/yXLaSQsuA3UniP7hIOfc5oq+H
	 KWwx4N1z9+rC8nG5X1/HC2BcPtymad0Vvt9eu350V0RwYWLodRp7XcRKBdLoqEO89F
	 g9waGNC6D/UPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C9C0218C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763095358.4319.1179639949697452089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af78368a55d92ac1cefffecb12251bc58a239107da8ff8803861bd1ae954a54
Date: Thu, 23 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737630953
