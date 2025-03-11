Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8906F30C
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741702134; cv=none; b=qcL7sS+RsIpi5+u65C3VgRkGWvKMYBmKLVVU5W2nM9Ic/4x1DDmvGtNslYueRJEhCtrUmzJRD59R4KJGx7NTTvc92+akrTzqkYdfRoagEARvRYt5Ix+5HKdYHw/oUEkMEA27XYYkptOy6uhsP1VRINf9WJrT3Su2LV61BNaGSGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741702134; c=relaxed/simple;
	bh=wHhxutSSaZ/cwI6FRrFbGlmuQCsi2ENPvLJja2Yl+Cw=;
	h=To:Subject:From:Message-Id:Date; b=tTcOKSO+hfm5NdoKiFER+2JjHldJ+gkvhY8cAb1EKBls6SlEBl3B+UDYcuWgEYICNciXc8wm9bQnluMebJjPa1kR9wjTPDjLzSrcgLvBqftIvk+K9qetiV4znKBuS9f8fXac/hfR8bZvFrVnBkuGregP6WSHPLuc7vPANrZkDrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ic8kHeHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ic8kHeHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B53C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741702133;
	bh=wHhxutSSaZ/cwI6FRrFbGlmuQCsi2ENPvLJja2Yl+Cw=;
	h=To:Subject:From:Date:From;
	b=Ic8kHeHZHY+sAOIOL33EqnVPdqHlRsVNrrs5PJrD48NOvsrK84oCkXItWJrswmN6o
	 DM4iYnmGEwVYjop1HRu4DlRRqxOo7TTnD8uv4VAT3+tohgric3EOBxCk/IlEAnZ3QG
	 oROQu4bgNBTAoOyoXGfd021OTLsP8uIvTpYT3gz/BYGq+k7t9rfNpD9fpM9DeAW63M
	 85VvQH8HqfBaLv+MOOtU+VFmJ1+BZxBzxGj3itaRSK0FlBacWNbPktdnX11e8RhTnu
	 qhOEUuleHUBSCEMsHbXdkx3Vi8gIeHiZ1RF6xBG7TB0qhE2dKdWaPv6t02XIN+xHJO
	 cvhfwKK0afHRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDAAC282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 14:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170213369.20664.7573796051250640363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511f7a76068969b536886b0650034823d276932078051997b45acb752062f0e9
Date: Tue, 11 Mar 2025 14:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741702133
