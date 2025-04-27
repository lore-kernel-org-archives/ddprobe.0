Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3441A1BF58
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745722794; cv=none; b=m/TiAe4W2dpT2LZgq/Qm3BGOXRs2o6nLop8MeGy/JYq2grPIw7KZtAD9ECmj5YrIL/1hmi9gYDzU6QN/aET+kygNSIbR60UPifO6NwsuxrkelPNV0vuH5ayoLatFQYw5pFzV9bpa9iazYfFsvTjdsly3sYWaQ8tzdNv4u6ERrMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745722794; c=relaxed/simple;
	bh=5mN5gGC9GMQ89j5VrTtMzXMnowYwqnbJQrtRS5X776g=;
	h=To:Subject:From:Message-Id:Date; b=bxmHa233U5dXS6Pggtngo7xRK6GMOe9TMWQ5AUON2F8+UXwqbjVSunhRSWKKsabuH/u6QzUV8xZxeoQMfiNpT36XDR2fyuTb/c59hwmhvmZ5A2H8v54fkTpzuDmZz6wYcEpzsanXBNCoJRviUXhca5QOMYZ6D5bEqoLEilHzRww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjSj6BLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjSj6BLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8021C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745722793;
	bh=5mN5gGC9GMQ89j5VrTtMzXMnowYwqnbJQrtRS5X776g=;
	h=To:Subject:From:Date:From;
	b=IjSj6BLzpKeM6dZmb0S9vwFCeKrgJDNxORihb6ezw0kjrX6YqKeN1TM+NAHbSNm3Q
	 j04444QMu3sYHsAWjVGZHwVu2VFb2yKWRQlqiputSPo5+4AiFjL6ZGGskh4jyt6hWs
	 RiptZ/27qvK28vFeKj57NrA4lOWWk6d/9zDm5nJy60Iy/k2J2I11b9NFzeMTRY1Ura
	 1+f7XFQHslVdNxVBdX4LCbyjh5gn65uzlYtK6mx/WBjV4OfneFMZI/ZlcttTyWRcHW
	 OtRpjg1IrCSN1DM37jEqYyYv9hnKE3oclcrzy1xZjJuN/6A77V7PjtbTutf5JdjVTh
	 iMswf+a7z4XuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91629C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572279357.19181.7689079122385920576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf45e503afe76b7ba2754543efbda76f629b7ca918c23c2f502950df03c0255c
Date: Sun, 27 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745722793
