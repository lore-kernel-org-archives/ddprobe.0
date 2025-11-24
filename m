Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E51231829
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764004914; cv=none; b=iFmLLHCdN33oDw82CRcym2OiHPD+f56MFCy8MZl9k7lPxPRAkWORzBO4ku315KdSAldjHrw53eAa/38vP2s0QuXMvqU+Za9RchUwq+nd+Pqlk4YBcnOTLZhVO664MEhnEtSz6P/TUVfIKLi/nNES55+3FSXSWxNn5EPjerAnRuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764004914; c=relaxed/simple;
	bh=gOjrddRhbCxj8ChnPLRluQQEwgtFhmKfTsJS4x2W+W4=;
	h=To:Subject:From:Message-Id:Date; b=N+BYoG86ovokzQpUHU7JqNTKxcRk9geWQZiX8MHYSZOPLt7b1tEcICmuRaM6FChj3MHzyhJQIE4PvNdRsyF58FD01bCccoAouq+jAGgIrSRRzTdNV/oslX+6DNBLBGX9Vls1ZTU/G2GxKLxZU0iozWE13FZTDsTW2iBe7Xf0X4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSvHZONR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSvHZONR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F4BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764004913;
	bh=gOjrddRhbCxj8ChnPLRluQQEwgtFhmKfTsJS4x2W+W4=;
	h=To:Subject:From:Date:From;
	b=gSvHZONRdsgsWr98KQW+BnzFh2Eq5Ir+Ym9bLMWwojlS2FJ2ELx7hgBBkMLFPX63t
	 J3q9rPjw88Wz3/qESR1jIYsQK7AXvx5olxLPWHw7dEoWgWrGWxc2m/NAjdOst/KY8D
	 jPfW8nvIe2L1UmIpQ/6T+Z0Nei2bSRhJWZamMRgQECuwCei7XGOVk/GebzpWefSdvM
	 +LMs88j2DIv8QDZEnTYCKxV7xqMpqvWvnQr/0AAb+jjxp+sC9XgDxMHBVa7M6QcmDP
	 rLmI9m0jgyU+0IGjhQxJeRrndmyk3jbLnm/08cWPfh6OQO5F+3qkFHuzBbdXrGyUHO
	 0WWvfwy6nEi0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E7CFD318
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400491358.29426.10377219543235807366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb358723e66e878016d036989d079e87465d6db1c4e62db8ffa74b853f83e7d
Date: Mon, 24 Nov 2025 17:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764004913
