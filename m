Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F14C2107
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729387554; cv=none; b=I4u8DSO/llhJzBmvl+y3mDnE4cgWdSI4WIwZFwB3TQfMLr2FuyNQQF0lNgPdTSr7xJOOfPEzdzQ9Ff58rlHHrwmZge0PsRE50ej5/KfqsK6GuZDnDf/ykfVM9R4h9aY6RiyWPjglHIXaBR9xULil8epLYbQGBWYaEgWfK61PC0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729387554; c=relaxed/simple;
	bh=OufHfFEDlCP2OZIpeaxHk57EjbDuASAAPWXaKiy1G8Y=;
	h=To:Subject:From:Message-Id:Date; b=Lzv2RSFCUZ4hj8DoTmgkW2p6lg95Nd0XN272TcwtoERpZNYPvu+l9RtWUlx1oguXYTDaIs27Kh3G476paQtgyh193qtUI5PdO9SxNNwQ45+cWKlCwccbQL9EifiXgyn19JE5JmEnG5dEb/Ot6/I96jqR/UJ8E8zDdZjTRtUGLTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEy+72le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEy+72le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF093C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729387553;
	bh=OufHfFEDlCP2OZIpeaxHk57EjbDuASAAPWXaKiy1G8Y=;
	h=To:Subject:From:Date:From;
	b=UEy+72lepNGqvzkmc80dsUqfh8yQGNrT1lOBID/ebeYU7CzaqaT+7PB9RDcbmlO4Y
	 g0g34321rIJ6JdwToGYHzEAXsE5Em6VAdinA+1yHUPjl1N2IOGpNgrlsuuY3bZLpuI
	 da5IlaNSYbzlD6TOghYd0zxi6QrgaVWBJ/vLvBaIRsRLg8JW8ZSA2r9TfwvLaW1NOI
	 h8s89yD49RLxKZF2YCIUrgi3GloEH8dLys3bWuw0d4iDg1Pemg9G78r+SR6qZcSN84
	 jei6qFeczf3Kt3SH5RvFBhIgUbRbz9Enc8Yto2YB8BcbYTH7P120X8+hQm/lweC6Mf
	 2yEoqCvteDUmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF8ED3C92E
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172938755359.21869.979439234104513623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473f5a8a98e7603bc9ece2b7bc065deeec6f70b4652e4e867c9857eab3fdde94
Date: Sun, 20 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729387553
