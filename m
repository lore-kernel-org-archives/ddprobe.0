Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1C5441619
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789400434; cv=none; b=uekBUeY5ajICq10NhKLRkwr5D963uUlhN/vK6KM1/jeKG66LvyGXxaNxYm8AiTCOufLz6d9hXcmXLvtqP59KEd4WHB/UAQSd0kIbXx2p6vIZXyJMbhi/uaG4PCuznW2EiaOrOpr8Q36tE0V9WVx8Xa1e2lPcsnlhOS4f8LSaA+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789400434; c=relaxed/simple;
	bh=WLq1TVx/2nXigJFKYkWT+r3n5qvfF3KonyJygFsdEa4=;
	h=To:Subject:From:Message-Id:Date; b=hklSF7v7ZCY/6rAEv7ZxQPIgqsjIu8JwG3pHoj++I2ugOHR/Clfsy4aFEJKhkwMhIPt0zSQJnVQs1rJHxRLQp4oDyQuLVqwdMSLiZi/XRFVo6UBGsKh3nT4rztJxqWQXJWe2tsFy5hQo0lI1xow08fBg/JOqOaG7JSWA5vyhdfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Le19pcw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Le19pcw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9221C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789400433;
	bh=WLq1TVx/2nXigJFKYkWT+r3n5qvfF3KonyJygFsdEa4=;
	h=To:Subject:From:Date:From;
	b=Le19pcw7nwsLDuQn/XICxGGZH81+7EpJoeI1JGmLxKqChU6DKylu8TxfQQDWFlSfL
	 LNd9a9aK/Kiht8MfY1duTZIIhTfNcCFwn5sEerNDBBvbK09BYi5UgPpA7eASPCxkfD
	 oe9Ip3jLrYCZ6eVEBCBS9CXwoMC2mABPtY7Ha/8WBEo37iszqHp033Xqw2y90b5lZd
	 CrL5QllPuxTkHoc+ipBZv3yGHqbWJxQuqhBBTn5DDoqtddRq1/I3E0QrB9p4V0k4Qe
	 fpd+ZhNwO5Gx0CxlEmgzuZPI/6I182oRqSLcz7vPpYZg2IrGEWAkxOY8QUjur4xUpN
	 6yBdwNz4QV1FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F06C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940043372.26459.7880984866868628142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26613f689454e518b30c13fb23dcb3c1472b4d2a8868b70ccd7deae2421ac445
Date: Mon, 14 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789400433
