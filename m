Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4723A155757
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787544034; cv=none; b=csL8wXgr27iQCgqqnrLur/e40Cwp/YaVgY7TAEK/wZVswALC2opxIhDbwOfGvCwEP63YHMC7fIK0C6vMtXXefMgmEpKr+NlhOAeulPPGyNppTcGJmtW0xlxp6l7wPhAkku6B54m7gB/DuXjM+n0DYA1R5KWv6Gb14bSwhp2RuTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787544034; c=relaxed/simple;
	bh=hbNP3UFTIHspQQ5G3RKekeyfup6nPhy46xyoMTQwevY=;
	h=To:Subject:From:Message-Id:Date; b=mP9sgnTdBT5/rJGwYIYDgYB1s9xDfeZSr/AJ8V9eSQUQO2C8gJwvXcqsNwrYFAfyDm74rMRoszAIlqLwTYgAWmll62b0g+r9emsch07SpGX8AXvghF6y2yFLVdDiUPemChw2eJRo6ZfVZmHWulS8T9q0+dI0USQAEWN5wXt3avU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJ7Em9Ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJ7Em9Ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69D2C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787544033;
	bh=hbNP3UFTIHspQQ5G3RKekeyfup6nPhy46xyoMTQwevY=;
	h=To:Subject:From:Date:From;
	b=FJ7Em9AoqpsLJQQ7RJ/pzctUIuUvNabHl/rGQHfE4ZdtGwPDDgEaurlrN996n2ddH
	 gPBOGzbJX7UNi/ZaG0O2HIxD/OBhBScNq/UIhg3hZPpBvlgP18Z4tpHG30c+qChQea
	 q19l2gXwqSmQ4cCv0CiVVaiBYAH0VyA2ElTSTqugNbiTqtBnwgFAk+urutPUynfRTb
	 rmqYw3YW3roNF/lNHUkymzN2tKo7IobbnIE5knISFQu0kLJ0tcsh72BflpZVSKZiHz
	 HMTUMlfu1oGdsh+7JylYQpMLwIGqQNr7CIiXj7KW2afTnwm7c8+Nbhh33KNJRQ/pTL
	 mOpwXOnfCoLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DC7C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754403368.23135.7902901598321780911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a036a1960107a02d8681babb867d87106540bff74244484c1f99861715cab325
Date: Mon, 24 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787544033
