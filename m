Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7F635BDC7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775171733; cv=none; b=AhYRRPqJIlr0kUwKS340VfEG3sZfr9Kizf9EgBksyqzu794qTzmBkowzcROzotBuOFe7zLbVg9bGtdmv8sKeQbLhMuF4cIqdCmXl2BxtBX6quVuwnGvnEsGvcEW/1Teqte9R07awMruzt1R7aS8R45IgOpi9Z1WyYxoNraBpdxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775171733; c=relaxed/simple;
	bh=Uck6CFgdWTl7xDLRkasm7bVjM1gDH/RGKitgcgQG0SM=;
	h=To:Subject:From:Message-Id:Date; b=u+xSXuTqyxp8f66bfAbtdwg6s3OCPuocWvEQ4weXEKeZz2Liv/IhlSiI7WSvSLwyRjoqALIJUaKRmw8ID5Awpz3IsYV+8NNm7jFx5M5akSZNn+5XB4rr4LUYzuUQ4dH0E6idNRAqZEjtL+GJf5eJeb/2h/goRxKovcveq/dYXDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qh7EF7Z/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qh7EF7Z/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EA9C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775171733;
	bh=Uck6CFgdWTl7xDLRkasm7bVjM1gDH/RGKitgcgQG0SM=;
	h=To:Subject:From:Date:From;
	b=qh7EF7Z/RSx4wL0DLI0XSsus5ZtYt1ECHixJZPYEJk2u0L/zqefvBGJ1aMLo8Q2fe
	 9bVgu+jG8TYihsfx15Jwt7JAeXh2O4wuY7uLOqXx16m8VYE67ch1ZhZhwxCTNJepZa
	 EownvQ19sxIFbxsIq+bgsngT6a7AHUbBTUA2WurXk90NXy+ZsY9iOQc2sBXS8xLdON
	 5bj22GAnkSsalmNRrN0qa5DgMKnrSTbBjfUCdW7hc8RanC2ilHJy9rZany8gtNMHJu
	 jPx2pfulX5piOgz4LfXtA1mgmHGKZxnFoZARWNI4vkIHR6VClAhytKdtd2/4oVXyGp
	 Nfm3jMkpyOHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB7BD6AB10
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517173370.25698.3339218504607034691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797890efcd065b0092a8dda7b0e95025d4c22cb31fd05c5e7f844a3747fbc505
Date: Thu, 02 Apr 2026 23:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775171733
