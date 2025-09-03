Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D19A29C339
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756936194; cv=none; b=twQR41dxhjLsdTCMxBY8avA2Xzwqa4AK5oalaCe0ql0uRWISJtZhzFIFyLE6kxv0SLNHF7kguDX4LXnnZf0CPNprVJYbGAqSKuWUiWO7KDrG9kwHsTVmne7cufC2kkPiUGzoezEuV1sfYpd8r9LayRV3qlgHL0vuaBCN90RZ8+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756936194; c=relaxed/simple;
	bh=b/sytcKPLx3h01M1nlUCRUcsDzE5y0YlhnJoImY86iM=;
	h=To:Subject:From:Message-Id:Date; b=KWiDoPj4T1B2zvUtCk4oDPHv7eiGDMFeUJEL/Nc4OQ+cl72UD6Mwhl6ZVZppZdULzq9LN+iHejoR5T2gLMgxFxvfmC7S6yub1dcc6JdAhLnamKzvGqHxlq9uPklVGwx/KjGuzJqzOVP6iXKLT10Umq3t9fKsXCuoTvzA1htCpc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRmeeWeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRmeeWeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF3FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756936193;
	bh=b/sytcKPLx3h01M1nlUCRUcsDzE5y0YlhnJoImY86iM=;
	h=To:Subject:From:Date:From;
	b=cRmeeWeT7bJAKQ/wsTuyiYUBGgq2VlnEGbsk2wWDqY8sZD1knNism46PKd9B5OCF5
	 m3hkOkbbtfiqcWPepiNVTNQ50xPGwXD+nw9fhIKtUQh/YAGF7xPcuvXbdMYIBsnAv4
	 3qnlW5aKDSfpShpe0LIUWZFitsU83pD05XehW6eDfbsFukei7pZn9PKifOXQQkwRJ1
	 Qb6bRtmWjTzvdvxB0tOALFzFoVPkYVFHu5foPMOHIN7NR8F8zsV4NupbMW/ZpT/Jd+
	 2nKtdUU067ptCWdfSoc1ql/vVaWZUwcz664OBd/Q1Fy//2XFSw5EJqmsoLsFgX3xDf
	 wBa2K8vXp7uqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ABCA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693619357.31598.9176711871510568199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b741899caaf20f759b3bcf2f050eba4aa64103c6b7b1eb4cc55b8d98d728830
Date: Wed, 03 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756936193
