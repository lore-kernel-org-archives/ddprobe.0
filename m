Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4C11E9B22
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762307994; cv=none; b=c8BXTz/BxzeAj+sX12CwhXFXGnsKFN521majmDuD525ZeZwg6gKVJcOk0Sm1/KQdclBy8ctdb66wHFOKWz42TqN2Aw/jb4gx/fXAI/zuoWf6yS2oXq89PSCSJSLGHHXB7IiM8jSFy4+Xf6t2vxnitL5Lpxz4bBJEIr3wd9K+QEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762307994; c=relaxed/simple;
	bh=otLDdZeTU2A5bX0QDd9hFE811RV1PI8tORpeb9d+czk=;
	h=To:Subject:From:Message-Id:Date; b=TNTwZvO3Rr19W9EaVudWQcAzKmswjFczp7QJd39gcYQI5Rml7TchPkjH3RadOkdLHmoH5rXUErZ5ayuKKTS916VkKrltn/6RksRvYBFrj7TxB4zDHlZB7AyVkPrRfaUF2pmcSyy+O4fRgsajDU0mqbV8K/OU3CBw5oaknAQE1Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ix2zMIOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ix2zMIOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F16EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762307993;
	bh=otLDdZeTU2A5bX0QDd9hFE811RV1PI8tORpeb9d+czk=;
	h=To:Subject:From:Date:From;
	b=Ix2zMIOSqHPoSTFh+jQ/J2j2U6BulNSy0UsFLgkjUUwUHTqkeaojmRXopIQDxXwQo
	 GQUuqTvk5A5kqTOcAEFSO40xG/z5uFC5zY0d+vpa5WHAVmfDw9CZbLhUmY2n7nwDp3
	 Jic4VaR8Lc5XDtVwe24K4MdbSSh3sacAo6tHa77utwkKeuy+KBFXWtmwkCIazvUV2r
	 rmIr8OSiJ0CkRBc0zzu0Uide1WYZsnZ1xJw2u1IJ7OZfpEOVe3jW0kZ09t0niSj+kC
	 ZBAL3JMDlX48FL82gE5xd3zLK1gQCFNmZ6Fs+oZuJgSEvX+tKMjdheKdlj9dAKXp2N
	 N7vxFWruZiGJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57FCCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230799357.5876.1338805793005130696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aea0b66c3cf9fc0a1c2eb6e9c97725115d5a5b1102b2301901fa6410f60ba76
Date: Wed, 05 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762307993
