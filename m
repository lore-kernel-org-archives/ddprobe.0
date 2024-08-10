Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF1D1448DA
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723326954; cv=none; b=q2xuG5xNyRGC2Z067qyUXElvcow+vlZmMVlI0Gmm4Ai3zvJeIJqirkaAQYSufbmPHmiu3JgP7WlFzmdgl0xmvx6e6pfwX4jFysvFLYafE3Y9p4jAVTbadO41La5CW85amFpfhXPvXdql/P+qHYb1VG/aPOixEbW9mUVHx6qhO8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723326954; c=relaxed/simple;
	bh=4y/qPt6QL7CEXBzQNBiSbZrbU4ZWBrTeBldLJsDxdJI=;
	h=To:Subject:From:Message-Id:Date; b=Y9oyq9x4mtt6qeX9M9OFHkGXFPeo71dFlZPkrTpOlx6d0UgdHqY1JUTy6TRdc4zbUTXkVV7NNqz7+JaH8yYfOR8aUfQ/AKcn5bni3WZkZj9T9d78fsY2D1jLon4CWrIG6bBnMjN4xOW0Mik9BRb/0TQ5ZSrkOQk76LdXo2fObNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtCuTEF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtCuTEF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C064EC4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723326953;
	bh=4y/qPt6QL7CEXBzQNBiSbZrbU4ZWBrTeBldLJsDxdJI=;
	h=To:Subject:From:Date:From;
	b=QtCuTEF28A9REo3yCXk9sr0D55Xr9wIf2lUxogZEybVW2yuDxkZtV7oHBBx0jxaMP
	 jSA2D16DZrk6gx1GRARBtrw13OtqIXvEL54NlttI7PG29BgnMU9+z+WmQeB6aFVPZ5
	 iQv9zKsZZx2nU06+bOuw7rOravvz5h7aiPMvnkV7s8a1XD8p6ZwsLMHTri6n334N3L
	 leRF5r+cgQOravhGCZUbmA4CpYMgU/dhCY2MQejHiyaE6ufkQ1hkgy6BvDqDELrZO0
	 BBsWawCbvGYu+kCrNBVCZCH1Id6LI67CzaOGwcjygBZfDx+j0ZITzvolD6JV1VbB3h
	 jjf2Hu++3yXDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB22C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332695364.25441.12452782146453178472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b5ceb3e857919bfc1b8f599bd8f41362bf5e8ca0d4da48fc8217f79333eea7
Date: Sat, 10 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723326953
