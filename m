Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9FA3019C3
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760377193; cv=none; b=FpLakvEHhYn6L4GSrfFJqeA+hUgw3Qb3pfssmdjygXKzZUBkJa2T7vB6Ypg3W5TwWZkLl3KTYtOitp9hpneNKmg22bWklQMCUdigK+i4rgShqjAMXG+722a2EH4pEM2sp57Nv1sSHcQZngSD7W49jcKSrOJ1QlwHDjgowraaS2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760377193; c=relaxed/simple;
	bh=4p0DwOdAIwYBf8ArUXeyPKdgWdezpYJDOlNpnCOlK+w=;
	h=To:Subject:From:Message-Id:Date; b=dAK2JH/LsFdiyGEFTNtzpciWLDI78ZrG40Hr2gzJT8z+1y/BZHQlTXKZrEzxm6aSUbuAnwoDH8oQjrj17jmCmFDIeGN8k8abo4E5wQvB/PXJgW+ZvqO1R5BZfFLFP1kXXHxToZsI9BKco4PlSiXAmC2CvCneNStyp6baFMtozB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVZtRsb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVZtRsb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0683C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760377193;
	bh=4p0DwOdAIwYBf8ArUXeyPKdgWdezpYJDOlNpnCOlK+w=;
	h=To:Subject:From:Date:From;
	b=IVZtRsb6wvldJceYSd4GbmoKiYZvUY2lN9kJ647HS5OLvn+MIiO/iz2qzGw+VZPcW
	 KeXCDUs8cpVzFmoLIvmgnVD3TSb/O0fmtXfVUAkBK3UyN4M6eXSu5FZ79xNybVsI9T
	 C7Qjb76ssdjaxmeQOx+l7jkfb1W24kXGlfE3fiHoSxZV/gc93GAyPLao9khRgf48J/
	 mYRK61JDI3JUS8v5DNdYTL55wvXwy2a8/OLrR8StgRGKteMwXp02OG5nMRteyWZ0PW
	 I5zrRj/D94o24kaUDpB9VZ9qJmsN1/gww6AM9lSD7KZ6zYRkVuNC3rdft224BM7wmz
	 Ga/DTkSO3/J2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901EDCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037719358.15737.4279196227475760355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac9b267130304c31215b86ec6984c805793a7512c1017c5e44c5c25d03e39a8
Date: Mon, 13 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760377193
