Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E01211CA0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721637954; cv=none; b=Oigwnk8VdBtTfhGxhKw3mI4tcUuz2KDkOZlxxa/84FLmgYZmEMl8LXUge7jOOI53fJ73tI+SCoQV1C/M+HdGrLNkamLHcRnw8qnOYik1UjrBv2NWtZZq8hW3QPib3S19gD/cGVwd7fJqL7jKVvrkACKTpHUFk80hEgBWimHo7vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721637954; c=relaxed/simple;
	bh=d/qq27hjZTfn7082bkXLOrb9REeuyI97PEMXPDmrVlo=;
	h=To:Subject:From:Message-Id:Date; b=f6anGkLmlD66hsPHOnZhe3gmQ7bniuGSZsSj2VDSJBO9tYIPhTGToAhI+OrGZ6gJDXrNBqlf2smhd4KpFSvb4l8IglUNLsopDl9CaFjl/TmMpdOgYTPSSi96mxgDPmiNda+0qUiTBnu4f+IKIZLCRQiBTuYU5SJlY5qj3LsuwCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2Qp4ZXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2Qp4ZXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7137C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721637953;
	bh=d/qq27hjZTfn7082bkXLOrb9REeuyI97PEMXPDmrVlo=;
	h=To:Subject:From:Date:From;
	b=k2Qp4ZXalQHO4DIsPDcVYuXh3KvMnZegEPAD7dtK1qjJJnudVP1nLQmjnzgL0pqkO
	 kQsTyTzadC1hDWkGM4x707yzv71Fao8O+c6Db8lDdlfuI+BwJjtEM5cqojfYO2mYxF
	 x6z/NtbjsNL20NvqNRmktDRvcVl/NVDj4VLRH1GYXUTOIe+2mrN2iE4bqhWM2WC97D
	 iHd69WBAQfPiO7+NulNccU/+RNdCYpFBaXHtgim0RB/umwlNhC0Krt9/P3tNi/j9ib
	 XcGY1IshrqrIQIQ2iEmEjwVAUNr0Xv/dGgKdicHjF5bkqFcaTN+FFM97IMBsEWIbvH
	 yatt979S4sFZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A8C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163795359.18790.5865137056182589315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69658f95188c755242b7f666908404d3bc6ac7837de8c810d8b876d7ec138ae
Date: Mon, 22 Jul 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721637953
