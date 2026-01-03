Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E29523504B
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767404634; cv=none; b=PASM/F9YfD9D1rIRK/OPd6wqv5d7ibDhgxhx2t93mTVoaj13+k6tgXgiyuYiCZXzW/HGv2Zd/k7ysvrE6b8yffFG9LLsZjFe2hhpPwWiwuIgY8vTSpXGfiX9+vnJxij4u2Vtw96XU6wHFbqk9xVqJ8GMTmfvcf0iiq7CbrHGJUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767404634; c=relaxed/simple;
	bh=f3dor0SuebbDmMMFGA9zbups0EA18hLrbyqFCLwMmHo=;
	h=To:Subject:From:Message-Id:Date; b=IXhYPQf9cj7yQUebAhfCmg2SSd4NmXezdJ2K07510qvMqcFt4vN9W+71f5Z8YNgogKjR54u/J7CDcBXn0JbHjkvThykLmK9/4dFmtg4l+dhvg09hV9ou9rSlQWQiPM7Mj93MK3K05CfCYRIyhpKBQCKblZpZiFoQ0cpGFNwIyls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHvZVmHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHvZVmHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E92C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767404633;
	bh=f3dor0SuebbDmMMFGA9zbups0EA18hLrbyqFCLwMmHo=;
	h=To:Subject:From:Date:From;
	b=lHvZVmHXuKth3mPH9hb+6NXj2UmI0I9gUIPC3M77NrHBYSz/IdFeQGRVJ4RWU/hZo
	 cZ7cJTu2GY6/dU7kgfQ5eKp8kJ3XqPuQqT9iv6EXiScNFNTdKp6/o+VwJtaAj6jNt7
	 wCk5vW7hOm2I8rDjfNV/lIEXwhqB8rQq2oGFeOK/v9R3c2opTmKh+02ARr0rmJbdth
	 731F/aKtEpcsghZ6PEQ4pylf6s4r1c0JCXgA64fXOIkEEJnwrlcAwl/y3d3Jomuikv
	 26svG7nE3BXnb7hb8oiFDmKDXRorPybxwHlN0ZhCDakygrhqNZN0LLrLN7iWv61cH4
	 tlTMfIotHsnug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D0EFC6165
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740463358.13241.11325083834407983629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0807e5ad3ce7ea64c627ff581b6c4132a957649558d114ba7650f42242afa7e5
Date: Sat, 03 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767404633
