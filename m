Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1227D15E97
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767236634; cv=none; b=VyRpeF8Atu9OyEIdfLgA4Oqz7qVd49s4tdo4nRy3EwImeZxTnr6rhNb7wgCoPAXUfTtYD7zBnYTh2aXsjmkCB+RKIHlbYV3mZAKFPaWv5WUa2ZLoBCQpaAzpsWI/NrvfVi0kC6rI6FFTTzTLxR7AtZ0/XpiJ32gB2zlU7dxa0aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767236634; c=relaxed/simple;
	bh=ldEJtKBYYGqufzE8nRWBYrOewa7QQiIXenRLwjJkFFQ=;
	h=To:Subject:From:Message-Id:Date; b=n0fIKAblWM4jnH9FJDWvhr6+6B3h/g7NbWOgQljjTiIXQ00hZcIaV5NrPrZnFeNEWNdK+5XLu0Csy9r/lgX2QQDXo0T2FEI+H2SH4WAql8PRyLGg+hJOv2M7/+ZTUaJf2fHQ9ZYM3vPAyjHygEHYvkA5gBmL5f0qB1vwf7Aq9rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0VsiS97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0VsiS97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A513FC113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767236633;
	bh=ldEJtKBYYGqufzE8nRWBYrOewa7QQiIXenRLwjJkFFQ=;
	h=To:Subject:From:Date:From;
	b=P0VsiS97tB5i49dgikZOE8geuCCUpSY9kIMDGe+tp0z63gSCZtzvrbG2NJHMMVfgq
	 kczkCSCCIVV975rGWqsPFaCbVu7LCfhFRa4sUuv8TI7ao5/9EE5N0k+8uHDR1Mu/wZ
	 r8i2aNI4kyayZJtc6ui1oSTJkC5385qFQADyeOS6+gjnP/WgEgDnQpCMAto2ftT9GH
	 nW1+Hf0wY8ystRMs+DJ9UE+8jNBYgg3cOzXN7Ctm3KBmurQ7trALTPLeoGmNofJvy9
	 RwalsmJkzyWOTQz5yrdVv3gsOEaeGyUb1j0Zfr9nPZmyTt3Tn30YEidhQCn7w4mRG2
	 SUv6zqk32ogDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9492AEEB573
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723663357.13687.8913049656025694701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8853471cb897412fad9f6f93f3934a25fa80f21aef32c41536f8407e87f0916b
Date: Thu, 01 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767236633
