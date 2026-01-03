Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C71219A2A3
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767401034; cv=none; b=L+f1ERDNbmCT4aMC9g55oEAqTLvER5T59ve/yUHvsDGN3oWQdFx6/Ayh0RoAgRvFBFzgmjb37QsmjgxzWnimMIKsQkntcsE0oZdiwQHqv2vmZuTs1gh8iRg/1eV5OmFc5CgSCYHXMZExwp+rPgD0O3+J4dNPoRNBd3o3PllNjzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767401034; c=relaxed/simple;
	bh=y/PbeTuy6mXx8/uDmaTWSv3e9V8LR/wfohofsB5MSXY=;
	h=To:Subject:From:Message-Id:Date; b=RNSklhYQFCRMu8orLkx9HsHii80z/YK+eieeqQSWTVQkSBvpel7Nb+NAqLgoUNmy0CdHGrti5/QdpU9LN+h6NVNdnBxwMzIK8EfM9LqD/0dRylf3XkB64PkO5jg9LpJwDu74wnBPChAtufpn8NM0tWK5GtTeN8wY7Kqu6xaQnzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0MUr4zI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0MUr4zI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A882AC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767401033;
	bh=y/PbeTuy6mXx8/uDmaTWSv3e9V8LR/wfohofsB5MSXY=;
	h=To:Subject:From:Date:From;
	b=T0MUr4zI0hCOtlN/IHJSJhPJHk/HxeDQ2woz3KJCsW9G/WbMxZszeLXNicIbhAH5Y
	 DRZ78IRzpZJ6fmQ/sSc87KyHtpa9q0ertaj8zMgU/HXsBsZQCwjD3zFos4Cou7iLFN
	 3rf6jAjvtQjpl9JGLOSCRPEWsCmMj8Hscoe1Qzwv7F362azpPSD/RhBzbmEAs5pmjr
	 j7fg/GDzu+m949+WEesXWC9KWzhzh9GLoEosuZP0yO2vEsYHRalaLPXhS+SXI+zKX1
	 hlxPgN4kDBI2fMZW1ZRPGoqcaPyZWy05zR253EOEaVKsAtSMd55dZzGI1ABg6XfJdL
	 12Z598snft4YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D23FA3727
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740103358.23414.1311041684174884116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8a8654a134ca3968cd6cfe94aca6cd8d39da53b9be545e74ded6fe8db2bc67
Date: Sat, 03 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767401033
