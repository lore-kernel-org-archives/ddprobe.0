Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4DA17C9E
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759827594; cv=none; b=DdVRszQoKCtHRvBdKrhio/5fxx3zRi0VRu7FTW+zxEEe4YZSH5WLsLkW0WhHnU9+4D8rHNwnmOn+RKcHL+eHPVbnpydJi5YBEaqPKJT3gYjW+u5Ns04hRrjauSTVXgkOAu7xklW4OVdcl0JxcQTVlM55A2ifwW8F0PiELXshPYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759827594; c=relaxed/simple;
	bh=MKNM3SUPE8p6N6aNRTslKILrA5uXP7EzPlZ/eJQdYEI=;
	h=To:Subject:From:Message-Id:Date; b=ZSdzyw5KR//EbdqhOHTEZcOElRd6tlqSgGu248lF53ycDTG5T4IeNQfDsgTGbDz/ldtY75a3XAFjLQqzkw5OXJ2rwmpbjRYv7jgCLWuhYv2eXrzWPpfbnKumAMg6o2EaasjQ8UNv79o5EubHw5kkC52OUGM1ijTuw6F7IKviP0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srRStTsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srRStTsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1215C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759827593;
	bh=MKNM3SUPE8p6N6aNRTslKILrA5uXP7EzPlZ/eJQdYEI=;
	h=To:Subject:From:Date:From;
	b=srRStTsG0SPJLJ0jufF6Rn46QA858YRVBdXzEqt5RIYkfIulFPpSFe18LGCI3smOa
	 3HBCN3KIhoetSnmdT5VdfI2vq4VZHN3FB+mmV6dYJSlrNbeH9o1a5BJ0fSBVtQ4DqM
	 I150Ib6AX6OiBVxBxiqytpg/keBdoHPC24DDmKMzdjjuYo0/izJ6uoJFT7Emwvnfpn
	 RaTcBDZCS2LNxk8QT4kAf7xLIYp4Hnb4huzyCYVPuHceYthCiwVobCBxHbe27zLhuo
	 q/LxhMrTw2/CyW44WV+OEX2aXI0ijaZVaPAND3BaFFtW+t5VFOOek01OmgDzzQVaCL
	 +4TpCxNVUYLZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9030ACCD184
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982759358.25434.604154455232160127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec21848f7eb23000009235fde3ba68eb6d5bfd2e0d9068c651d11dd1ef4f6966
Date: Tue, 07 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759827593
