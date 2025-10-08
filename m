Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED0419755B
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759949393; cv=none; b=tCoCHENzoU87O6Z1n5ig0yRivKWolksnLm8X+aTzCi18dD3L2OjbjY3i97VTbCPsB48Pl5fenOWGEx4cs28iPnqUzlCrXhI+me40JL5VoLg5idz7mMfLQmqWqJ+Fj7dZ8dPeDKZuYfXJtfGMwFsG3xWuu3QTJ5Y4ZfD5023kZXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759949393; c=relaxed/simple;
	bh=rRF9mqzmpGkDVoRQwuXQfay1Ffb8/IZVsnToUHV+NmM=;
	h=To:Subject:From:Message-Id:Date; b=AruznYLw2gGl9Mj4VoZJOWV7WIvSHUGR5LM9ljJDRNI4whliVt0fZSYhiKF//0mqxsxV7PeaQSKknU5zAhmQgoncvlOpYIsxIfV3oMFekB+/UG4UtXxnIVdxlH99izQgoMx0kWT7PYyMMf145BnEAk6vTg/mz8CNSpMj/IlSPOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8ObDejt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8ObDejt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1713C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759949393;
	bh=rRF9mqzmpGkDVoRQwuXQfay1Ffb8/IZVsnToUHV+NmM=;
	h=To:Subject:From:Date:From;
	b=V8ObDejtFlAcEJXq4ivSsEVfbq8XKK1td+fA0qTSPJsQkoPTOMdLHEn3GIbnQSqIt
	 ubL6ezZWv02Xt6mnmoRlUroukRjWWphTzVpycU93mbKKEe2HRpqJQvqb1Enx6gugDS
	 Ne0sqjqt2NRi6ujfZfddzJclCfS5M1CmTBXX6L54TKvudu0UcJR9VSNlwLZWMc6M2+
	 1kEe3HBIYIT7qDaWREHol6OXOh/h25D47pBnLa7HuLOBCK2DqwF2TMRPZUvfzhs1SK
	 +/aT358uUsWQWHRhuA5r4rwP9s7DqhVr8MnQcqehi5NsUV0K4mf+yftlgvyZQ/sXfZ
	 7n5XNyHFNCQ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B8ACCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994939358.18864.9034932678380786386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4744d5e3640590725383ae80329cc1cb15cc64ffb132283eb9a98a5bde6fe7
Date: Wed, 08 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759949393
