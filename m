Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28C52D97BB
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772240694; cv=none; b=hdu4cqAJg6HnASy436yfJ1z6/nOUjfSAjCKzBM5DXHMISmGehBgtRmYt0R0TR5/Lj1ddQRTqaBVRs1vb67Tn87wrkEsPInk/fcj5SH+QcM2+M9HZlFdqLp8DGnvGaEZ0zxZNguEqq3hV2PnQtteY3stfya3b5Es+ZZhbSWoCO3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772240694; c=relaxed/simple;
	bh=CA2JRYIXV+ncsiRkKRvC3WTiSDZ+2Aec6ynN7tRMbMU=;
	h=To:Subject:From:Message-Id:Date; b=DaKTKXOBbHtXmrTU1n0Pu68zN7F8YYyOAj/hiv/4C3Qqr9AA8YXDLjpRTXcyp6VuuhjI2+raHBIN64DJPHcQnLr3zSknaRIHk3GWpUQEVT3SDKhA3403r7GFu0dij24yph+omMBJCPJYgZKy+tQdqY/OgxkQk9ZRQEqRlbw80zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B24g+lY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B24g+lY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B1FC116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772240693;
	bh=CA2JRYIXV+ncsiRkKRvC3WTiSDZ+2Aec6ynN7tRMbMU=;
	h=To:Subject:From:Date:From;
	b=B24g+lY63YTwgTz0m/1Z/tF4U/PKAP3waCJVBXKEmf+VCatIK1QOg9VB/DZWvQcyR
	 Vkg9u5DFQsHPPVXSzIKfZvglEFTBiqmLkLtQq9HU3Yp0cpVY9aquHqmNJmn0SLfdZD
	 WjYeIUovdSHjNdKuG8542c2uRwFUCIWexOryUy4lCnNUaeTOyuvSPt7rS0qFzbawV5
	 h141iJ6cT+aNca1+ex5NcwpqoM19ZF0X/imeTkxKwOKmFC+fByBQ0YN7GkEUJPcjxW
	 Oh7aKUeiDvO815XBzGhy9WdvNm0z/VjO5hga0i43FY7GdnYgfkLNNQz8gZFgdtSoUc
	 Z493SWyCNua/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915EC1048924
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224069358.8377.1844687266064713200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c68e9f3ae37093e318716fb3af7429864080cc2ec5787bc6ec3ed130e9e529b
Date: Sat, 28 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772240693
