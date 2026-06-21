Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1892E346E46
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782075394; cv=none; b=XJiIXEOx5rnwYidHVTrIJ3TB/D8ZXqJoSwK9SEKa7hGWQi1eftgEstMQ6qP2MqOWPUJ2QVwlE71D7h5xfo99vGt07v75tuY9KQoVdC+HV6p3NN1OJV2Da52aYjn2ogb3VkbLeg5bQM941JSPp+EVmWTV7tMhhkzBLvp8CXSp4pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782075394; c=relaxed/simple;
	bh=+JeKiJWDph2fAJ+6y99fHDFpC2tHS/rgeOfPMaAEH58=;
	h=To:Subject:From:Message-Id:Date; b=qR0LxDjfpVaS7NaNsjrtw9VA8l8w/QT4hNQcOhG1guWPlc6CgVx3w13G2jdAqjWFg7gr5tMIViLEkuXRQwdsDjWqoKxZlkknl+0CEx9FaB99J9/8mbr5YUj94zvrOUjJtzFnILS/jtOVZgCF5tsJCJOj+Pmzbxwgge+SPVZIaGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2skWN4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2skWN4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB95BC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782075393;
	bh=+JeKiJWDph2fAJ+6y99fHDFpC2tHS/rgeOfPMaAEH58=;
	h=To:Subject:From:Date:From;
	b=r2skWN4LCQZRBW7oebyLc4bMKa4XrtxE/j5qBDmoyZhOpVuhFLckoY+h851ICiNzy
	 LUui+2ZuEB2gU72+JNykTUwlI3tNROLgC/+/oa6Cnq25of7GTrh97l3h6r4KxNb13z
	 gyBSBf6wrdHSjUc/k8tG+N0lv6yM9m8QC1No5jT1kelM7DkeoHou3ztpkS6kWyLEP8
	 qV+6r1WcUl6234n7frHDQFiwvg3ig7fW2l4+QZT/8VLjYiV2EEfO10EWtGQH3te4qm
	 vfTJRPz4otQXcoygh9yUhM3mnAServMn+dxMg6qXjmXwgH2EgW47wLQTe9fcR1cLMe
	 QNRk+At94JcSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98F5CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207539368.27941.17494500475406992306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebdab596e7d928586eb04039b7caff9ec2611c2ba187bd38dc80ceb2b43f052f
Date: Sun, 21 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782075393
