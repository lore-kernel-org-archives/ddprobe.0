Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4506338D3F3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784956834; cv=none; b=oYkOy5OsPWyg6Bli+jCqnh4U9BijkxiGyLXViJDDzpp2ekqgHgULZDhehaO12Xp8pxdr8fIhzK3MksJmurjN0cKeZuaawe5mE6oG5JwHMzcYx1q0xiFjIJsd9bxylaxhTbXt7Be3NVLwvwdvJdbN5fNOgFA3LW+rj8JterEfMq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784956834; c=relaxed/simple;
	bh=G5lmrUk2OvS1I2pBv20U5JZxQ3ssQBlV7CY/XfjY92Y=;
	h=To:Subject:From:Message-Id:Date; b=pgKlmtDb9xzXqXprzTuChV5bJh47gX09w6SI69WLDLyZasHsU3OlU9cymw0MEu7O5vfJ7VoBJDAI6VNoPc1U62sGVuHoIIjb1JwZJZXDF7pH9NvsWZKHltW6R34WB+Y1rcUY36oSArviZs+INkNI1ovlDzHpwR2PlY67/g8vY9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDmyYRXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDmyYRXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1C6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784956833;
	bh=G5lmrUk2OvS1I2pBv20U5JZxQ3ssQBlV7CY/XfjY92Y=;
	h=To:Subject:From:Date:From;
	b=pDmyYRXr5uSk9hx4YxcZxi8GEXPHbcN3SIqOHRHrRFq4G9BFCgaaafZIvHM4XhQVv
	 bqjipdly4lwVWgo+kZZqOWfm2KRAjDpUw9kcmvAC/LshxjEC+Qnz+KyqBBbjZMEBm4
	 bhOgp9izkpVAj5LVig43KO8YrITKBXmCL0cJjaRSWx29KOWWFZfvW+oHdu2Ft9gIVP
	 AssZnvHGEmy0MlYWr2rMBF9ehqgi3sA+siYOjHT413/1a13xGBLvzPFLpCWlNT1DIK
	 XSCxeovj4IZXFneM0OwpR6PL/aEsZTHsF3VwK0tCBgNtq+pwOi5O1CywYGAMnjN4bD
	 JCIeaHsq41/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB0C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495683368.2399.12259779815631546938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7f375b73876a222dd87e49ec2f658fe818d2b35a0ea3895e0d4f7c4f829462
Date: Sat, 25 Jul 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784956833
