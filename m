Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D71C1E2847
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741248534; cv=none; b=U7xPMj/xpruby/2OABMqv3+he9oohLavQAve5f/SVrePMJxnS/42+GrWZBBRhht3mXqjeApeVmpxJcXQVWA4NrXKqYxR4h+ygd2e2yEh/J6u9cyGX45KHhQjBDJPxyOtIYoZtykqd+Mi+1qY1PcV/guItcaWJWyA1Xl5UYg1Yho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741248534; c=relaxed/simple;
	bh=7kLsSTSl/x7F4ydhA/vztgbZR+YKlnyyQ1hCxt9eWUY=;
	h=To:Subject:From:Message-Id:Date; b=XIJzrRibgl50tAVfPjm8ZsfpZrx5Zpvi8eK0eyAnoKLLuyo4Zrs9gI4O6VeTwLzpgSCKcgu/wxukMvYk4UpPuIeoDFSmwhhJwJR2nmSEtWD2jg0v5RTkqhERZfN7Th9NFw7R8c3UAx/UvYKqy5GscQnLb0Ir4h6nhFjUL8D87Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bh23vlzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bh23vlzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28EEC4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741248533;
	bh=7kLsSTSl/x7F4ydhA/vztgbZR+YKlnyyQ1hCxt9eWUY=;
	h=To:Subject:From:Date:From;
	b=bh23vlzoKLXs/8xq6xdMylRkYIFs/rKVrmmMb6CDw26BrpxwGRjLrdVGu3yl6wLXS
	 V+76Twh3UZrkQ1+Xc0jjSWwIpq90fND23tJcHCpY4ij4/UWX2Bt8NoBfDaIhcpWNJB
	 D261Y+Ec3J1bdmqHbS9EnK1cZT4kBhQy+fse+ypQiWbgX+bOV6TKdp7mnp0WEFQgQa
	 9zjKBDd0fkfASqFogjcEmFojZOO0oXQZ3mVCD6g/QTghOlOOFyhlei8X0W3emp+YPP
	 t/J/gojkeKIvThMzNuCLKWh13qlHr1w3aXXHUSZu0G9CZElzwlEvkx2waAyYNvSU3P
	 O4IwZG3cAQHWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B11C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174124853360.20188.6640405832755853211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4ceebcf6bc0896dd336544d465d9cde3684edc273251ad753490781f948c8a
Date: Thu, 06 Mar 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741248533
