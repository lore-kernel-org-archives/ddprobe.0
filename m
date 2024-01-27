Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062C11DFE8
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706350697; cv=none; b=h73nwB+60HsTgIaJqorFmn5308Rc2A5rEyzNaR9HUDo4iparXv4yg/KTaWsQraAhV8lkwVzQxj13iITXDo3lvCEft/f5+7m5gOTKIzk+4d7rxAbsnHOrJQNp9HjnI516OBnxZOw2AoXUzEXjZjhO/esULHPWLzk7x5QL22fMqhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706350697; c=relaxed/simple;
	bh=u9IWW6xzT6ifjTG5xRnT2GdUmkTgm8+cP0ZQCyEjLOE=;
	h=To:Subject:From:Message-Id:Date; b=pEIvTSXSX2Uv9GVhjddyVEGQxYU6hskNhEMdttISrKQ4teK1ZsBqlq+pTZgD4Zu5vCjlh64uUA3Jv8uaRBmcdp+U+Dru6QrFIZisgVlCZhoylEeOekXsH7CzG+YNEg27YSkEX8oS8xIaX2rkuD6DxBh4euC1PLZSkSdriRQJtjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfKe1lZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfKe1lZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7616AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706350696;
	bh=u9IWW6xzT6ifjTG5xRnT2GdUmkTgm8+cP0ZQCyEjLOE=;
	h=To:Subject:From:Date:From;
	b=cfKe1lZfiaWljt1RIcAesLtE9acCj5v4qvGLCzqzPX74UskjzdnXwiyfSNpDxc95r
	 Fv3yThYgpyimqPPnbp5ZhFEg9Omobqs8RYAfL4CI25cNODEt6s1IoZnWahQAIPkUDp
	 L3F49dqtDd9S1SmywVNdT4nhIAJiUtn07qEyKKioBhqzuFLD+aYGGaNaJEPdzgSstE
	 IUnAEIlEuDreRugq+p7lvbbSFycRtumDZpPj4q4uLNLcalub/SBfMKX2fp3lQ2OVZO
	 uln2P0BhdDeVvQk6ordUkWwogQAaffRrHaRrMmfmYvPKtvdEIaV083uMFDgCvyiGtP
	 O0/Q1kzelNlTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBA6C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170635069637.4592.13164607340366717620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dba10c2b1ab7761a755d44925d91565d502344e22f44186751e8d2ebbb3f85
Date: Sat, 27 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706350696
