Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C68F1C286
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720247123; cv=none; b=rBS15REx3JfNM2spbp2iIr5zQMs53Y6ZuTVWsnW4HTo2ld6zOHc4egjzJ+TnHL2QlZ5X6KXeUDVx6/QGdf/V+84d42GohArRv3tK9IbQMV7Ow2FjkEXIq9hCQucVZPY62ygBgcO8v4J06kkIvLwlPpsmb3mUP756JgGH8+pSO8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720247123; c=relaxed/simple;
	bh=19lXK+yenF0gDXmaEBfw3OjKJAp75SNXT6LUg8BgmeU=;
	h=To:Subject:From:Message-Id:Date; b=Trj5REA0NM3XOIbTlWe8xZiO8wMF1W5i/5TUV5PPud3c7GZM9J0+Dr1XRihAigTIiG6rkR9434b0/rpIS+S94RZ6VckWlzBkhecTXkQzYNeaQWXacY74/NGwzEorjLrobhH9GZ4eHSPgLa1mCuxBQM7JzeiZHLLTXpfE1SDWQws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hdxkg1vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hdxkg1vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7EF0C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720247122;
	bh=19lXK+yenF0gDXmaEBfw3OjKJAp75SNXT6LUg8BgmeU=;
	h=To:Subject:From:Date:From;
	b=Hdxkg1vgukuAuyrBPB9C/mdpZK8ghpjgEbSWEaUGb0QDXL3fbQ1SErGtVs+L18rU6
	 7TxDj7fHzm6uEiKYDOccAQsqi9FehPQxllHfuZ7fbtw/xgl8fuBiCQWM4QSvFwsKu2
	 tLvKkukwOf5WocGCYV4rj1xv0Job3J+bPA+w7044xpD9TNqGjX3NpWXmZ6rs1ys1Ah
	 OWdRDyC+e7O4FchzDYoN204EKNXM74kjxlMrik9Zu/fMrChBIa93T7VF7aKetSmUa6
	 QqB7ziDjFZFIw4nON7DZCJUhpPJgfLAiuevRBSWWnEfzvnRu6qTssTCLANtiBQmCrW
	 uMDO8EoAhCnwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA5E2C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024712279.17783.13120088652105515942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2628d24389c46a69cdb839d85868ffde77c7e50dbe5cd7de5bb2f9653bf0a4
Date: Sat, 06 Jul 2024 06:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720247122
