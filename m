Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B3C1F5617
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750766994; cv=none; b=sqd7IYbvz4fEJEH2Wf02h4sZjRn5aT308rUz4M+AgUqjmffG6tg2vBkC7dkWMKRegFzmtjeqSo5SdvGAqomqgA4OxnXsXFVXCDsbh1H+dNIjPNM5FYEPPrQi29cndiEKi372ekcbC9RJ7PHTe/jibPTE8iEYpKdtBFoTjlpBiEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750766994; c=relaxed/simple;
	bh=HGRTVuLlDJ5TXrxoWMaaED5HZIJusK6wrp8JBIuxL6I=;
	h=To:Subject:From:Message-Id:Date; b=Hrj1G01nPfNcloqfWORh1RVU4SbQj9Je5c47yTPioGE3hmrJj7AvidZ2kBzT0sIYAVTy/5sR9hEXI50DQfVKAU28RaDAIQt+iat41UAHYyKHxK9Cpd4HEvpoe9SvKlqXeogBUOLCNNNCgVPZKYYGvE04avbRVs1Ua2SKHcdjM6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZ25UC5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZ25UC5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F78FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750766993;
	bh=HGRTVuLlDJ5TXrxoWMaaED5HZIJusK6wrp8JBIuxL6I=;
	h=To:Subject:From:Date:From;
	b=EZ25UC5B4eR9DwCKp/mh8q0UfUEJdIwRJ8QWCulDDHjShC/8hVXtB7HTPjDGFz9dF
	 0UYtB8DKXnOkTlSzHiH3JrCoLvNxvalZx4gEo9Kzi+6ClpL1b2kjSAmnQAqAw+BxGT
	 wkqgK9hJagKk5FM33q6pkAXsMPzTwSQGVrezF4IYwrJLjIG3BjSXlTYeE23adYjUNJ
	 Nx/CMOSY3wWO6mtz5sadi/34Z5MPsYHRgqHcKUICDF5RKALJjme1jQZwpq8shO0pm7
	 aBbWtBahNOqBGsuJhBhV6cg7Wd3t7eqV6o18p2bk6uDuLFGzExv2iM9AqqH5YyKleM
	 Rj8/qwBJTvWsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13EC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076699357.12361.2218520496282819754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d4a752a445037e55e9de4bfaeddc66ea5b086d4449a3018621aab68a6a29c4
Date: Tue, 24 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750766993
