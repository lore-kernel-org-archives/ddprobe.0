Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2183DBD5E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777593454; cv=none; b=ZZQfi8p8aWJ4F7oVV2bQkRBVhzYMTJoUQ1XbHauRJyegAjJwFh5Y+9dDO96MivqrVt1/CDWbSvEfFStvnkEKNLnpDolqZkAuMOrOscJmbbJaETpJVezrRlywUzZUVHQR5Llm8RA3RVQXg3r1symM1/xtIEoxNIsXndiQa1cRqQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777593454; c=relaxed/simple;
	bh=cuhvFmBrBoXzdXFx+OpBNhzGRxUFvbbLCpL8ku+/q+U=;
	h=To:Subject:From:Message-Id:Date; b=M2KhIpXa0GLUxJh/LDQdxPdY1kfOH3Ys3UFL0TR1wQUCJmiiOwZSPKNBJ/Ji+qKh33pE9HpwmG0jN7czfKSUAX/ulpnOTl2UlZwo/GoC7EM6dBdpU2mY2MOyylILZeIO0/wQnua8GNnD5Za7qXkSM/vfIES9zUfn0/YvzY+JEDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBSrMs2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBSrMs2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBD9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777593453;
	bh=cuhvFmBrBoXzdXFx+OpBNhzGRxUFvbbLCpL8ku+/q+U=;
	h=To:Subject:From:Date:From;
	b=HBSrMs2ZD80pKmkPptUH6CAT2KqNHIh2o6qIKA0MxJDolAbUobkqn6QgIafOr2YnW
	 cc9vRbicIYTkuES7YCApEoH+Ylb1CLO8/sklQpkiS23P++BWad/c1ptnWtlWexfhjF
	 6G6todJB+FTywlPudh5KEkblrN7jxBllA20DQKlGg8I8sXtgWqqfBKxPkf2ekoHZ8K
	 NQswndZnyu/vCNpiKnmHln+PYOFlbq2QqAkniR/W55CIcw4qJTquOICl9QaRlM5PLu
	 BRssXJamGSAarWbuO8QmFf/sPOE/YkWJ9rawgzOgPAlqQfMmKhsu57KGJwI5YdeOZ5
	 oaYhOkN1Iuwzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06C3FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759345368.28061.6115543894388769760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63dc77a63319a5ff762a1bf8e727ee8a9cfbd782b2c290cb7829fcad1bb90450
Date: Thu, 30 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777593453
