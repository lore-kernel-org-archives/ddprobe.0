Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0A03403E1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780259074; cv=none; b=VUdCSGvaRYAYy90VlYA6OJWEi8kTR+pub399gwSryJ5B0qnoCPxOERMAcxjoqMCZjNdd3dmzaDCFhMmiDFXwIgycb6mTzaJVV6xleHcDyNre40PIgWP1W9DKHloq3SMZYg1h2qbofCEni+Coll2BnyoaMK0YD6fptgNX2YOK4MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780259074; c=relaxed/simple;
	bh=lmeScHKQHLL501xqVFXg7TPVejiBiFHOUN3BL8yjzQ8=;
	h=To:Subject:From:Message-Id:Date; b=mjTjUu/TMV6UjviL0OjYWoawDhGjDmQLZXaG+xCCMC8KxA4C2mET+RMjPuXighBtj1sq4Z5Z61WOYAb962lanzolV5xJrlve0fklktqeSF40OYc1k/4ko3PiBgGmI6Di/FB4h52xTfEBgR8cMPmL2scifo56vuJwAV0yzBy02rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diwB2N1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diwB2N1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EDDC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780259073;
	bh=lmeScHKQHLL501xqVFXg7TPVejiBiFHOUN3BL8yjzQ8=;
	h=To:Subject:From:Date:From;
	b=diwB2N1W8pQ3YMSqIxndDylzU0VwcyJFOJKP4c2zcGOZYc0i1cBOZewezLv5bf2zx
	 mqyJQPBcRvyKy7wHlNL2E0FYjsoN5lf6z3rck84OSFCWYi6OjLcwYDme7tsr1ok5/F
	 xpvxjgLgA9E8uF8naBIO97kasbYG6gQVKiZD5jKvDvyPACFMLGIMvcZRL+IZDMSs05
	 dB63AoFjXas1SH8oAE8BLxO4PfIlhiebwSnoWPDwXiR1rG9NCDDVk5nK0YK8/ivoHD
	 CXouHqZjaTo7RzinFPwwf73Ha3wU9z6zLPZXDGAxKmuYMA7bQLjF/1fy31PqgsxZkQ
	 yOOW9b8bP6Esg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACD3CD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025907368.24948.12934002193794336157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629c6c001125abaecded0ede49f2a3868bc238a53770341321e192f018b34303
Date: Sun, 31 May 2026 20:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780259073
