Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212073B28D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773565494; cv=none; b=M3LwbQIbvs7/r9CYwE8z2IaBVBZDdQLeFoUh7ZXz/+exrVJA220vgIOrIzp9eSnrJMmCmD+uBi/0FPqoTY8FxkqDbkvNbrQrlXxRUNVd396vCwksZD3ui6tQj68KrL8GBWKwoPb53Rpl4ZgliFHaXe+VGFCq/VOSrpVV3cQ4APY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773565494; c=relaxed/simple;
	bh=6jHiwB1LWY2/g5Tr5+jekj7Jg+9Q2ic8zmcA9e8Cd9E=;
	h=To:Subject:From:Message-Id:Date; b=vERr/CLYIlQGYTUV6qVH9+bvxcJKu/tQxFG+xYzfMse6V5jw63SQ9uzRXAGTINoY7OKGHH4tOaZagnXZcYbSh4rO0q2D4P/j7B2+0zUQ0X+S5vViLbzq/QhlcMxPlvlwBceX1py85KAYdzmoIzXic2KTPPrnIvZTLss6PpWV1DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ams6o4/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ams6o4/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1CFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773565493;
	bh=6jHiwB1LWY2/g5Tr5+jekj7Jg+9Q2ic8zmcA9e8Cd9E=;
	h=To:Subject:From:Date:From;
	b=ams6o4/p48Ix84laUuSKKqecAeOTBr2ORYzO2pUgUegONgRrYaqIjenhV/pj5lsYU
	 UhS5UaFF5/0ySug0XIfP9l3bWFAXQW4oSvVlxjUiTcQkWNqBUh+7chtuM/STgLSn0d
	 p9NloJ/5SakImM3K8F0NSPe3Pl48/Bq5Yl7yx4Ildd7q91gMn5vleFR/d+s2Wn7+Dr
	 NuSOQNG8gMQ2Zvr8ruN13+XlnJdweRhingbfWvrIUZqN4cjEO7i5hu9MQ9F8XXaujc
	 cjvqbDdPrbX+m2RTaN+PmtrMnZR29x3aHHHqYT5kYd49r6nbGx/GDvqZOCYcZKcwaX
	 QwSsFzFYl8jRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42ED58B0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356549357.11623.1289874259277107948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb99f2a60307219faf2a29010178dda0d7382da98103136eb8ad21b4b154b44
Date: Sun, 15 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773565493
