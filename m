Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FCE2DEA7B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780544074; cv=none; b=JT8Wtnz06KzBoxr1Acr2YzmOFAmZSgcKm5izC5e0ODC00vqQbU1nxCbEEw/odF/nYwHeU27Tow6tkNzEqf8gim7Xp7XzW3CFlXVvbe/1ckr1wJJlnS/X4hhuMdGod4I8o7YI2phDXgvYeTpij3b/pf1j80284c4ieYBm8X8inhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780544074; c=relaxed/simple;
	bh=F7GIp8IvTSdmqnY2oH+LHWWhm1swvYhJOkkz2z2vZvI=;
	h=To:Subject:From:Message-Id:Date; b=rqr6GxcPF8PykHTREhdOtZushkPPQr4/xFxtwWas74zoquMT9b3w+U3PLXPlv7R3/5PW94ZTNjPek2QE9StpPNwxCuY4kFjZ9QxX/Ogy3ASmkZuas3b0HmEAuvsKQpCasqFZ4TWwztKMV+auaO+Dz1IGi/p1TYz6vrqVyU3ClTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPXLKcid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPXLKcid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C321CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780544073;
	bh=F7GIp8IvTSdmqnY2oH+LHWWhm1swvYhJOkkz2z2vZvI=;
	h=To:Subject:From:Date:From;
	b=EPXLKcid4TZaIM1XLrPOoHg5E/Mt57YYweyO07xj6HOe/41/7X3F+11osxPblnuef
	 brzmSnjLNBEsVFw/zaFCrF8zQNnJlukLL0RN7HJw6THf6VUipOwXbc12UQWMfQffiF
	 JHY7lUfwkXhjIwlnf9CtLEUhHByIHrTVwBgLY2h9mDzS9p+sKOVqeQwKXB/FCnny/m
	 CclXNFf584zm7h58IUprqwUrKRwgGEtDI4ZQGtJWhVzAK9YzGBSGqiTtRoiOfHJGDg
	 wOziWcMgSN5nTTQ1R578aDPF50lYaxFGgMykdxBMN1/Y/HriIDyx/d+GEz73JmGA8g
	 Yy8jv2GV8ckUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A942DCD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054407368.21859.7890322162860211561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4f84cba5c1d9bc384b454187fbe1a5dfb9eaa66fc70da5ac516bacb9e71b58
Date: Thu, 04 Jun 2026 03:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780544073
