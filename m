Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EADC3C1412
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785223834; cv=none; b=R5yEwlV6X9Qbg3tewnqjBsj0XgMwZMcCs7p/90Wl9JcbHeVv/zR/wkhDDp5K/rtC1pDbkyHNI0sIiKYa7D2AM7flFXrEwCQmHwlqWSAWb4VLmLy4z1QBRdTaf0IahcxsTVhlvVF5GHH2jFm8KOICdqb0yKUd+IvZHcKYowDGNuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785223834; c=relaxed/simple;
	bh=aRIyA0umUJtBrse9N0dZrXndU5Q/rcK6r0duNg5D948=;
	h=To:Subject:From:Message-Id:Date; b=sxjETsaBT8ccWY20bH7LUciwGQjXHumM+c8q5tNukj1p8Zty7BnYQRdTOdO9lvN01nDzkm5qAhthF5SPg0NqTZtQtmsPVstKjadCGR7/AWkiUmK5qNZcd6w+ee06SkLUEIcuI/SfAFQFA/PTLM4rDqkxXUOQMuXVJqr5cnIDZVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEvgEKqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEvgEKqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD3EC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785223833;
	bh=aRIyA0umUJtBrse9N0dZrXndU5Q/rcK6r0duNg5D948=;
	h=To:Subject:From:Date:From;
	b=sEvgEKqM6h6szlU7l1/iHeATwBgWQRDniEnfIDtCuv0f+NLXllPhRfyJzxjYgKXUZ
	 4j4cjlVEA0dkbg2DopSaDqPC6ZALjqb0ass9CUZWOTCWJY9bgBoJHbwQm1vTsufL1p
	 Tfncbcf6h4KBCxfovwiAEV6msR5YYjeTpff6c/08hA3mQPAwceB2nSKRAdi8vuoQmv
	 rmIogVE8Cu2WYc8XalhHKFlKB8340MrlTvU+I9rp+dS1o7V1kRkaSmXQVGx7agKt2G
	 KCE3yrfc9SMakMg3gdkFiCTPTR/Wk5q2cU1CiESBFHOhr8etHYBcI2bpN1IEFcTXNa
	 D5l00c6T+qG0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58C9C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522383372.14070.512827854162890797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b568a5efa84836aa8f65b75d64810f101794c6a5eae96ceacfde3a2859bac2
Date: Tue, 28 Jul 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785223833
