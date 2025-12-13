Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7BD72602
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765615374; cv=none; b=iVJzd/OaLscigy5MUz2kmaTupnE7p3n9FyS9hNy/zeuSNzFLeIN/NUZgGjz3yy/7TlOtg7euXbpepOZ1VaEFitrx+HRCCO9S3AsJeym0WdEWxjUv2zehmTU7QXHkpwE3/5J3AO7s+JSDLoWj7gi894rFz+6EfEomtUdRqmqXLnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765615374; c=relaxed/simple;
	bh=ct0cmSRVEJpPmoQaWCB6HgdbFY9Pk3y/rYtI/VPLZKo=;
	h=To:Subject:From:Message-Id:Date; b=gX1X4e+iGfKkiizNdUylIwI2RGZbgWSpvBNQTfvEW7UlGylJhKJiS/rAGZPLfpZGV5MjtTkdfy5zUkT3qnY6eX3jJJNaR7cUj/Cq9M4buuXlPAcNgjce6sc62SYCRhHgjd3L5q7P5CbnmwuWzr+Vu4bymQf+J34bJbXbXjQT5+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvYjUi5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvYjUi5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3677C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765615373;
	bh=ct0cmSRVEJpPmoQaWCB6HgdbFY9Pk3y/rYtI/VPLZKo=;
	h=To:Subject:From:Date:From;
	b=IvYjUi5pGtt0Z/3LSWY5Mvn3KI7FKWZvi0xBFDKKuhOnZCtit5owm2mdCWiipwanX
	 w/PoG4wpXhdwcJi8yaA9VG8nCSA4KpLPB4BDhKXpmdPGQa3qkmybLRuilsoJltCP75
	 jV+IVg790lUyHcQWVGxZS6tvoELhfNFchG6itGCXgsEWrEvVIKuWBqIEb4+GbYfYrw
	 qpj31iupfAC846X154O1YTeSMZIzKmG50TqAXehMS60w8IyEHQElh/MfrHnJ/h59uJ
	 h0mZLp3LfLJSt6qBr7zZlAl50gtM3va3lCIPxdlEuNv7B7BbN9XcH1c6qBlNXWK+9i
	 k1wEghB2Sunrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911E2D59F7A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561537358.29370.2186526591757509428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690afdf835184f5a7c7d38740c84c78e4c44446687744d9b8bd35a47a0648f5f
Date: Sat, 13 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765615373
