Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D973833F370
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775640333; cv=none; b=m+22060y3Aq8xB30JF6MP5ZFs4DLbyVakIHZ6HWcizApHQIpy8rRVyCYfOQHuGq0GK9nmka/+bMQ3lxia3HmldghbLrndfWu+z79ieFqcLPIJugxcI2h+Qxm+kDYjmRUHNT+2vm7AEL92zrnbnlSAny/hcvvP2uEE9TcLxj99Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775640333; c=relaxed/simple;
	bh=HvWhaIArGcqPu2mf9XWw/SB1gNMKr5tX3kxONEtNzpo=;
	h=To:Subject:From:Message-Id:Date; b=CNAmhHTm9xBQyV2Rzftj+D1/x2uocsW8/+uXq2EKx80hq/BmORwWD8Wi85rlNLfvf/EEtIXpS+e/K3+2QdhXEFN/lcfuIiHZ7pAgxXw9FJLIoVffX0lVF0LHd9h1bEnZFR6INpMYhdLeXVbdACjBJJuFjjumrm0tTNHBQmNzSTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tonm/4hQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tonm/4hQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF538C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775640333;
	bh=HvWhaIArGcqPu2mf9XWw/SB1gNMKr5tX3kxONEtNzpo=;
	h=To:Subject:From:Date:From;
	b=Tonm/4hQf4gyoxA59QrbZe8tk/pfTkYVknHMmcoFZDdI4PN25/9UAr17FM5C1wCSq
	 ewu1bOpAG6CfJLg6bhX3oADDq9XJ98hiEm/AVS7i2dOXiuz96ZZOMty7LKET9Vva01
	 PlVvZqKfQI0vk70XYVO/jUEz4b/VvCBG2SKPpnZKO7qGu3NrHfxKCB2cshfgrw7YsK
	 s3BXabE/ScJWSw3OU2yxZuTjs46Ts5/mKLcLBT2/D0WR9iEJKO/+UQmjf9beZHgF9s
	 DJwv648M2aj0sUwl9dxxnqxtYK8h8qSV+KvIwdLCg4xuuZBvp9AhE7VvZMmMnyagj4
	 mFgNkSQdzQJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD461105D98D
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564033370.16698.4548031258015301867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52394a7bc6a906a48451cfd369dcddcd0eb360a9b3eca2c491555647e7955dca
Date: Wed, 08 Apr 2026 09:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775640333
