Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71A4377AAC
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785001235; cv=none; b=Xyys7aeSaflDpk83IEN82Ghq9U7qKvRJHfQh7ERj5dqqv9qOtru5+SkDCorU8UZ/cXqwwo7JMEzRieO11ZDcnIN2tnfE1vMFaZ8Tke/oiEnZdgmTcMwvKk2gjuueRFgrFDvgAxG7dxy+o/p0zUXZ2LiXgb8AKvhXX8VOntpZWCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785001235; c=relaxed/simple;
	bh=Q38xiLnjqwFVrVBO1bVwdPUC3zuOp+3qYrQobUPU7HQ=;
	h=To:Subject:From:Message-Id:Date; b=oeog1UKz7ILNTYpFx5BI+cfLrGXTLnES0cAbstMJPnzXCn5aWXiDFTLnGV0gsTeYwhPFy7/APqmiy2U5erReEzpAr4ecQwc9nMTiozRIdhGWkdMwj7Erm0pEFFLfy4/LEL24VIscjRwSiMW3oafZUQOER4SsrN3DyGjPkLohDmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyLkSaG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyLkSaG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1303C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785001233;
	bh=Q38xiLnjqwFVrVBO1bVwdPUC3zuOp+3qYrQobUPU7HQ=;
	h=To:Subject:From:Date:From;
	b=cyLkSaG9276KR67yPoKvua3yZw5gHMJp2lg2g2bwcJjCEM885r9fFJy1d72wXlUoC
	 VHV5EOQG8GsPdpLzEtofygjA7s/8bCGJSHZGagM0xr/+LzwJwonNXRYDcMRkV0nrAY
	 OP+YjDLE6uzfTwcdQ5kMKEI+fvQqQnPhbsgChydeK6JH2JUvEC+txVCO4g///6jkpK
	 hL3ozc7nWuMuh8jjiEFL1baakIWOONbGpwsebHhZg6IgeeXzbkPKlpdKJbmCauutQZ
	 otm3pBx0QynW6OAFNdDo3Zkp5sPRGN6U51Ysl0dX35PxZdzMDRUrbJujERf51yIEuF
	 qej22L68feG9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE362C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500123368.24728.13918581655315231009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f785116a294a36b8863ac3251694e7e7d78b46e6f6a70f43efe8f8ba6fc8e32c
Date: Sat, 25 Jul 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785001233
