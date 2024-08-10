Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E412200A3
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723296954; cv=none; b=feZoWAMWsXd8KPOHCJtrXDMYCzqdEJq+Ucl7I19iM0Nj3TRlD8BqJ/4yHfeJTF96AnH6cAvW+C2pq7RfSwjRJCs3Z4w3663EDYtNekEAVXaBr20Gg1iqvbc7Sh4bq1uOntZFZe7lkRikJjTBUqYrAuD57mxnXxNBok81gAdO+g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723296954; c=relaxed/simple;
	bh=527wxp5HzGjCYcGddHRW3MD4U+ccsjgC2CfQYhdbqZw=;
	h=To:Subject:From:Message-Id:Date; b=C3QdLwgfgPPVImnH/B+qP0HlV+WD1ZpyHrsIXIm+Fsdo+/RAelbhOcqBQtLT8yduDwD28YIQ7JPdl4b3GcFWpXNwo/SOhgssSKjpID/EL9LEB1JyvUYo+GSK6HGQZREKmdA8UFi1RKZXwOuv3c9RcEKZbzSCy97ihvLz7+YSIwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfrx6iN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfrx6iN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76A6C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723296953;
	bh=527wxp5HzGjCYcGddHRW3MD4U+ccsjgC2CfQYhdbqZw=;
	h=To:Subject:From:Date:From;
	b=lfrx6iN7CqFUxmAWa5/7+BvH0GaMym75WhKeAwAhPogBjbLVOrwKvDa7I7o78Ij0t
	 kzKf1pzllIfd2eEAj6e6t06+8fXeJLR0szk72YGckY0WhFAG4VI8d1nLG179ndOdEe
	 Tbk9/86mfXP5PpBxF8xMM5DvCh36Rno6HfH413dlEbzDDZ4H0KPr5m9EZjXgTSZMUz
	 NWru2l0DWx/cOqQuiLkZLkkjeelAHjgRiFvcHX9PVA5f7GnlqVtwf+AniejbrIMf5v
	 FgdMJkFK7BseEZbOD0SQdZgBsAg4VjFDQ0NgPeCCwQLu284eQ8+eVc4cswpc4+qqN2
	 DAIuiCK9qxdZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DE3C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172329695359.31042.4987390125668490575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45b788f9b18fe616aa7f8863a2e0a6b3ce48a3a363844ee242b3ff31f1b696f
Date: Sat, 10 Aug 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723296953
