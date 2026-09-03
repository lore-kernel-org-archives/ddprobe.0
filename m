Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE0533263B
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788459634; cv=none; b=EtiSUUtWtT2sliEeeH4gL4g1w64PGT5FzcBjxUPxskigHw1jivtE1FJWj6MUMMFHU/0DhHhYPPuYvXClFGnL0aJN2ZE3xaBPnfJluk7jVeMCfwtEDLEAFDhd5+9ZZjtEqwwHRmtgOmxHLKTwISMaLnYv/FcSUWQcTEkDzK/G17I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788459634; c=relaxed/simple;
	bh=SXcYPm1tv8tBu5AUzS4OZkDnXEK/EMWKMWpE9pPTEks=;
	h=To:Subject:From:Message-Id:Date; b=g/W9xwx5hEIOWXkVqDsL4S8kobq6Fdr66pWP7wk80P0Va8Xf3+Qe+KWQwiBHXf6FAx3V9vfkYQEvz7kf0GERu/Jfvu4xwZbg3L7gax+4Ct/UhwVY8iHP9dA5GcdSfiWH4Qf8kgh+/lr6FohjEA+SjX5OxP3/AYYxdzTqL9NvAS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9+vlmNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9+vlmNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11E0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788459633;
	bh=SXcYPm1tv8tBu5AUzS4OZkDnXEK/EMWKMWpE9pPTEks=;
	h=To:Subject:From:Date:From;
	b=p9+vlmNh+sxKQJ015qyOkOvSSqGGMHhXGxrhEF/vRluL/wWR0Zv1YaDI2PfFrcI//
	 TJIXrATZOmFPLEMg18Pubc7AoUI++EwsLU1errJvjohdDMWsnTgOBgNohuRwbiXUjP
	 1U8SJXvR+o6ekS9YGBf/S6h+lrN7/qJUcMZsewYANAEYnPbHs2AK/VtZ8k6O3p+7lT
	 kUpZ7ifoIFCm+WeuhhG2cjgvtv+ezBg6tvrmhLvUdAROHBEOcyJxZTXnZl6LbJPvf5
	 awKTbfYbhQV002uyFsUNkQ5KDn538LJ2rOOUME/0/CiCoXhbd3OUuzbAyufmZb8ZoF
	 ZOyO4E1camYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA731C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845963368.26678.17777947978898185420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a6a663c655716cd0fff8711b4b5c4ed91ad726dca2f83b5f29a1ea4465dc03
Date: Thu, 03 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788459633
