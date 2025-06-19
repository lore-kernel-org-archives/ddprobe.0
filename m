Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7A525F98B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750340394; cv=none; b=D9chVC+GDWZmPC7XXBuQraHXnmgT3uXy4ZW0PeJYQdffnA7WtSNLRCuyQy6Cmf4BWJbuowDFhL3trHKq3+kgzCF6b455ccmnB2UmRvVaG7CgaZjLgzdI75WLWeAas+jbjKqk83KVOwsHNnztoGAl2j2Fvpv1YdMjaUGRkCOou90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750340394; c=relaxed/simple;
	bh=G7b/uOSO/xT9xRGULx0Y9u+6ofMjb/BIIzOvJhIzwAE=;
	h=To:Subject:From:Message-Id:Date; b=A6svIh2ZvU6nFM4zWYOH+UmvBcUw8hxq8BB7jjqlgkoMZ7M4vDB2m1UbtOa61W/zsYhJZZqr3/JCpXdpZTW70aI7zFQ8iZjsP0lZQwQqoGzdds1AAfixFl5e+OyRuXHfaTJCcff+Fk63wy1aGdROd7gyxVcb1RUhS/smctiHqcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wq/FpiUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wq/FpiUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0448C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750340393;
	bh=G7b/uOSO/xT9xRGULx0Y9u+6ofMjb/BIIzOvJhIzwAE=;
	h=To:Subject:From:Date:From;
	b=Wq/FpiUhCqcJoqBffIdKTIGqmyqbuLUwIA3XDYPMJID4dtj/N7xDdAdC857n4oQFN
	 tHuTBFf7wpiaACTKPsYWC6MmmQJ7QF9CI0ZqSD12EMcRwnkEB/f2S2dmtLtKYJlSLY
	 w9clTxZOD2tldDjTNXJp66iit0elsuDf3uYRS9te7TVsOlx3gHn1M3dKuzVDQezP3L
	 ws/mzcCX8KHSMAMSUzmayBXXbfvX5zoDpPn1sE5EwngBf9U2DZ9oeWSm+flmrXA8/q
	 mG3i8osdQTED8WspMs+LPs7C9tgjxbDjms/kB269VQCuup3WL/Z1hyDozYY6tzIdFs
	 MucIcIazDz54g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90546C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034039358.27520.2589524440386993345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e591cd52ab0702573836a24272cad46df7d29da6aa3ac59d7340e095ded4fb30
Date: Thu, 19 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750340393
