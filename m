Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4492E1755B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720136723; cv=none; b=F/xNju7a/VrMbxN81xzvikEe53c6xH264Uqk1xloBiA9wuu3Wh215e3nXOqptbyDoL7gdBV0+ac5kOdqpm4zNnaKoyj55gwABlbwKbpeLGBPc2FfxQCtYg88Q6cI1r8iT2jxfOBuk9FF1TPTiLpnYpUUROm/DmnCRcUQ33pD9eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720136723; c=relaxed/simple;
	bh=38et5AaqerxK0ipHbJVQH/1yx1y/JijE5gzsGh5dfJE=;
	h=To:Subject:From:Message-Id:Date; b=W1BfSLaWjYzJfVYvRz9OTzRkMXggJH6zqvnJ8fwNUu6cZ5/eYDjQ45Yx6RqDuDwx8ZAgUNtAOVBULcL22WYMe0dWEKgF9H/RPWIrENUYmTSLDwB2kNs9k5TnDqR5h9FmO55c5hdHWlLFLaAoB85rwzLtpqe3brnz9i84goC69Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvhDdDC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvhDdDC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15E8C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720136722;
	bh=38et5AaqerxK0ipHbJVQH/1yx1y/JijE5gzsGh5dfJE=;
	h=To:Subject:From:Date:From;
	b=bvhDdDC09/J0U/HxSLA+3XQNxDIOuwbXi6k8dmlqF4FiYO/smsqWwRI0QCCD9lClD
	 Zj2kO6mkpe5HOcErmbbeG/3BzBBqsQmtyMxK1c/wr5jzIbnlVC5FBRS19G9uoygmpX
	 qODYsmzmgvA28KOApogsnd9FLcMggdbRFDj4RctawUWS6RkVBhJbxdMboeL/z6Eyaw
	 gqMH526J4V2fZL0Kti9B+S3z7D0awOd9sBcY6t4XeVNFD4FvT9bqmovjwAudmsJBG0
	 u1NsehwqCFzEMBiThKvUoDM3D1tUUDjtil+pP7PWcGH9DkJIz8kLfrQjLZ/dC+ANEf
	 UMnv0YOjw3ZHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E3AC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172013672276.5518.2641820122528577534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e787281d26951204dffc8b7b2437ca414b65258b89b81e921bba9506a2dfed
Date: Thu, 04 Jul 2024 23:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720136722
