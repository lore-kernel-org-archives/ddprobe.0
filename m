Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2521E2858
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728512754; cv=none; b=GRWrhycFuAVcVKo5oNV6hk3dYAnaDvJVfETl10OH1gh1AKrQrvrKqklyK0dEa2hOuZM3RRkfnK0i7TIqAqfIkCHOEWC19NgOSBoo79zBOpSVlP7v6lHEeYd9eu5lLhOq7fkVzYu858Ra5+LRspGY05Z76/YnCVUQPehGxBtqLwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728512754; c=relaxed/simple;
	bh=MWC/FdEDYENTT2y/k24BtZJzSJtk49w+yDGi3Ep5k48=;
	h=To:Subject:From:Message-Id:Date; b=nueS90F9kBS+HaDBfS9Hv3GRQLmABdgIUAaTfkQVKhq9oKOSkYdPql9BUQeYlBSBp0fnc1IZz6+HleCh5M6Mp2DybWhwCuOIG+Ogc9rnyHd0/WM7i/l/VTwUskor/rjoYFBRN+9OmbiqTrLz5ZS9v3u1qK2wGeLR6QpRqNtbENg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hG930MPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hG930MPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEC0C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728512753;
	bh=MWC/FdEDYENTT2y/k24BtZJzSJtk49w+yDGi3Ep5k48=;
	h=To:Subject:From:Date:From;
	b=hG930MPv+RIdCTwgdRPV+QLOD/ujGyTGspGHdX8kXDlc6vqlSjQQub/WFnZ6PwOqn
	 psYhSSWg8bvRm5sD7z8QholjTkfOJL1ovrHFtmYBKZeNcpBGoG7+drXJUN0zuKE8/n
	 21WAzHdyCVZWfXr40he5wMr5Es4XQuaeZNF9P8E0+mvneI20J+9Ex5O9jQ6rSavBJA
	 BFTYEY/Nc2rxHAu0zJcOS2Vp+NANvOqbiXiuKMvDOujwYRvz1/pcP3fqq/efUBQo7r
	 I3kaAMB3M7aawPBVB2WOFgsLYwjitwTobItYcOTj1qGYU4kMkaIc6ASJzobwokD8kF
	 e3AqKBtodO16A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F907CEE359
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851275362.26154.16037548981128340338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23da1ac27c0657fedf12487c48b4b29dff334ed9f4e42bcc9dbb6fc13e4fe7b8
Date: Wed, 09 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728512753
