Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA944E1C84
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792409434; cv=none; b=FbmyvR7uOOvh+qb4A5WcKq62SFyQ1n9LL3cHTNVvDGW/X3zwPEDrRWiddLYAB1Vto2XNzYxtdDtgNxJPwpNy5SnpiPnv7Vr1eUwYE5h68t89jyBroGuQscEqZzewVvcdGaRgfXning61gUeu8G/BaHx2setX9pDvYkOi9lRdmjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792409434; c=relaxed/simple;
	bh=6pFdhF0AzAv0c3ET5Yz/DtSeX64WZh3XP66Z3nzPBRo=;
	h=To:Subject:From:Message-Id:Date; b=JWheoqFBFVFA5KSu1ClqM2blg013AU6++SyCIn9j53Wa+w/Ycbg3cuOCQ8bN0rAWvTTwWPmeRLZpOGt6a0mjvW4LCDOuqC3S32UqANj0SPUvw1mjbKUxJNqwMMxGbbqz+nzAMxnADFxQ6LDUbG6VTqXAqJNdEEd50TaHylq9Qe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3CD2xAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3CD2xAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C36C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792409433;
	bh=6pFdhF0AzAv0c3ET5Yz/DtSeX64WZh3XP66Z3nzPBRo=;
	h=To:Subject:From:Date:From;
	b=W3CD2xAob1G5k7yX6ZYTOR/7BxStDwSfxP6PqPGMhVPukRt9obvpe7rI8+cjaAR9Z
	 cwkMc3sofIAB5B+4iKhQtIBtPdy3jmTXBNpQQZf+sW+4VQ8nfR+sjlNOz8lUcx2TVk
	 HaqwM6JRnkH9AqwprpRB2EyIwrIvRclPJfk0KRyU9Gz+K3dDqrXW4NA+HzSt5sa93W
	 fJ9yL8Hrm3GAguEptdFfp/+vayRCNVPiQye3l/42lkrQclltMb2Nh6fGrr6UU4B8gU
	 xwW3zsUr3jP8tDTXPEYvDpoUs0MX9gs05T3EwGdPdY1GCdHM5wrpZw0AC1oZAzx3TK
	 9A/wFWH57IOiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81BDCCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240943374.8365.18252275292207128717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7176e91f38a23ffedc07ebcba1bd8a3c1044ec1a37d2f870fe382a93de7a7e81
Date: Mon, 19 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792409433
