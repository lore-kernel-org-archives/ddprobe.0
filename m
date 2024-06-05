Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561C779DE
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717557983; cv=none; b=XTQB87z1obnh2yIBy8sHD1dF1+gaRggXyUZvXuV80XJOr44ZjUnD+iUfX1nCByQWRt1JhpWLgL2ajiLxrTPwM5DpgwNdaMl62JqhSQbLSoOHdcHPiojxyEaWakf/lSBn0+j4ipMoVn+iXooN/8Y+zlnwpCIIZCpKp+188Bpkb5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717557983; c=relaxed/simple;
	bh=1oRRC/h53iHZkV+o8+yJvPRQh6U2VJUt8YcF/n4xXGs=;
	h=To:Subject:From:Message-Id:Date; b=nbgErUtbiE6TRwn6fCLwILSK/UNuw3aoKiAWpakM3Wh31TjDJ5Yu6PS6T70bxpC+QGiqV8LiNslePhlsiTjlx9ocUnNpIAC4z30hiwnHKq6VOq4sFtCCial3bdOlKEnqGu7St+9keJu5mZbp/9qZqLRJzJJzj6Py+mnaOM8Z7j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRlTefXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRlTefXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2D5C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717557982;
	bh=1oRRC/h53iHZkV+o8+yJvPRQh6U2VJUt8YcF/n4xXGs=;
	h=To:Subject:From:Date:From;
	b=tRlTefXGkZIt9HD8Q7sF0VOipf7JbLjSB3EXfOejmp8M2xiXqI6r6BelIkjEQmIbY
	 ZMAC+nAX75FTuTCyR6Ev07Th5HI27UOscQerEvRv7kv8UYJd2J6RzGXQX1pmsCZbT2
	 ioMQSDzhVaDsawTaWX1rsCTWLrj+4s97DTYf6zEamkyI9/pVD4tufcRSQtfQgZfJK4
	 4qm0XczFraZ0WGF3XW1M6AFj/l2xQrnbIWhulPDav9umirUYQxX+ucRgnqqmvEwXIK
	 KjdbHw2hgvrTMhrslknWGgIJVOActIUXc7GAmZoghFav3s3fnOYcihp1R+1OYQYQ4T
	 /dBK6JSETrHMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFD4C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755798276.20213.18026516601892659381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7170eee76385ceb52ddc812d4fd42579d0bb961c74ef0a47b559fd77eec053d7
Date: Wed, 05 Jun 2024 03:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717557982
