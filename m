Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7B73016F4
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766435034; cv=none; b=o2dpZA8JzOeumKSJTumKZnlZrB8AC9RFnyDEN2moFSvubzS7bI1+tjlLaUbh9QD+0VIlJzcDOzA4t/0zvSSbjjZTNXAN8y3QeyavrrgoQCh2CHxCCV5sA7o1Fb9XtV0Q2Tq++HpW9czmu81DvAR4JfKMmQzjD8N3+08YcdEEHw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766435034; c=relaxed/simple;
	bh=wiSnvQJQhiMVfS7dHIXo74K+9R/T2Ub4XnVEK8vVYKM=;
	h=To:Subject:From:Message-Id:Date; b=fwGWOO/EvKcTVRTr4g2TIBHFK6sWTUpmTjucwx+h5jU8sRsTnXlK5afsyu+E2ypeEVat+gIzNGKO8FEBQT0veYfUqWaw2GUon8E+Exqid4i71sbsNgi5uu1znFMrguLRuj/j4UfgBfbfTKVEL72Ctip6aklvgKDkThNCXNFyvKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b66yAIa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b66yAIa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6542C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766435033;
	bh=wiSnvQJQhiMVfS7dHIXo74K+9R/T2Ub4XnVEK8vVYKM=;
	h=To:Subject:From:Date:From;
	b=b66yAIa7NSinfz0RX0elj/4sJHFliwCkVsA/cCHKW80rip8tJ7FAZBj3WEF6R48VQ
	 Jl94YLUO8A8b6U+mjxZUuEzSgQuPbdQdx4X0GTjVU2bjEYjewwvZd2TEUZqSY7AO+E
	 Pg+styNT/6YQqxEaaRIt40fh5iFTXP0vRIWuImnB/dThHKEGR3H/hR5yQvA+uKg6dj
	 4gITT7c9/7FuxhTEQYtSsfyJCNR425oebNKR9frQCi6zrJ3oDfo8zhEC9ojY44nmtb
	 POfrBhPhIU67mj2HXlJMx6FLGO/FjUY7x2UMMoEa/FGIASI9ys4hWe0I3y35dg+vmE
	 kUu0K93jSkEUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93179E6ADC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643503358.21642.13759985125698181919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823559acaf7878b4d20131e17fc96d33719cb41854f44329dcc8341730380bad
Date: Mon, 22 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766435033
