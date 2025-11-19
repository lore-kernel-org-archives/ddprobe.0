Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399C032C316
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763593914; cv=none; b=jwuMgKR6wxMFwonuQh5Usp7kXxE1SnePYCiUFtljMbbod5IBrFvOwCGVoPwkc74ugoYeCiDmVnwI59onlh86EAe2NdynSmOr8QoDRlL3x0++/AyK1t3Q9UgbNmVtCDnySHu5WIpmfVauarF/iaY1c+DqirvKaEWJ6Fm6iCxLFEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763593914; c=relaxed/simple;
	bh=4YIP1KTDVB77guK3U7SZX5tieQQkRG0oB3AISMNnVR4=;
	h=To:Subject:From:Message-Id:Date; b=Z2QLQ/5vxdOFTHsVNyJTYk1EqL0TRuI7h5WmnelUWYtWVYNyxcrVMXORKwDJojdXjgmUoZZO9O0x+MI4AxSV9s3PGwwyNyZQGQLIWoPcjPtKodOYIgV5LThKzaH8Kh0Ziwl5IaMoh6F7rpWjGLrewrGaQ1A0APkVGOFM69Bw7jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZYHZf/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZYHZf/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9838C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763593913;
	bh=4YIP1KTDVB77guK3U7SZX5tieQQkRG0oB3AISMNnVR4=;
	h=To:Subject:From:Date:From;
	b=CZYHZf/uKR1ibSwnUnGyOjhRxRIDYZs3SxDZPIfHbai+tPKZCsKi6IjGrurGvDcsl
	 wdhXPyhOmc7OT5mKPIFZd2SrjLnfswT1b8V5ZnTy4+3swrkwELkFTwwsSaWIZn7XnD
	 euobkMI6kjqu6xHJc1cIYayqVrmmTtiBB1QlcpqApn+uMARbUiXnRTg4wH8qtgKaVD
	 MfGBxNZJyIwRXgP2YsjZVuGF04CoFOYOTRf51vS2FTlRbE0WJ14TbumEDSPiwhwqk6
	 kTwFSXwVS6BzCacjkSdA2AjaRMLK2uyJIKsKqnKkbinSGrEUbXwyvkga5UM810mqxY
	 N8Yz3J9ShBvZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9761CCF648B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359391358.13315.14531361183085975209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80594cfbf165f559d40a8a6cdca90120cb2c4ffb78a71c52f93d90dd9b465cd4
Date: Wed, 19 Nov 2025 23:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763593913
