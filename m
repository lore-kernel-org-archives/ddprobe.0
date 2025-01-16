Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228C8137930
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737048954; cv=none; b=tLm1GQZOmCe7wHg0Pg1/TBP0DrI8LlDapGXuJ0Jnrpu8+ye+iTXh4hkDFmbArXz9GNppr47wNNL66Sc4zomp80OVi0Kot7MS5/DjLJQV5xIzMANjxKK8m7VItDKP5Fa/mmqsM6/MikPvpYEeff/uAerpblP05CCx8i9r6OrkyiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737048954; c=relaxed/simple;
	bh=NQfv8tKE1ElygYqVWyS+fW9qm9QbBlgoJ0Op1RoXyhM=;
	h=To:Subject:From:Message-Id:Date; b=WGFwIqsIjN0GSxnMzKlvnSfXnWFPJHwdaoqnfbhwGrA8ZcB+kEsXkzOg605hurXKlFrzlNeLGqzOboSPqsOf+SGTkArzPS/D0tGeJVL8OVqISl6yBY0BUxwQ4OJ4R6gnDjJoTeZ0cygXfniCaUphROykpy1smzjBQMdsnvdOsDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pK2e89yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pK2e89yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F36C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737048953;
	bh=NQfv8tKE1ElygYqVWyS+fW9qm9QbBlgoJ0Op1RoXyhM=;
	h=To:Subject:From:Date:From;
	b=pK2e89ytPo14oNN9kpkkfV81X70YJ+H+F0KmZp2RjOX4uiMn6TtATu1HKH+Vs+Oko
	 dh1O5zD1YM4mT1KxaLK/ePaZJ1X6JboK6zVFWn6lieZJyYspDek/ocJHGFxqVxKOPF
	 3xrvPoqTCK0uCQEOFnBS60I9qceT9RNWctF29tgRtAAM+m+Me2oeASuwt/IGMRV5rt
	 4DKpBOfQgMNc0pOcwt4x5/ltfYiCLfgm1nj4NNaiW376Z9oqvuXdlqoO0bfOHbgCdT
	 qb/HbT7+9VEF9AMHlzGyYQWSXdM4EHa6zYuyfCQe9jsptCqYmRaSAkPdKL/JJnsz59
	 V3haD6w+YK6Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9472EC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704895360.31603.13958492978741193067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849f94862a8e49ed4ff0854394f6a02250dc0648fc28525d1258e53e5abbbbbd
Date: Thu, 16 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737048953
