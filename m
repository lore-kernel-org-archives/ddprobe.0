Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE013C17
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706413697; cv=none; b=ttZS7WttaUKpNDR2KhHu7OWsRHTELKFo5BaTVP84/kAFGIV8JiCFZ9EbKnqYxWnZW9t1xOevvjBgL217dd2O+ZbCGtwOiyg94p6RUSI0yFbKI4u8o0q9FgK7I5W7vZQBQyEChnbNr9TJIA1OM+8KbT0UBtNFc7eS/N0zOTVIlPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706413697; c=relaxed/simple;
	bh=rtvNQJTQOMnSbdzfuZTuCMMl5xCOpeOiey+vsyqjzIE=;
	h=To:Subject:From:Message-Id:Date; b=hb9gPI5uOKoUPh/B0R2nDt7cLdmTZHFSZWtdcukZwuVL65K+TQ9UHxse391CN4X/6hvZ2Le3Uh8uhuNNQ/+zSdy0BZbX8aX3mQFpVCqdXbPmDL47XCRBBxceaSzrcDpZfyMlGhM6sBcgExwtltWohcjHbET/Go341A+850XpW5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pY25x87f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pY25x87f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B969C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706413696;
	bh=rtvNQJTQOMnSbdzfuZTuCMMl5xCOpeOiey+vsyqjzIE=;
	h=To:Subject:From:Date:From;
	b=pY25x87f5frX1O4axYUs935tAh/PvuLOrWKxJ0GfDJxS5E0QRYiGDWMuU1Q8rc/3e
	 0gN31wDWHJOIc3vQ3Lyp4t42i6vMC+0j/F2eqsWzJPbfH+vVMud6/fblPERu1BzdaG
	 9pwzkV8CUDirocqg3jgdzuMSE9yCirw/AjMxRh1LKftlrFg/c+L+PC7hlo1vzN8H97
	 v6DJ/37eIvRtR/Tn22VhUV1Xg1WE6zrcMy0ihZ0sm6Rrw/9a2wFjr8xT4vs8bcnKFZ
	 KolqhStHkQ5AmPvMCyIbNEg7Cxb1bM5OhajJEBbSCOpW6l0u3uULDWjAbtxLL5Egwd
	 gFYaY0DXJxosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2E3C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170641369636.4207.9657695053013667459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d137e35f7250b42bab475b3d317102c68c742b3bf59610ecee2191a99464a2c
Date: Sun, 28 Jan 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706413696
