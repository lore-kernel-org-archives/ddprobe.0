Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278C517B425
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767745434; cv=none; b=J0Yw+zXvKYEXFQUyqywrgqsvhxBhQhBp7TzghhCsovy+LXNgnQuiR5soPnyhncJEqNhMlDtfyC1lVQh2ggIeJokMtaa3HPXoxTNLNHms+JjOPFsoDw1tkATVI2FKb+gt4RZlb+VmwTfimtRr6WHXaVpd2WVcm44Up93gcHvVEco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767745434; c=relaxed/simple;
	bh=lX8n8+mz4O5KEE7/6FFo8pgD+SSCZnwp99YaxxyA3h8=;
	h=To:Subject:From:Message-Id:Date; b=YnpJqmRDylalKjqHvDWBZFi/iZP7xIal/VA6MYEnXwxjcGRSjqp37jKP4CAMovVO3DlYcDhy/wZCO4ua+h8svx0XtVnkK+HdSwbhCAc0jmafmmVFF7anWU5MeWFOC9a381nQqVoicZkC1aXhuPZr2b0qW4y/xHa1R/jhLBezZP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peuaBWwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peuaBWwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D8C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767745433;
	bh=lX8n8+mz4O5KEE7/6FFo8pgD+SSCZnwp99YaxxyA3h8=;
	h=To:Subject:From:Date:From;
	b=peuaBWwch0CwUbo1EFdsQPpVq4B3iRUnNmepfpo8WYrq8ahGFqf/1Q+VueYR5U7+5
	 KJG7W5rL0XJyfxEepH9fM+IYOPteO8TeaypRvt1vPWPnGckoZxOV2g8Wh8iAd+61Xi
	 szSt5Yh4AcvhhPmpnL4FsvET57dJ6+erHWor82x9nUuycB5N9QIe9PmspWHmxG2LPH
	 EJFwhXq2Hdw7VqN+wClVKyV7VMVifLYx5TMh1IlAraVxWAEHee5ZykUwJ4UUfm7wVb
	 WIuZg9EGBwBXP+4wR4q3O514gGqhUV5zwuQZP0FVkRv6n8AaJTo8YJm6b7VyTVCF1h
	 mwBk7YySpMLhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F274CE9D7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774543357.16923.8754119480418973249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd0bfd0ef7a453c5a25864e85bf38653b2bad0681bfb213e2b126ba38bff613
Date: Wed, 07 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767745433
