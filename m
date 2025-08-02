Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D942F5B
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754149194; cv=none; b=tR3UqkQeSNGdOtfql1vcnKwTUqfYyfJ0pfzXPXoZBHp6KCxlngOSNYUsBYwz9M0zBAz96QydbKuagxSiuN7uLCKgrY/yGJymNzwFnVEJdghPTY8elEfbSBpSfSeeZXzuTbgEBoj7YjxABdfx0hFXjJzR5PqwM0j+KCGsv6xAcpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754149194; c=relaxed/simple;
	bh=0xvTx66GlJ9a7+upd8MLrI2WNhKE1tnOigdGsMZu7WM=;
	h=To:Subject:From:Message-Id:Date; b=u5H0QC2uqImYhoEnmSjGbmzZqyvoyDrpjKBcmxiVQG0Kx1WxYSmzQ56qfSexNsdkV56VuXUOchO9MYgMP5drxO1Wu4AoD0Fm5eE3n3euZ2Ko49Pw1ejGl4d2KqGbR/JYnJPPdh1JVLSb/Cy0q6SRbiKI2Vl2zGUPWU2jwklz5eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgwfSmHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgwfSmHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A826AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754149193;
	bh=0xvTx66GlJ9a7+upd8MLrI2WNhKE1tnOigdGsMZu7WM=;
	h=To:Subject:From:Date:From;
	b=sgwfSmHyww7GIEwxcgk1CHcDfiXg6X7LkbMkLwrQ4zsfkWZsDJIn7WhbqH/UAmSVv
	 5CszsaA8G09gT2lY/UCUMnecl6hrXlOVY76CG+jT/RU/bkw9rQqvOhj1MOM8uyxZkk
	 pcKPKBReIiCBKf6A9kXUFjJP9vvBlu1XXyqfi1hqYRZwKsy6DJ+GptmkY8byT8VVKc
	 RpCZTTQGeg65b1Kos8NhmPoE++lUpvjf/64gvXVno+oZuOj+xthREzeu1vdXQPXXkD
	 ckf6wQajIAufqWUpwOVReq7zpSsspR/hqhk0fDJ8U/8vSbxSQZh80bMrcGiIfQ05A7
	 g2zNWd/6n/SAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB6C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414919357.2250.10243897265088565743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a226791b56f7fd36acc98b2906381821c54765fdb87b4ad7615d94b6b6357395
Date: Sat, 02 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754149193
