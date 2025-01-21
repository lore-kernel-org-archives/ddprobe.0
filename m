Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4271F8EE2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737497753; cv=none; b=ofRytuVHvIWeuFLB+bEZutLQ8pHxMXo5rgKJGWXYlgT34LgUitzi3O0/tcJo8w91LdgZ3W/PKKCZ6eCApxTY/gf1GaV2e3vGGQVknJA0WLvXh+40+umrvi9cT8vt1XPssETdNFTXljeDnZVMH6AUgthNQuy2oFH3q3KQIe6/gjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737497753; c=relaxed/simple;
	bh=5aBPWfjBRQozUIISSawFkE5Y25wvyPrF/shAiWDQmm4=;
	h=To:Subject:From:Message-Id:Date; b=FL9lW8HYS4G/SNQkvh6j90OzQMIj7JhEppOXDhN/tzLpgv5xtaQ76EvJjkzy+lN2W3jdJ054x2TL3O5tzCqmoZptUfhqLJiJXP7DkVwZx2TuZfv/KAFeJ76mdEqjfu+JeoRqwM6xUtl5qaUExYgAu+j5wHxb6wgLs7VG9khEDOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7x/VpMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7x/VpMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2B8C4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737497753;
	bh=5aBPWfjBRQozUIISSawFkE5Y25wvyPrF/shAiWDQmm4=;
	h=To:Subject:From:Date:From;
	b=d7x/VpMzqB4Voy+9M2iWAq39XK7xMuSD6D+Ur/h2oUCJviNCdvVdLk+chx8e2SiIW
	 0rvLUvYdjSKN5Tkgu7RSO1WiE1sZDvAiek8PFncXJeX2sd8D5PSN72az6mitPEfvpc
	 7E1pYP6+LV/90gzpMVuLfsZZrT5RRTBG9zuaXQL6NEzPVVmfxc17r/pAdtTTwT5gD2
	 fsSfkDPH/xoMoiDhUSzrFTk/HPznJGeUXIB6UWoIeAXS3IY4ucQ3GDq5YC4VGgB4yH
	 y/1VmHuClLT3/N3+AlTBYQKDVxMOvSKPjSzXe+S8MKJS/QI+oWD2hqHfAKANa56oEA
	 5cW8Ul25YdMZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B205C0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749775359.21835.180410944362538002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e99160c742a0115e7514d6bcfa76de9ab42377054eb0b7d6b656a117b63d843
Date: Tue, 21 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737497753
