Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDAE1D555
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763848914; cv=none; b=Qw5jcfB6QqUcDET8lPj7A77Y0nzzuKVO9NAvqvCD2CPNUiSpN9YIKAbAwDYv52kwcx++ZvO1ED+R7z+7e8rG18zsNuycAnpL2BUwCnMvacWWnNbOu7mzHvBEBurUsWw3zue0/DokwiOpO7WPVt0Ja4I2l6YBIParul8FWe6FcSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763848914; c=relaxed/simple;
	bh=BMFEATtnLefces1Whu7NCUput7GXVXybAEj2jVqEfZ0=;
	h=To:Subject:From:Message-Id:Date; b=XWdKr9vL9GPwWKqdWyhvl48o/ki8Ws7DrTN7XvbWSX5chie9op09rEYykNETCJVtPG2uyPuCEmXv4MPT4BVH5gXjri5fSPuFs0rvFANzHE9TvM7mc/iAOHov0Ve6IbYZBAsNV7Cp94Ne/aCp5lWsbWjmxtmCHDh1eo2YyvuIS0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqD83vGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqD83vGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A478CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763848913;
	bh=BMFEATtnLefces1Whu7NCUput7GXVXybAEj2jVqEfZ0=;
	h=To:Subject:From:Date:From;
	b=gqD83vGD8BmJ20dNKAKbHY1hcpjy+2Y7QL9CgTT7J3r3aqnfaTy0vOaLS1txjsDg7
	 L5Z1fJ8eW1uHCpUfVMF7p+r1OXMvYDF//04PmCtHDXyxWTZr9XvYaahZ9+lhptVx73
	 a5Yus1GoeNjvweOziLr/2LfgonRLt1BnKmnOQRM7vpeb6YYMQo+9YvjVxEjqC3Myr6
	 fUDzsvDSRadVhXkOFVY6Y2UwYK2GyZ6svO8HVxiK9D/1pt448l40qmfUCJaDDk/oY5
	 7AuNuLHjWmWQaTBCr5PmU/c76CU+CPAbfX5jOd6HrajZqJ1yrZKti4ld5AYPdYWRv0
	 hU++qkSdNBNSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F0CCFD2F9
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384891358.6161.6106881196332609080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984a5f492b28af80532c92ed3f5233113acc24ddc1ce86e2678e841400a8a762
Date: Sat, 22 Nov 2025 22:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763848913
