Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4603245945
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715366543; cv=none; b=VFtVGeNJVPEVdawYIftGPKoRlKkIS5EKffYQlWRBRR6O91osdpIP0Jbby/Bjubi66vUq2X8RmiDPxtvvlMZJ5vHxaY+1+To4yQoEBZ1c4CiysMMT4L5y+GnHTcpNOlibJ5Z5pz5hdgusKkSW7tR1kRr7bIHDn4dSCtJYBf7AFkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715366543; c=relaxed/simple;
	bh=D+DWdV+FNsGCJR7Ru/9O7PZFEjuP879ThHPcoGSr99g=;
	h=To:Subject:From:Message-Id:Date; b=nlGreRr8evYZTlQUeu/uIcOg2K2r3PjTv6wGj0ZETPzS48st2mMckw4Insh8CK5Fb5ctfb5lSh/xGbDWlYVgrcBc3w7uXRhHghO7dZgCMApoq6eDmpoiJBfXsWC3fZELmt630GDQS02D47ba6J2oQ5DZ0u8Mt8av9Yden/Lo4CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJNUdZZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJNUdZZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEDCC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715366542;
	bh=D+DWdV+FNsGCJR7Ru/9O7PZFEjuP879ThHPcoGSr99g=;
	h=To:Subject:From:Date:From;
	b=jJNUdZZD2PlX932+V2rZ9ZB6flWbJrUVG4aQE9vL1167MvczSGQPISF6RbTYkNDZe
	 ljtxYKYilF3h5PPF3RNBEvnckJo7V8akPB/WY2Px1T84oCAN1f48w5RCOfbdmKgbeu
	 iFVvXyzMIcZSWltxsdjO25A1jTCdb4KZ3jcBhSz7/IujeaVEEQYuAyQwN8C7SpQ7PH
	 3B+C98SlM8lTOvMFUgXOkdGHFJHRlPhlt6sbyVIJF65jU8muQ0sqnaZmPkbSxshA1Y
	 3FIOyVIrjiGU2Lxy9TLv+mMhAeMteYrOCNwXe+wElk/U7kLJexU6bcJc7BdDURwb2B
	 O5p8PmHIwUoMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAF7C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536654276.1401.1652179658295382091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea95aa23268f27024fa36da85bcbda2572dfa06c5b951f1a38247d20bd6085f
Date: Fri, 10 May 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715366542
