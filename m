Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1811B2EFDA1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764803574; cv=none; b=SDvmSlzwyCDQ463/1zCzZWmt3GVAOTkYGOouoF2cm7MvMNBURnXit/G+AsavDhKwb9WSLkkLvITkFj7gFzEtq02DTUjvTSkh5FBv9r/H0EDmkZ3mVxZ6eWHlzVYBHMrDu4vHQ9Z9P5N+z9TG/yznyQSneWZQe0ZxNuii/I350co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764803574; c=relaxed/simple;
	bh=/DfIFTstx44N14GCwClrqoz81e+MJG2SqH9ZmOYuVXA=;
	h=To:Subject:From:Message-Id:Date; b=CZMIq0FwCwkk2rcAA6G4NNfP5B+VxOQu8oHSYTBz+ext4TLPEpoZs4urZ5Bti0dnJCmPnGINgT6og5bC2yYjNEsymeFFGAOaDRojrizM+vDCVregZb0/vY5hUprh54mk22LuBAmhVBSDQoSxQQJ45SkuTfwnLNpq0sUzdRQB63k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2YYMILO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2YYMILO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ECEC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764803573;
	bh=/DfIFTstx44N14GCwClrqoz81e+MJG2SqH9ZmOYuVXA=;
	h=To:Subject:From:Date:From;
	b=Z2YYMILOYeF+Rt/BgELAlMYTNJP7Xpm38VHZpjSq/+SEbqjBf0N7m4VuNudmju9oo
	 VTgskPAo5WVQ4jN1XbJ/k1G7S7EsBm3sp3e6Rbogl89nPxz9n2z+YK0p7omL11/sq+
	 ELkJzXEaPkB06doH94MPXGp+zcj7iTnkRdf+OISnx7405cUzIHic//HeIfRegmePq+
	 nFGIdxuhXHxtSf5t87E9lyjytYIxXRqsLCLuhkRbKv0/CogcjaFXhHn+1pOfMkLovp
	 naSi6A0jnZBsHigDuAEF519iAT/HX1NVZlp8iGlw83LQm3fAmvcPh3bkTvrrR6dpD2
	 jp8STBC+gu3xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91516D1CDAB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480357358.28049.393343336800836365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6541b7d31168d176ab3697fea60e47cd2917ded5e32e44df8db4bdc957ec1e3
Date: Wed, 03 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764803573
