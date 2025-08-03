Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DE94689
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754182194; cv=none; b=Xq3ZsR7AyjntsE/uF162bBxzK5xN07+zfJknEzNCMBZ4UgOxKWqBcFY34Rb7L+OBs8mMQj2TJZUUCu3mCTz86ZO9I3turhWK6ALjfLu1Q4S3kbs35XuvSRSpoh6uih711HAhl/otId43jlsvOkJ/4+FLhJ2jtDoW2ScAOXbwJS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754182194; c=relaxed/simple;
	bh=RLFkTZJIqMxjRKIzK0qHRvqr7wZG84IrO7aBi0zHNb4=;
	h=To:Subject:From:Message-Id:Date; b=jcn1aVnYKrgvF5/R55gtpL9MbFQUNQfAF2DjhC35vnZgr6Zb2sF6mP+W7GG7JQ62RtDEHoP3dIx2G0sSQiZuh87SX+WvFhZvu3MUf9apyILFaX+bCW72qoQx3uygiFYNUtB3P1qF7tIMqEayXdvYLHjfOa+S4QA2laPI/xcllOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApQx0meC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApQx0meC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1634C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754182193;
	bh=RLFkTZJIqMxjRKIzK0qHRvqr7wZG84IrO7aBi0zHNb4=;
	h=To:Subject:From:Date:From;
	b=ApQx0meC7WpSSBMw/5YTblv2fcm2IKB/lsMZSzOVgUdhU4FRFJzKFS1DaTWpTq+5l
	 MTy7wmEeh0NNQDPCp7Ht9McAQOiJ5YI+ysSRt98FsGxtPVArqhzbJ7mgDBuG31IymJ
	 y7IFjK/LdZIGejfqaDwF1Z4j7QK47K+iMZfwFhPefFVhhJWVDE25gJ9OnocbuzRL8A
	 toxJ35bX3gRbi8I45bXbwwwcEHoJkeyiDpf/6juEdGcPsHigGvkEHLobMfe8JY4AV9
	 m3eSanPaNtL3Jk3dohOy6022tdRJic3ZK79/coZEouffFJ1XiVw/mRP+25ljyqYoIT
	 /mLJD4cSPQ05w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11EC87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418219357.15674.9353841897590611951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca65d5fea923a9be266a520c2003dcd08d0327dde867fb6ac3a62741caaad60b
Date: Sun, 03 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754182193
