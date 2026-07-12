Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5E015E5DC
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783835314; cv=none; b=jvXB8uSGPstCezv+htjS8yaWYE/EjCUuraweYnjO7djypYfnr6rYxDfVHd38O1vHT9tyLyJlufjzgxtuc3RshfWxkVH2HBvGNOwSqJTTulwXyCvGyDj9rmWt+l8jHpfo2tugffkqjhKyl/DbPivfywTQN3jufc12AoGR8jFFt2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783835314; c=relaxed/simple;
	bh=uhZZcfPPOAVmCEYl91ncsAj115ukvnZVNFJV5YOPDEc=;
	h=To:Subject:From:Message-Id:Date; b=AvYVcFdCH99e3aZjdxOzWH2O8Tx3Fr7Ka6WebVcXL8Nojjf5i7cHaeg/0F9HgD6U9MwI2qDR5ZsoiYnvOgs82iAsYkNWG6495UFoHiu9GFhb7TWijt4eDmHkRkOxCrOokZSirN5hn4O1hoMivkfCRO5SC8ITkhfaKNo/rbVtuVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATIhtgPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATIhtgPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF323C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783835313;
	bh=uhZZcfPPOAVmCEYl91ncsAj115ukvnZVNFJV5YOPDEc=;
	h=To:Subject:From:Date:From;
	b=ATIhtgPGdQWGasV6rPDIbbfHATpg9fRVOGEgBVJGXU3XCbmhpm4heRPBLGUJn/ER0
	 oGGQiQe3QRKSGIadQ97mgF+NZai/ugH6ftBUU6jqAUvAGDTuU1wuGM7+LaTf6VW2wN
	 0UPFtpmzl+Tk3pSqzB/NGB4yOVovk6yvJYoIyRsXGB2MUeI3Z62l/z5r3euwkduAZh
	 wzEhiSBSvVvjUe90HbPVPZyyePHeF4tSr9PBaXh4VyPDXXRLxFXUl9UJhYaj78qXqh
	 5D/kA6dUzrW4sHY/uiYKe4zoee0gRgisu3ezKIIWQbj8n7kc5BesJizy1ukQa8NvSv
	 L3PD18uBrgpzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD41CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383531367.26260.7724386323892648296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2ee25b8ceeec29b73b8d801e06dfb4c65a3bb59ad17124fa149291aae8a293
Date: Sun, 12 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783835313
